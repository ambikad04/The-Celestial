<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Contact Us</title>
        <link rel="stylesheet" href="contactus.css" />
    </head>
    <body>
        
        <div class="contactUs">
            <form name="contactus" method="POST" action="http://localhost:8080/TIITAWEB/contactus">
            <div class="title">
                <h2>Get in Touch</h2>
            </div>
             <div class="box">
                <!---- Form -->
                 <div class="contact form">
                    <h3>Send a Message</h3>
                     <form>
                        <div class="formBox">
                            <div class="row50">
                                <div class="inputBox">
                                    <span>First Name</span>
                                    <input type="text" name="tbFIRST_NAME" placeholder="First Name">
                                </div>
                                <div class="inputBox">
                                    <span>Last Name</span>
                                    <input type="text" name="tbLAST_NAME" placeholder="Last Name">
                                </div>
                            </div>

                            <div class="row50">
                                <div class="inputBox">
                                    <span>Email </span>
                                    <input type="text" name="tbEMAIL" placeholder="@email.com">
                                </div>
                                <div class="inputBox">
                                    <span>Mobile No.</span>
                                    <input type="text" name="tbMOBILE" placeholder="+91">
                                </div>
                            </div>

                            <div class="row100">
                                <div class="inputBox">
                                    <span>Message</span>
                                    <textarea name="tbMESSAGE" placeholder="Write your message or Complain here... "></textarea>
                                </div>
                            </div>

                            <div class="row100">
                                <div class="inputBox">
                                    <input type="submit" value="Send">
                                </div>
                            </div>    
                        </div>
                    </form>
                </div>
               
                <!---- info box -->
                <div class="contact info">
                    <h3>Contact Info</h3>
                    <div class="infoBox">
                        <div>
                            <span><ion-icon name="location"></ion-icon></span>
                            <p>Sector V, Kolkata <br>INDIA</p>
                        </div>
                        <div>
                            <span><ion-icon name="mail-unread"></ion-icon></span>
                            <a href="mailto:theCelestial2nt3@gmail.com">theCelestial2nt3@gmail.com</a>
                        </div>
                        <div>
                            <span><ion-icon name="call"></ion-icon></span>
                            <a href="tel:+916290148329">+91 6290 148 329</a>
                        </div>
                        <!---- Social Media Links -->
                        <ul class="sci">
                            <li><a href="#"><ion-icon name="logo-facebook"></ion-icon></a></li>
                            <li><a href="#"><ion-icon name="logo-twitter"></ion-icon></a></li>
                            <li><a href="#"><ion-icon name="logo-instagram"></ion-icon></a></li>
                        </ul>
                    </div>
                </div>

                <!---- Map -->
                <div class="contact map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58935.04353703567!2d88.36082642080169!3d22.600030518769557!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a0275b086df5d53%3A0x8d5e0a9a01e6ed75!2sTechno%20India%20Group!5e0!3m2!1sen!2sin!4v1700478701433!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </div>

        <script type="module" src="https://unpkg.com/ionicons@5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons.js"></script>
    </body>
</html
