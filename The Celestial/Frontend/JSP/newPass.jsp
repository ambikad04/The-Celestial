<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.http.*" %>

<%--
    HttpSession sess = request.getSession(false);
    if (sess != null && sess.getAttribute("tempname") != null) {
        // User is logged in
        String username = (String) sess.getAttribute("username");
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }

            .container {
                text-align: center;
            }

            .password-form {
                width: 400px;
                padding: 20px;
                background-color: #fff;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            h2 {
                margin-bottom: 20px;
            }

            .form-group {
                margin-bottom: 15px;
            }

            label {
                display: block;
                margin-bottom: 5px;
                font-weight: bold;
            }

            input[type="password"] {
                /* width: calc(100% - 22px); */
                padding: 10px;
                border-radius: 5px;
                border: 1px solid #ccc;
                box-shadow: 2px 2px 5px #2773a5;
                transition:  0.3s ease;
                box-sizing: border-box;
            }

            input[type="password"]:focus {
                outline: none;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }

            input {
                width: 93%;
                padding: 10px;
                border: 2px solid #cccc;
                border-radius: 4px;
                font-size: 1rem;
                box-sizing: border-box;
                box-shadow: 2px 2px 5px #2773a5;
            }

            input[type="Submit"] {
                margin-top: 18px;
                background-color: #3498db;
                border: none;
                color: white;
                cursor: pointer;
                text-align: center;
            }
            input[type="Submit"]:hover{
                background-color: #2773a5;
            }

        </style>
    </head>
    <body>

        <!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="UTF-8">
            <title>Password Change</title>
        </head>
       <body>

            <div class="container">
                <div class="password-form">
                    <h2>Change Password</h2>

                    <form action="http://localhost:8080/TIITAWEB/updatePass" method="post">

                        <div class="form-group">
                            <label for="new-password">New Password:</label>
                            <input type="password" id="new-password" name="nPass" required>
                        </div>

                        <div class="form-group">
                            <label for="confirm-password">Confirm New Password:</label>
                            <input type="password" id="confirm-password" name="rePass" required>
                        </div>

                        <div class="form-group">
                            <input type="Submit" value="Submit">
                        </div>

                    </form>
                </div>
            </div>
        </body>
        <%--
            } else {
                // Redirect to login if not logged in
                response.sendRedirect("login.jsp");
            }
        --%>
    </html>
