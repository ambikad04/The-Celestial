<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="feedback.css">
</head>
<body>
     <div class="container">
         <form name="contactus" method="POST" action="http://localhost:8080/TIITAWEB/feedback">
        <form action="">
            <h1>Give Your Feedback</h1>
            <div class="id">
                <input type="text" name="tbFULL_NAME" placeholder="Full Name">

            </div>
            <div class="id">
                <input type="email" name="tbEMAIL" placeholder="Email Address">
                
            </div>
            <textarea name="tbMESSAGE"  cols="15" rows="5" placeholder="Write Your Message Here"></textarea>
            <button>Send</button>
        </form>
     </div>
</body>
</html>
