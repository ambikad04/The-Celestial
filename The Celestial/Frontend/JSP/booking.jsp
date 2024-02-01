<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Responsive Registration Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="booking.css" />
</head>
<body>
<div class="container">
    <h1 class="form-title">Booking Now</h1>
    <form name="booking" method="POST" action="http://localhost:8080/TIITAWEB/booking">
        <div class="main-user-info">
            <div class="user-input-box">
                <label for="first_name">First Name</label>
                <input type="text" id="first_name" name="first_name" placeholder="Enter First Name">
            </div>
            <div class="user-input-box">
                <label for="last_name">Last Name</label>
                <input type="text" id="last_name" name="last_name" placeholder="Enter Last Name">
            </div>
            <div class="user-input-box">
                <label for="phone_number">Phone Number</label>
                <input type="text" id="phone_number" name="phone_number" placeholder="Enter Phone Number">
            </div>
            <div class="user-input-box">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter Email">
            </div>
            <div class="user-input-box">
                <label for="arrival_date">Arrival Date</label>
                <input type="date" id="arrival_date" name="arrival_date" placeholder="Enter Date">
            </div>
            <div class="user-input-box">
                <label for="departure_date">Departure Date</label>
                <input type="date" id="departure_date" name="departure_date" placeholder="Enter Date">
            </div>
            <div class="user-input-box">
                <label for="no_of_guests">No. Of Guests</label>
                <input type="number" id="no_of_guests" name="no_of_guests" placeholder="Enter Number">
            </div>
            <div class="user-input-box">
                <label for="room_type">Room Types:</label>
                <select id="room_type" name="room_type">
                    <option value="">Enter Types</option>
                    <option value="Superior">Superior</option>
                    <option value="Deluxe">Deluxe</option>
                    <option value="Standard">Standard</option>
                    <option value="Suite">Suite</option>
                </select>
            </div>
            <div class="form-submit-btn">
                <input type="submit" value="SUBMIT">
            </div>
        </div>
    </form>
</div>
</body>
</html>
