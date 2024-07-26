<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Train Status - Live Flight Traking System</title>
<link rel="stylesheet" type="text/css" href="css/status.css">
</head>
<body>
	<div class="main-container">
		<img alt="logo" src="img/booking_logo.png">
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
				<a href="#">Customer Service</a>
			</div>
		</div>
	</div>
	
	<div class="flight-tracker">
		<h2>Realtime Train Status Tracker</h2>
		<div class="tracker-form">
			<form action="" method="post">
				<div class="form-inp">
					<label id="airline">Junction</label>
					<input type="text" id="airline" name="airline" placeholder="Enter Junction">
				</div>
				
				<div class="form-inp">
					<label id="prn">Enter Train PNR</label>
					<input type="text" id="airline" name="fNumber" placeholder="Train PNR">
				</div>
				
				<div class="form-inp">
					<label id="date">Date</label>
					<input type="date" id="date" name="date" placeholder="Enter Date">
				</div>
				
				<div class="btn">
					<button>Search</button>
				</div>
				<div class="hm"><a href="mainPage.jsp">Home Page</a></div>
			</form>
		</div>
	</div>
	
	<div class="status">
		<div class="ac-status">
		<span><b>Booking Name - </b>Rohan Sunil Bankar</span>
		<span><b>Train PNR - </b>QWERT123456</span>
		<span><b>Status - </b>Delayed</span>
		</div>
	</div>
	
	<div class="flight-tracker-body">
		<span>Home</span> >> Train Status
		<div class="flight-tracker-box">
			<span style="padding: 20px;">Realtime Train Status Tracker</span>
			<p style="padding: 20px;">Get the latest information and updates on the flight status of flights. View the flight arrival and departure schedule for .</p>
			<h4 style="padding: 0px 20px;">How to check Train PNR Status</h4>
			<p style="padding: 20px;">To check the Train PNR Status, you can visit the Booking.com website and enter your booking reference number into the "Check Train Status" box. You can also call the IRCTC customer service line to inquire about your train status. By checking PNR, you can ensure that your booking has been processed and that your seat on the train is confirmed. In addition, PNR can provide valuable information about train times, layover schedules, and gate information. You can check train status of other website using our <span style="color: orange;">flight tracker</span> </p>
			<p style="padding: 20px;">Booking.com understands the value of your time. In order to ensure passengers have a seamless and hassle-free journey, we created this service to check the status of trains. Booking.com allows you to check the lowest and cheapest trains booking of across all routes.</p>
			
			<h4 style="padding: 0px 20px;">Train Status Descriptions</h4>
			<b style="padding: 20px;">Scheduled -</b><span>Flight is not airborne.</span> <br>
			<b style="padding: 20px;">Delayed -</b><span>Flight is not on its scheduled departure time.</span><br>
			<b style="padding: 20px;">Departed -</b><span>Flight has left the departure gate but may not be airborne yet.</span><br>
			<b style="padding: 20px;">In Air -</b><span>Flight has taken off.</span><br>
			<b style="padding: 20px;">Diverted  -</b><span>Flight has been diverted from its scheduled destination towards a new location.</span><br>
			<b style="padding: 20px;">Recovery  -</b><span>Flight has departed from the diverted location and enroute the scheduled destination.</span><br>
			<b style="padding: 20px;">Landed   -</b><span>Flight has landed.</span><br>
			<b style="padding: 20px;">Arrived  -</b><span>Flight has arrived at its destination gate</span><br>
			<b style="padding: 20px;">Cancelled  -</b><span>Flight has been cancelled</span><br>
			<b style="padding: 20px;">No Takeoff Info  -</b><span>The real-time status of the flight is unavailable. Contact the airline for all the information.</span><br>
			
			<h4 style="padding: 0px 20px;">Train Status FAQs</h4>
			<b style="padding: 20px;">Q. How to check the Train Status?</b><br>
			<span style="padding: 20px;">A: Now check the Train Status in these following simple steps:</span>
			<ul>
				<li>Visit <span style="color: orange;">Train Status Tracker</span></li>
				<li>Fill up the field by providing your Train PNR and the date of your journey</li>
				<li>Click the button search to generate the latest information on the Train Status of your Train.</li>
			</ul>
			
			<b style="padding: 20px;">Q. Where can I check my Train status update?</b><br>
			<span style="padding: 20px;">A: Check your Train status on the Booking.com website. Go on the Train Status tab and pick a date, the details of the flights will be visible to you.</span><br>
			
			<b style="padding: 20px;">Q. How do I check if my Train is delayed?</b><br>
			<span style="padding: 20px;">A: The updated arrival and departure time of the Train is available on the booking.com Train app, under the Train Status section.
			</span><br>
			
			<b style="padding: 20px;">Q. How can I contact sattions?</b><br>
			<span style="padding: 20px;">A: The customer service number for sattions can be found on IRCTC website.</span>
		</div>
	</div>
	
	<div class="footer">
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
					<span>Amhedabad to mumbai trains</span>
					<span>chennai to banglore trains</span>
					<span>delhi to luchnow trains</span>
					<span>hydrabad to tirupati trains</span>
					<span>banglore to chennai trains</span>
					<span>chennai to koimbture trains</span>
					<span>delhi to mumbai trains</span>
					<span>jaipur to delhi trains</span>
					<span>banglore to delhi trains</span>
					<span>delhi to aagra trains</span>
					<span>delhi to varanasi trains</span>
					<span>mumbai to banglore trains</span>
					<span>banglore to goa trains</span>
					<span>delhi to banglore trains</span>
					<span>hydrabad to banglore trains</span>
					<span>delhi to mumbai trains</span>
					<span>banglore to maysore trains</span>
					<span>delhi to jaipur trains</span>
					<span>hydrabad to delhi trains</span>
					<span>patna to delhi trains</span>
				</div>
				
				<div id="top-routes-train" class="headers-content" style="display: none;">
					<span>amhadabad to dwarka trains</span>
					<span>baroda to mumbai trains</span>
					<span>deharadun to new delhi trains</span>
					<span>ludhiana to amritsar trains</span>
					<span>amhadabad to goa trains</span>
					<span>banglore to hydrabad trains</span>
					<span>indore to ratnamala trains</span>
					<span>mumbai to hydrabad trains</span>
					<span>ajmer to jaipur trains</span>
					<span>baroda to mumbai trains</span>
					<span>jaipur to kota trains</span>
					<span>nagpur to kota trains</span>
					<span>nagpur to mumbai trains</span>
					<span>pune to lonavala trains</span>
					<span>baroda to surat trains</span>
					<span>kalka to shimla trains</span>
					<span>pune to amhadabad trains</span>
					<span>udaipur to jaipur trains</span>
					<span>bhopal to ujjain trains</span>
					<span>lucknow to kanakpur trains</span>
					<span>pune to banglore trains</span>
				</div>
				
				<div id="plan-your-trip" class="headers-content" style="display: none;">
					<span>udaipur</span>
					<span>ayodha</span>
					<span>rishikesh</span>
					<span>sai nagar</span>
					<span>goa</span>
					<span>leh ladakh</span>
					<span>kochi</span>
					<span>shimla</span>
					<span>kodainakal</span>
					<span>varanasi</span>
					<span>banglore</span>
					<span>hydrabad</span>
					<span>darjeeling</span>
					<span>aagra</span>
					<span>mumbai</span>
					<span>chennai</span>
					<span>havelock iceland</span>
					<span>amritsar</span>
					<span>jaipur</span>
					<span>pondicherry</span>
				</div>
				<hr>
				
				<div class="imp-links">
					<h5>Important Links</h5>
					<div class="i-links">
						<a href="">IRCTC Trains</a>
						<a href="">Tatkal Railway Reservations</a>
						<a href="">PNR Status</a>
						<a href="">Train Running Status</a>
						<a href="">Train Seat Availability</a>
						<a href="">Platform Locator</a>
						<a href="">Vande Bharat Express</a>
						<a href="">IRCTC Cancellation Charges</a>
						<a href="">Flight Booking</a>
						<a href="">International Flights</a>
						<a href="">Student Flight Booking</a>
						<a href="">Armed Forces Flight Booking</a>
						<a href="">Senior Citizen Flight Booking</a>
						<a href="">Airline</a>
						<a href="">Abhibus</a>
						<a href="">ConfirmTkt</a>
						<a href="">Travel Stories</a>
					</div>
				</div>
			</div>
		</div>
		
		<div class="main-footer">
			<span>&copy; 2024 Rohan Technology Ltd. India. All brands are trademarks of their respective owners.</span>
			<span class="foot-link">
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
	
	<script type="text/javascript">
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