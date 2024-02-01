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

public class paymentsdt extends HttpServlet {

    String vPAYMENT_ID, vNAME_ON_CARD, vCARD_NUMBER, vEXP_MONTH, vEXP_YEAR, vCARD_VERIFICATION_VALUE;
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
            out.println("<h1>Payment done successfully.</h1>");

            try {
                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                 oconn=(OracleConnection)
                            DriverManager.getConnection
                            ("jdbc:oracle:thin:@AMBIKA:1521:orcl","TIITA","DATABASE");

                int numericPaymentID = getNextUserID(oconn); // Get the next user ID from the sequence
                vPAYMENT_ID = String.valueOf(numericPaymentID); // Convert to String if necessary

                vNAME_ON_CARD = request.getParameter("tbNAME_ON_CARD");
                vCARD_NUMBER = request.getParameter("tbCARD_NUMBER");
                vEXP_MONTH = request.getParameter("tbEXP_MONTH");
                vEXP_YEAR = request.getParameter("tbEXP_YEAR");
                vCARD_VERIFICATION_VALUE = request.getParameter("tbCVV");

                out.println("<h2>PAYMENT_ID: " + vPAYMENT_ID + "</h2>");
                out.println("<h2>NAME_ON_CARD: " + vNAME_ON_CARD + "</h2>");
                out.println("<h2>CARD_NUMBER: " + vCARD_NUMBER + "</h2>");
                out.println("<h2>EXP_MONTH : " + vEXP_MONTH + "</h2>");
                out.println("<h2>EXP_YEAR : " + vEXP_YEAR + "</h2>");
                out.println("<h2>CVV : " + vCARD_VERIFICATION_VALUE  + "</h2>");

                ops = (OraclePreparedStatement) oconn.prepareStatement(
                        "INSERT INTO PAYMENT(PAYMENT_ID, NAME_ON_CARD, CARD_NUMBER, EXP_MONTH, EXP_YEAR, CVV ) VALUES(?,?,?,?,?,?)");

                ops.setString(1, vPAYMENT_ID);
                ops.setString(2, vNAME_ON_CARD);
                ops.setString(3, vCARD_NUMBER);
                ops.setString(4, vEXP_MONTH);
                ops.setString(5, vEXP_YEAR);
                ops.setString(6, vCARD_VERIFICATION_VALUE);
                

                int x = ops.executeUpdate();

                if (x > 0) {
                    response.sendRedirect("http://localhost:8080/TIITAWEB/Payment/paydone.html");
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
                        Logger.getLogger(paymentsdt.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(paymentsdt.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(paymentsdt.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}