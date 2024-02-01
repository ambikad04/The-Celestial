package servepack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class booking extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String firstName = request.getParameter("first_name");
            String lastName = request.getParameter("last_name");
            String phoneNumber = request.getParameter("phone_number");
            String email = request.getParameter("email");
            String arrivalDateStr = request.getParameter("arrival_date");
            String departureDateStr = request.getParameter("departure_date");
            int numOfGuests = Integer.parseInt(request.getParameter("no_of_guests"));
            String roomType = request.getParameter("room_type");

            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");      
                try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@AMBIKA:1521:orcl","TIITA","DATABASE"); 
                        PreparedStatement ps = conn.prepareStatement("INSERT INTO Booking (first_name, last_name, phone_number, email, arrival_date, depature_date, num_of_guest, room_type) VALUES (?, ?, ?, ?, ?, ?, ?, ?)")) {

                    ps.setString(1, firstName);
                    ps.setString(2, lastName);
                    ps.setString(3, phoneNumber);
                    ps.setString(4, email);
                    
                    java.sql.Date arrivalDate = convertStringToSqlDate(arrivalDateStr);
                    java.sql.Date departureDate = convertStringToSqlDate(departureDateStr);
                    
                    ps.setDate(5, arrivalDate);
                    ps.setDate(6, departureDate);
                    ps.setInt(7, numOfGuests);
                    ps.setString(8, roomType);

                    int rowsInserted = ps.executeUpdate();

                    if (rowsInserted > 0) {
                        response.sendRedirect("http://localhost:8080/TIITAWEB/Booking/bookdonenotify.html");
                    } else {
                        out.println("<h2 style='color:brown'>Record could not be added...</h2>");
                    }

                }
            } catch (ClassNotFoundException | SQLException | NumberFormatException ex) {
                out.println("<h2 style='color:red'>Error occurred: " + ex.getMessage() + "</h2>");
            }
        }
    }

    private java.sql.Date convertStringToSqlDate(String dateString) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        try {
            java.util.Date parsed = format.parse(dateString);
            return new java.sql.Date(parsed.getTime());
        } catch (ParseException e) {
            // Handle the parsing exception according to your requirements
            return null; // Or throw an exception to indicate a problem
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Servlet for Booking Form";
    }
}
