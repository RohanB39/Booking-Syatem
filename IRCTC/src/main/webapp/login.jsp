<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking.com Next Generation eTicketing System - Login</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <div class="form-body">
        <div class="form-container">
            <h2>Booking.com Login</h2>
            <form action="login" method="post">
                <div class="form-group">
                    <input type="text" id="username" name="username" required autocomplete="username" placeholder="User Name">
                </div>
                <div class="form-group">
                    <input type="password" id="password" name="password" required autocomplete="current-password" placeholder="Password">
                </div>
                <div class="form-group">
                    <span id="error-message" style="color: red;"><%= request.getAttribute("errorMessage") != null ? request.getAttribute("errorMessage") : "" %></span>
                </div>
                <div class="form-group" style="display: flex; width:100%; align-items: center; justify-content: space-around;">
                    <button type="submit" style="width: 40%;">Login</button>
                    <a href="basicDetails.jsp" style="color: black;">Create Account?</a>
                </div>
            </form>
            <div class="para">An online booking system is a software solution that allows potential guests to self-book and pay through your website, and other channels, while giving you the best tools to run and scale your operation, all in one place. </div>
        </div>
        <div class="form-img">
            <img alt="" src="img/booking_logo.png">
        </div>
    </div>
</body>
</html>
