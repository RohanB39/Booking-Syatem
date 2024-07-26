<%@page import="com.irctc.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking.com - Customer Service</title>
<link rel="stylesheet" type="text/css" href="css/customerS.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
</head>
<body>
	<div class="main-container">
		<h2 style="font-size: 28px;">
			What's Problem,
			<%
		User user = (User) session.getAttribute("user");
		if (user != null) {
			out.print(user.getUsername());
		} else {
			response.sendRedirect("login.jsp");
		}
		%>
		</h2>
		<div class="options-container">
			<div class="option">
				<img alt="" src="img/train.d3e3d1e5.svg"> <a
					href="success.jsp">Train Booking</a>
			</div>
			<div class="option">
				<img alt="" src="img/bus.1942c5dd.svg"> <a href="bus.jsp">Bus
					Booking</a>
			</div>
			<div class="option">
				<img alt="" src="img/flight.f515b25a.svg"> <a
					href="flight.jsp">Flight Booking</a>
			</div>

			<div class="option1">
				<form action="LogoutServlet" method="post">
				<input type="submit" value="Logout" style="border: none; font-size: 16px; font-weight: 600; background: none; text-decoration: underline;" />
				</form>
			</div>

			<div class="option1">
				<a href="mainPage.jsp" style="text-decoration: none; color: orange;">Home</a>
			</div>
		</div>
	</div>
	
	<div class="main-body">
		<div class="left">
			<h1>our customer support</h1>
			<p>At Booking.com, our commitment to providing exceptional customer service is paramount. We offer 24/7 customer service to ensure you have a seamless and enjoyable booking experience. </p>
			<button><a href="">Contact us</a></button>
		</div>
		<div class="right">
			<img alt="" src="img/cs_bg.jpg">
		</div>
	</div>
	
	
	
	<div class="footer">
		<div class="fot-con">
			<div class="fot-content">
				<h3>About Booking.com</h3>
				<p>Launched in 2024, Booking.com is a technology company focused
					on empowering Indian travellers to plan, book and manage their
					trips across rail, air, buses and hotels. We assist travellers in
					making smarter travel decisions by leveraging artificial
					intelligence, machine learning, and data science led innovations on
					our OTA platforms, comprising our websites and mobile applications.
					Our vision is to become the most customer-centric travel company,
					by offering the best customer experience to our users. Our focus on
					travel utility and customer experience for travellers in the 'next
					billion user' segment is driven by technology, cost-efficiency and
					our culture of innovation has made us India's leading travel
					ecosystem for the 'next billion users.</p>
			</div>
		</div>
		<div class="fot-con1">
			<div class="fot-content">
				<div class="headers">
					<span class="active">Popular flight routes</span> <span>Top
						flight routes</span> <span>Popular Train routes</span> <span>Top
						Train routes</span> <span>Plan your trip</span>
				</div>
				<hr>
				<div class="headers-content">
					<span>delhi to kolkata flights</span> <span>delhi to
						hydrabad flights</span> <span>delhi to dharmashala flights</span> <span>delhi
						to kolkata flights</span> <span>mumbai to chennai flights</span> <span>surat
						to aayodha flights</span> <span>mumbai to amhadabad flights</span> <span>banglore
						to kochi flights</span> <span>hydrabad to aayodha flights</span> <span>channai
						to coimbatore flights</span> <span>delhi to chandigrah flights</span> <span>mumbai
						to jaipur flights</span> <span>delhi to amhadabad flights</span> <span>mumbai
						to ayodha flights</span> <span>delhi to amritsar flights</span> <span>coimbatore
						to channai flights</span> <span>banglore to kolkata flights</span> <span>delhi
						to patna flights</span> <span>banglore to pune flights</span> <span>banglore
						to kolkata flights</span> <span>delhi to kolkata flights</span>
				</div>
				<div id="top-routes" class="headers-content" style="display: none;">
					<span>patna to delhi flight</span> <span>mumbai to kolkata
						flight</span> <span>delhi to udaipur flight</span> <span>channai
						to madurai flight</span> <span>delhi to lucknow flight</span> <span>amhedabad
						to ayodha flight</span> <span>mumbai to chandigrah flight</span> <span>banglore
						to pune flight</span> <span>hydrabad to tirupati flight</span> <span>hydrabad
						to delhi flight</span> <span>banglore to manglore flight</span> <span>kochi
						to banglore flight</span> <span>mumbai to hydrabad flight</span> <span>mumbai
						to kochi flight</span> <span>delhi to bhuvnawashwer flight</span> <span>chennai
						to madurai flight</span> <span>lucknow to delhi flight</span> <span>ayaodha
						to ayaodha flight</span> <span>banglore to delhi flight</span> <span>delhi
						to varanasi flight</span>
				</div>

				<div id="popular-train-routes" class="headers-content"
					style="display: none;">
					<span>Amhedabad to mumbai trains</span> <span>chennai to
						banglore trains</span> <span>delhi to luchnow trains</span> <span>hydrabad
						to tirupati trains</span> <span>banglore to chennai trains</span> <span>chennai
						to koimbture trains</span> <span>delhi to mumbai trains</span> <span>jaipur
						to delhi trains</span> <span>banglore to delhi trains</span> <span>delhi
						to aagra trains</span> <span>delhi to varanasi trains</span> <span>mumbai
						to banglore trains</span> <span>banglore to goa trains</span> <span>delhi
						to banglore trains</span> <span>hydrabad to banglore trains</span> <span>delhi
						to mumbai trains</span> <span>banglore to maysore trains</span> <span>delhi
						to jaipur trains</span> <span>hydrabad to delhi trains</span> <span>patna
						to delhi trains</span>
				</div>

				<div id="top-routes-train" class="headers-content"
					style="display: none;">
					<span>amhadabad to dwarka trains</span> <span>baroda to
						mumbai trains</span> <span>deharadun to new delhi trains</span> <span>ludhiana
						to amritsar trains</span> <span>amhadabad to goa trains</span> <span>banglore
						to hydrabad trains</span> <span>indore to ratnamala trains</span> <span>mumbai
						to hydrabad trains</span> <span>ajmer to jaipur trains</span> <span>baroda
						to mumbai trains</span> <span>jaipur to kota trains</span> <span>nagpur
						to kota trains</span> <span>nagpur to mumbai trains</span> <span>pune
						to lonavala trains</span> <span>baroda to surat trains</span> <span>kalka
						to shimla trains</span> <span>pune to amhadabad trains</span> <span>udaipur
						to jaipur trains</span> <span>bhopal to ujjain trains</span> <span>lucknow
						to kanakpur trains</span> <span>pune to banglore trains</span>
				</div>

				<div id="plan-your-trip" class="headers-content"
					style="display: none;">
					<span>udaipur</span> <span>ayodha</span> <span>rishikesh</span> <span>sai
						nagar</span> <span>goa</span> <span>leh ladakh</span> <span>kochi</span>
					<span>shimla</span> <span>kodainakal</span> <span>varanasi</span> <span>banglore</span>
					<span>hydrabad</span> <span>darjeeling</span> <span>aagra</span> <span>mumbai</span>
					<span>chennai</span> <span>havelock iceland</span> <span>amritsar</span>
					<span>jaipur</span> <span>pondicherry</span>
				</div>
				<hr>

				<div class="imp-links">
					<h5>Important Links</h5>
					<div class="i-links">
						<a href="">IRCTC Trains</a> <a href="">Tatkal Railway
							Reservations</a> <a href="">PNR Status</a> <a href="">Train
							Running Status</a> <a href="">Train Seat Availability</a> <a href="">Platform
							Locator</a> <a href="">Vande Bharat Express</a> <a href="">IRCTC
							Cancellation Charges</a> <a href="">Flight Booking</a> <a href="">International
							Flights</a> <a href="">Student Flight Booking</a> <a href="">Armed
							Forces Flight Booking</a> <a href="">Senior Citizen Flight
							Booking</a> <a href="">Airline</a> <a href="">Abhibus</a> <a href="">ConfirmTkt</a>
						<a href="">Travel Stories</a>
					</div>
				</div>
			</div>
		</div>

		<div class="main-footer">
			<span>&copy; 2024 Rohan Technology Ltd. India. All brands are
				trademarks of their respective owners.</span> <span class="foot-link">
				<ul>
					<li><a href="">Privacy</a></li>
					<li><a href="">Terms Of Use</a></li>
					<li><a href="">Career</a></li>
					<li><a href="">Customer Service</a></li>
					<li><a href="">About Us</a></li>
					<li><a href="">Investor Relation</a></li>
					<li><a href="">CSR</a></li>
				</ul>
			</span>
		</div>
	</div>
	
	<script>
		$(document).ready(function() {
			$('.con-offers').slick({
				infinite : true,
				slidesToShow : 4.5,
				slidesToScroll : 2,
				prevArrow : $('.slick-prev'),
				nextArrow : $('.slick-next')
			});
		});
		
		$(document).ready(function() {
		    var lastScrollTop = 0;
		    var delta = 5;
		    var navbarHeight = $('.main-container').outerHeight();

		    $(window).scroll(function() {
		        var scroll = $(this).scrollTop();

		        if (Math.abs(lastScrollTop - scroll) <= delta)
		            return;

		        if (scroll > lastScrollTop && scroll > navbarHeight) {
		            $('.main-container').addClass('shrink');
		        } else {
		            if (scroll + $(window).height() < $(document).height()) {
		                $('.main-container').removeClass('shrink');
		            }
		        }
		        lastScrollTop = scroll;
		    });
		});
		
		document.addEventListener('DOMContentLoaded', function() {
            const headers = document.querySelectorAll('.headers span');
            const contents = document.querySelectorAll('.headers-content');

            headers.forEach((header, index) => {
                header.addEventListener('click', function() {
                    headers.forEach(h => h.classList.remove('active'));
                    this.classList.add('active');
                    contents.forEach(content => content.style.display = 'none');
                    contents[index].style.display = 'grid';
                });
            });
        });

	</script>
</body>
</html>