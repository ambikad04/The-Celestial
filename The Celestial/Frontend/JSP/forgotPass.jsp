<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password</title>
        <style>
            *{      
                box-sizing: border-box;
            }
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                background-color: #f4f4f4;
            }

            .forgot-password-form {
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                background-color: #fff;
                padding: 20px;
                border-radius: 8px;
                max-width: 400px;
                width: 100%;
                box-sizing: border-box;
            }
            .font-12 {
                font-size: 12px;
            }

            .no-bottom-margin {
                margin-bottom: 0;
            }
            .textMuted {
                color: #7f7f7f;
            }
            p {
                margin: 0 0 10px;
                line-height: 20px;
                border-bottom: 1px solid #a6a6b8;
            }

            h2 {
                margin-bottom: 10px;
            }
            .card{
                margin-top: 20px;
            }

            label {
                display: block;
                margin-bottom: 15px;
            }

            input{
                width: 100%;
                padding: 10px;
                border: 2px solid #cccc;
                border-radius: 4px;
                font-size: 1rem;
                box-sizing: border-box;
                box-shadow: 2px 2px 5px #2773a5;
            }
            input[type="submit"]{
                margin-top: 18px;
                background-color: #3498db;
                border: none;
                color: white;
                cursor: pointer;
                text-align: center;
            }
            input[type="submit"]:hover{
                background-color: #2773a5;
            }

        </style>
    </head>

    <body>
        <div class="forgot-password-form">
            <h2>Forgot Password</h2>
            <p class="no-bottom-margin textMuted font-12">Provide us the email id of your Quick Diagnosis account and we will send you an otp with instructions to reset your password.</p>
            <form action="http://localhost:8080/TIITAWEB/VerifyEmail" method="post">

                <div class="form-group">
                    <label for="email" class="card">Enter your email address:</label>
                    <input type="email" id="email" name="email" placeholder="Enter your email" required>
                </div>
                <input type="submit" value="Send OTP">
            </form>
        </div>
    </body>

</html>