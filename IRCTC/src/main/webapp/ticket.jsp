<%@ page import="com.irctc.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ticket</title>
    <link rel="stylesheet" type="text/css" href="css/ticket.css">
    <style>
        .ticket {
            border: 2px solid #000;
            padding: 20px;
            width: 400px;
            margin: 0 auto;
            font-family: Arial, sans-serif;
        }
        .ticket-header {
            text-align: center;
            font-size: 24px;
            font-weight: bold;
        }
        .ticket-details {
            margin-top: 20px;
        }
        .ticket-details div {
            margin-bottom: 10px;
        }
        .label {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <div class="nav-container">
            <img alt="" src="img/secondry-logo.png">
            <img alt="" src="img/logo.png">
        </div>
    </div>
    
    <div class="form-body">
        <div class="ticket-details">
            <div class="ticket-header">Your Ticket</div>
            <div><span class="label">From:</span> ${booking.fromStation}</div>
            <div><span class="label">To:</span> ${booking.toStation}</div>
            <div><span class="label">Class:</span> ${booking.travelClass}</div>
            <div><span class="label">Travel Date:</span> ${booking.travelDate}</div>
            <div><span class="label">Type:</span> <span style="color:green;">Confirmed</span></div>
            <div><span class="label">User ID:</span> ${user.id}</div>
        </div>
    </div>
    
    <form action="FetchUserDetailsServlet" method="post">
        <input type="number" name="uid" placeholder="Enter Your User Id">
        <input type="submit" value="Fetch Billing Details">
    </form>

    <h3>Go to Billing Page...</h3>
    <a href="billing.jsp">Click Here</a>
</body>
</html>
