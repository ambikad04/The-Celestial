<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible"
		content="IE=edge">
	<meta name="viewport"
		content="width=device-width, 
				initial-scale=1.0">
	<title>THE CELESTIAL</title>
	<link rel="stylesheet"
		href="style.css">
	<link rel="stylesheet"
		href="style_1.css">
</head>

<body>

	<!-- for header part -->
	<header>

		<div class="logosec">
			<div class="logo">ADMIN DASHBOARD</div>
			<img src="logo.png"
				class="icn menuicn"
				id="menuicn"
				alt="menu-icon">
		</div>

		<div class="searchbar">
			<input type="text"
				placeholder="Search">
			<div class="searchbtn">
			<img src= "https://media.geeksforgeeks.org/wp-content/uploads/20221210180758/Untitled-design-(28).png"
					class="icn srchicn"
					alt="search-icon">
			</div>
		</div>
            <div class="message">
			<div class="circle"></div>
			<img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210183322/8.png" class="icn">

		<div class="message">
			<div class="circle"></div>
			
		<div class="name" alt="AMBIKA DAS">
			<div class="dp">
			<img src="A.jpg"
			class="dpicn"
			alt="dp">
			</div>
		</div>

	</header>

	<div class="main-container">
		<div class="navcontainer">
			<nav class="nav">
                                <div class="nav-upper-options">
					<div class="nav-option option1">
                                             <a href="http://localhost:8080/TIITAWEB/Admin/adminlogin.jsp">
						<img src="man.png"
							class="nav-img"
							alt="USERS">
						<h3> ADMIN </h3>
                                             </a>
					</div>
				<div class="nav-upper-options">
					<div class="nav-option option1">
                                             <a href="http://localhost:8080/TIITAWEB/Admin/Signup.jsp">
						<img src="man.png"
							class="nav-img"
							alt="USERS">
						<h3> USERS</h3>
                                             </a>
					</div>

					<div class="option2 nav-option">
                                            <a href="http://localhost:8080/TIITAWEB/Admin/booking.jsp">
						<img src="notebook-alt.png"
							class="nav-img"
							alt="articles">
						<h3> BOOKINGS</h3>
                                            </a>
					</div>

					<div class="nav-option option3">
                                             <a href="http://localhost:8080/TIITAWEB/Admin/payment.jsp">
						<img src="money.png"
							class="nav-img"
							alt="report">                                     
						<h3> PAYMENTS</h3>
                                             </a>
					</div>

					<div class="nav-option option4">
                                            <a href="http://localhost:8080/TIITAWEB/Admin/booking.jsp">
     						<img src="lease.png"
							class="nav-img"
							alt="institution">
						<h3> ROOMS</h3>
                                            </a>
					</div>
                                    
                                    
                                    <div class="nav-option option5">
                                            <a href="http://localhost:8080/TIITAWEB/Admin/custmsg.jsp">
     						<img src="comments.png"
							class="nav-img"
							alt="institution">
						<h3> CUSTOMER MESSAGE</h3>
                                            </a>
					</div>

					
					

					
				</div>
			</nav>
		</div>
		<div class="main">

			<div class="searchbar2">
				<input type="text"
					name=""
					id=""
					placeholder="Search">
				<div class="searchbtn">
				<img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210180758/Untitled-design-(28).png"
						class="icn srchicn"
						alt="search-button">
				</div>
			</div>

			<div class="box-container">

				<div class="box box1">
					<div class="text">
						<h2 class="topic-heading">2</h2>
						<h2 class="topic">Payments</h2>
                                                <a href="booking.jsp"></a>
					</div>

					<img src= "money.png"
						alt="Views">
				</div>

				<div class="box box2">
					<div class="text">
						<h2 class="topic-heading">4</h2>
						<h2 class="topic">Bookings</h2>
                                                <a href=""></a>
					</div>

					<img src="notebook-alt.png"
						alt="likes">
				</div>

				

			

					</div>
				</div>
			</div>
		</div>
	

	<script src="script.js"></script>
</body>
</html>
