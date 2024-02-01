package servepack;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import oracle.jdbc.OracleConnection;
import oracle.jdbc.OraclePreparedStatement;
import oracle.jdbc.OracleResultSet;


public class updatePass extends HttpServlet {

    OracleConnection oconn;
    OraclePreparedStatement ost;
    OracleResultSet ors = null;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet updatePass</title>");
            out.println("</head>");
            out.println("<body>");

            String pass1 = request.getParameter("nPass");
            String pass2 = request.getParameter("rePass");
            HttpSession sess = request.getSession(false);
            if (sess != null && sess.getAttribute("tempname") != null ) {
                // User is logged in
                String username = (String) sess.getAttribute("tempname");
                //out.println(username);}

                if (pass1 != null && pass2 != null && pass1.equals(pass2)) {
                    try {
                        DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                        oconn = (OracleConnection) DriverManager.getConnection("jdbc:oracle:thin:@AMBIKA:1521:orcl","TIITA","DATABASE");

                        String q = "UPDATE user_details SET password = ? WHERE username = ?";

                        ost = (OraclePreparedStatement) oconn.prepareStatement(q);

                        ost.setString(1, pass1);
                        ost.setString(2, username);

                        ost.executeUpdate();
                        
                        sess.invalidate();
                        response.sendRedirect("http://localhost:8080/TIITAWEB/StatPages/loginUser.jsp");

                    } catch (Exception e) {
                        out.println(e);
                    }
                } else {
                    out.println("alert('Please type same value for both the input fields');");
                }
            } else {
                response.sendRedirect("http://localhost:8080/TIITAWEB/Login/forgetPass.jsp");
            }
            out.println("</body>");
            out.println("</html>");

        }
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
