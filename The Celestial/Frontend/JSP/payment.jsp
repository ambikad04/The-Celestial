<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- custom css file link  -->
    <link rel="stylesheet" href="payment.css">

    <title>Your JSP Page Title</title>
</head>
<body>

<div class="container">

 
    <form name="payment" method="POST" action="http://localhost:8080/TIITAWEB/paymentsdt">

        <div class="row">

            <div class="col">

                <h3 class="title">billing address</h3>

                <div class="inputBox">
                    <span>Full name :</span>
                    <input type="text" placeholder="Enter Name">
                </div>
                <div class="inputBox">
                    <span>Email :</span>
                    <input type="email" placeholder="Enter email">
                </div>
                <div class="inputBox">
                    <span>Address :</span>
                    <input type="text" placeholder="Enter Address">
                </div>
                <div class="inputBox">
                    <span>City :</span>
                    <input type="text" placeholder="Enter City">
                </div>

                <div class="flex">
                    <div class="inputBox">
                        <span>State :</span>
                        <input type="text" placeholder="Enter State">
                    </div>
                    <div class="inputBox">
                        <span>Zip Code :</span>
                        <input type="text" placeholder="Zip Code">
                    </div>
                </div>

            </div>

            <div class="col">

                <h3 class="title">payment</h3>

                <div class="inputBox">
                    <span>Cards Accepted :</span>
                    <img src="card_img.png" alt="">
                </div>
                <div class="inputBox">
                    <span>Name on Card :</span>
                    <input type="text" name="tbNAME_ON_CARD" placeholder="Enter card name">
                </div>
                <div class="inputBox">
                    <span>Card Number :</span>
                    <input type="text" name="tbCARD_NUMBER" placeholder="Enter credit card number">
                </div>
                <div class="inputBox">
                    <span>Exp Month :</span>
                    <input type="text" name="tbEXP_MONTH" placeholder="Enter Month">
                </div>

                <div class="flex">
                    <div class="inputBox">
                        <span>Exp year :</span>
                        <input type="text"  name="tbEXP_YEAR" placeholder="Enter Year">
                    </div>
                    <div class="inputBox">
                        <span>CVV :</span>
                        <input type="text" name="tbCVV" placeholder="cvv">
                    </div>
                </div>
    
        </div>

        <input type="submit" value="proceed to checkout" class="submit-btn">

    </form>

</div>    
    
</body>
</html>
