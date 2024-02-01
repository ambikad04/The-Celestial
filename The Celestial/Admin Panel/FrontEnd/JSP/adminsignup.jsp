<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>THE CELESTIAL</title>
    <link rel="stylesheet" href="longin_signup.css">
    <style>
        /* Add your additional styles here if needed */
    </style>
</head>
<body>
    <section class="container forms">
        <div class="form login">
            <header>Admin Login</header>
            <form name="SIGNUP" method="POST" action="http://localhost:8080/TIITAWEB/Admin/adminsignup.jsp">
                <div class="field input-field">
                    <input type="email" name="tbemail" placeholder="Email" class="input">
                </div>

                <div class="field input-field">
                    <input type="password" name="tbPASSWORD" placeholder="Password" class="password">
                    <i class='bx bx-hide eye-icon'></i>
                </div>

                <div class="form-link">
                    <a href="#" class="forgot-pass">Forgot password?</a>
                </div>
                
                <div class="field button-field">
                    <a href="http://localhost:8080/TIITAWEB/Admin/index.jsp"><button type="button">login</button></a>
                </div>

                
                <!-- Inside your login form -->


            </form>

            <div class="form-link">
                <span>Don't have an account? <a href="http://localhost:8080/TIITAWEB/Admin/adminsignup.jsp" class="link signup-link">Signup</a></span>
            </div>
            
        </div>

        <div class="form signup">
            <header>Signup</header>
            <form name="SIGNUP" method="POST" action="http://localhost:8080/TIITAWEB/adminlogin">
                <div class="field input-field">
                    <input type="text" name="tbFIRST_NAME" placeholder="First Name" class="input">
                </div>

                <div class="field input-field">
                    <input type="text" name="tbLAST_NAME" placeholder="Last Name" class="input">
                </div>

                <div class="field input-field">
                    <input type="email" name="tbEmail" placeholder="Email" class="input">
                </div>

                <div class="field input-field">
                    <input type="text" name="tbPhone_Number" placeholder="Phone Number" class="input">
                </div>

                <div class="field input-field">
                    <input type="password" name="tbPassword" placeholder="Password" class="password">
                </div>

                <div class="field button-field">
                    <button type="submit">Signup</button>
                </div>
            </form>

            <div class="form-link">
                <span>Already have an account? <a href="http://localhost:8080/TIITAWEB/Admin/adminsignup.jsp" class="link login-link">Login</a></span>
            </div>
        </div>
    </section>

    <script src="login_signup.js"></script>
</body>
</html>
