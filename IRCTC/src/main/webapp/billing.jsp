<%@page import="java.sql.ResultSet"%>
<%@page import="com.irctc.model.User"%>
<%@page import="com.irctc.DAO.UserDAO"%>
<%@page import="com.irctc.model.Booking"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Billing Page</title>
<link rel="stylesheet" href="css/bill.css">
</head>
<body>
	<div class="body">
		<div class="ticket-details">
			<div class="ticket">
				<div class="boarding-pass">Boarding pass</div>
				<div class="boarding-pass1">
					Boarding <br> pass
				</div>
				<div class="ticket-border">
					<div class="hole"></div>
					<div class="dot"></div>
					<div class="dot"></div>
					<div class="dot"></div>
					<div class="dot"></div>
					<div class="dot"></div>
					<div class="dot"></div>
					<div class="dot"></div>
					<div class="dot"></div>
					<div class="dot"></div>
					<div class="dot"></div>
					<div class="dot"></div>
					<div class="dot"></div>
					<div class="dot"></div>
					<div class="dot"></div>
					<div class="dot"></div>
					<div class="dot"></div>

					<div class="hole1"></div>

					<div class="barcode"></div>
					<div class="barcode1"></div>

					<div class="form-b"
						style="height: 45vh; width: 80%; margin-top: -30%;">

						<div class="from"
							style="height: 5vh; width: 10%; display: flex; align-items: center; justify-content: center;">From:</div>
						<div class="from-value"
							style="height: 25vh; width: 25%; display: flex; align-items: center; justify-content: center;">${booking.fromStation}</div>

						<div class="to"
							style="margin-top: -25%; height: 5vh; width: 10%; display: flex; align-items: center; justify-content: center;">To:</div>
						<div class="to-value"
							style="height: 25vh; width: 25%; display: flex; align-items: center; justify-content: center;">${booking.toStation}</div>

						<div class="add"
							style="margin-top: -25%; height: 5vh; width: 10%; display: flex; align-items: center; justify-content: center;">Address:</div>
						<div class="add-value"
							style="height: 25vh; width: 25%; display: flex; align-items: center; justify-content: center;">${user.floor},
							${user.street}, ${user.area}, ${user.city}, ${user.state},
							${user.pin}</div>

						<div class="name"
							style="margin-top: -0.5%; height: 5vh; width: 15%; display: flex; align-items: center; justify-content: center;">Full
							Name:</div>
						<div class="name-value"
							style="height: 8vh; width: 20%; display: flex; align-items: center; justify-content: center;">${user.fName}
							${user.mName} ${user.lName}</div>

						<div class="mobile"
							style="margin-top: -11%; margin-left: 22%; height: 5vh; width: 15%; display: flex; align-items: center; justify-content: center;">Mobile:</div>
						<div class="mobile-value"
							style="height: 8vh; margin-left: 24%; width: 20%; display: flex; align-items: center; justify-content: center;">${user.isd}-${user.mobile}</div>

						
						<div class="cls"
							style="margin-top: -11%; margin-left: 66%; height: 5vh; width: 15%; display: flex; align-items: center; justify-content: center;">Class:</div>
						<div class="cls-value"
							style="height: 8vh; margin-left: 66%; width: 20%; display: flex; align-items: center; justify-content: center;">${booking.travelClass}</div>

						<div class="price"
							style="margin-top: -11%; margin-left: 86%; height: 5vh; width: 15%; display: flex; align-items: center; justify-content: center;">Price:</div>
						<div class="price-value"
							style="height: 8vh; margin-top: 1px; margin-left: 88%; width: 12%; display: flex; align-items: center; justify-content: center;">${price} Rs.1700</div>
					</div>

					<div class="pnr-all"
						style="height: 30vh; width: 15%; margin-left: 85%; margin-top: -26%; display: flex; flex-direction: column; align-items: center; justify-content: space-between;">
						<div class="pnr">PNR NUMBER:</div>
						<%
						UserDAO user = new UserDAO();
						%>
						<div class="pnr-value"><%=user.getLastPNRNumber()%></div>

						<div class="pnr-value sm">Save This PNR Number for tracking
							status of your booking</div>
						<div class="pnr-value sm gr">Type: CONFIRMED
							(${booking.travelDate})</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<button style="margin-top: 20px; height: 7vh; width: 20%; border: none; background: #ff4b4b; border-radius: 10px;"><a href="mainPage.jsp" style="text-decoration: none; color: white; font-weight: 600;">Home Page</a></button>
	
	<section id="offers">
		<div class="headings">Offers For you</div>
		<div class="slider-container">
			<div class="con-offers">
				<div class="offers-div">
					<div class="offers-img">
						<img alt="01" src="img/o1.webp">
					</div>
				</div>
				<div class="offers-div">
					<div class="offers-img">
						<img alt="01" src="img/o2.webp">
					</div>
				</div>
				<div class="offers-div">
					<div class="offers-img">
						<img alt="01" src="img/o3.webp">
					</div>
				</div>
				<div class="offers-div">
					<div class="offers-img">
						<img alt="01" src="img/o4.webp">
					</div>
				</div>
				<div class="offers-div">
					<div class="offers-img">
						<img alt="01" src="img/o5.webp">
					</div>
				</div>
				<div class="offers-div">
					<div class="offers-img">
						<img alt="01" src="img/o6.webp">
					</div>
				</div>
				<div class="offers-div">
					<div class="offers-img">
						<img alt="01" src="img/o7.webp">
					</div>
				</div>
				<div class="offers-div">
					<div class="offers-img">
						<img alt="01" src="img/o8.webp">
					</div>
				</div>
				<div class="offers-div">
					<div class="offers-img">
						<img alt="01" src="img/o9.webp">
					</div>
				</div>
				<div class="offers-div">
					<div class="offers-img">
						<img alt="01" src="img/o10.webp">
					</div>
				</div>

			</div>
			<button class="slick-next">
				<i class="material-icons" style="color: #ef5350;">keyboard_arrow_right</i>
			</button>
		</div>
	</section>
</body>
</html>