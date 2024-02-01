package servepack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import oracle.jdbc.OracleConnection;
import oracle.jdbc.OraclePreparedStatement;
import oracle.jdbc.OracleResultSet;

/**
 *
 * @author kargh
 */
@WebServlet(name = "VerifyEmail", urlPatterns = {"/VerifyEmail"})
public class VerifyEmail extends HttpServlet {

    String vto, vfrom, vsubject, vbody;

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet VerifyEmail</title>");
            out.println("</head>");
            out.println("<body>");

            // Getting all the values from the login jsp page
            String email = request.getParameter("email");

            try {
                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                try (OracleConnection oconn = (OracleConnection) DriverManager.getConnection("jdbc:oracle:thin:@AMBIKA:1521:orcl","TIITA","DATABASE")) {

                    String q = "SELECT * FROM user_details WHERE email = ?";

                    try (OraclePreparedStatement ost = (OraclePreparedStatement) oconn.prepareStatement(q)) {
                        ost.setString(1, email);

                        try (OracleResultSet ors = (OracleResultSet) ost.executeQuery()) {
                            if (ors.next()) {
                                // Set the "USERNAME" as a session attribute

                                String vname = ors.getString("username");

                                HttpSession sess = request.getSession(true);
                                sess.setAttribute("tempname", vname);

                                // Sender's email ID needs to be mentioned
                                String from = "quick.diagnosis.qd@gmail.com";
                                // Assuming you are sending email from localhost
                                String host = "smtp.gmail.com";
                                final String username = "quick.diagnosis.qd@gmail.com";
                                final String password = "mkxpbjknkcddxzty"; // Use the actual password

                                Properties props = new Properties();
                                props.put("mail.smtp.auth", "true");
                                props.put("mail.smtp.starttls.enable", "true");
                                props.put("mail.smtp.host", "smtp.gmail.com");
                                props.put("mail.smtp.port", "587");

                                Session session = Session.getInstance(props, new javax.mail.Authenticator() {
                                    protected PasswordAuthentication getPasswordAuthentication() {
                                        return new PasswordAuthentication(username, password);
                                    }
                                });

                                //otp
                                Random random = new Random();
                                int x = 0;
                                while (x < 1000) {
                                    x = random.nextInt(9999);
                                }
                                sess.setAttribute("otp", x);
                                try {
                                    //sending mail to user
                                    // Create a default MimeMessage object.
                                    Message message = new MimeMessage(session);

                                    // Set From: header field of the header.
                                    message.setFrom(new InternetAddress(from));

                                    // Set To: header field of the header.
                                    message.setRecipient(Message.RecipientType.TO, new InternetAddress(email));

                                    // Set Subject: header field
                                    message.setSubject("OPT for password reset");

                                    // Now set the actual message
                                    message.setText("Dear User, \n\n Your OTP to reset password is " + x + ".");

                                    // Send message
                                    Transport.send(message);
                                } catch (MessagingException mex) {
                                    mex.printStackTrace();
                                    out.println("<script>alert('OPT generation unsuccessful')</script>");
                                }

                                response.sendRedirect("http://localhost:8080/TIITAWEB/Login/optVerification.jsp");

                            } else {
                                out.println("<script>alert('email does not exist');</script>");
                            }
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                out.println(e);
            }

            out.println(
                    "</body>");
            out.println(
                    "</html>");
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(VerifyEmail.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(VerifyEmail.class.getName()).log(Level.SEVERE, null, ex);
        }
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
