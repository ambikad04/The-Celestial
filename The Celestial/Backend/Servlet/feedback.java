package servepack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import oracle.jdbc.OracleConnection;
import oracle.jdbc.OraclePreparedStatement;
import oracle.jdbc.OracleResultSet;

public class feedback extends HttpServlet {

    String vFEEDBACK_ID, vFULL_NAME, vEMAIL, vMESSAGE;
    OracleConnection oconn;
    OraclePreparedStatement ops;

    private int getNextUserID(Connection connection) throws SQLException {
        int userID = -1;
        try (OraclePreparedStatement preparedStatement = (OraclePreparedStatement) connection.prepareStatement("SELECT user_id_sequence.NEXTVAL FROM DUAL")) {
            try (OracleResultSet resultSet = (OracleResultSet) preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    userID = resultSet.getInt(1);
                }
            }
        }
        return userID;
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>THE CELESTIAL</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Message send successfully.</h1>");

            try {
                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                 oconn=(OracleConnection)
                            DriverManager.getConnection
                            ("jdbc:oracle:thin:@AMBIKA:1521:orcl","TIITA","DATABASE");

                int numericMSG_ID = getNextUserID(oconn); // Get the next user ID from the sequence
                vFEEDBACK_ID = String.valueOf(numericMSG_ID); // Convert to String if necessary

                vFULL_NAME = request.getParameter("tbFULL_NAME");
                vEMAIL = request.getParameter("tbEMAIL");
                vMESSAGE = request.getParameter("tbMESSAGE");

                out.println("<h2>FEEDBACK_ID: " + vFEEDBACK_ID + "</h2>");
                out.println("<h2>FULL_NAME: " + vFULL_NAME + "</h2>");;
                out.println("<h2>EMAIL : " + vEMAIL + "</h2>");
                out.println("<h2>MESSAGE: " + vMESSAGE + "</h2>");

                ops = (OraclePreparedStatement) oconn.prepareStatement(
                        "INSERT INTO FEEDBACKS(FEEDBACK_ID, FULL_NAME, EMAIL, MESSAGE) VALUES(?,?,?,?)");

                ops.setString(1, vFEEDBACK_ID);
                ops.setString(2, vFULL_NAME);
                ops.setString(3, vEMAIL);
                ops.setString(4, vMESSAGE);
                

                int x = ops.executeUpdate();

                if (x > 0) {
                    response.sendRedirect("http://localhost:8080/TIITAWEB/Feedback/feednotify.html");
                } else {
                    out.println("<h2 style='color:brown'> Sorry! you have to reenter your details");
                }

            } catch (SQLException ex) {
                out.println("<h2 style='color:red'> Error is : " + ex.toString() + "</h2>");
            } finally {
                if (ops != null) {
                    try {
                        ops.close();
                    } catch (SQLException ex) {
                        Logger.getLogger(feedback.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                if (oconn != null) {
                    oconn.close();
                }
            }

            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(feedback.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(feedback.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}