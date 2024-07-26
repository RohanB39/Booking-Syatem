<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.irctc.model.User"%>
<html>
<head>
<title>IRCTC HOME</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" type="text/css" href="css/flight.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
.dropdown-list {
	position: absolute;
	background: white;
	border: 1px solid #ccc;
	max-height: 150px;
	overflow-y: auto;
	width: 260px;
	display: none;
}

.dropdown-list div {
	padding: 10px;
	cursor: pointer;
}

.dropdown-list div:hover {
	background: #f0f0f0;
}

#error-message {
	color: red;
	font-size: 14px;
	display: none;
}
</style>
</head>
<body>
	<div class="content">
		<div class="left">
			<div class="form-body">
				<div class="form-btn">
					<div class="btn">
						<a href="flightStatus.jsp">PRN STATUS</a>
					</div>
					<div class="btn">
						<a href="#">CHART / VACANCY</a>
					</div>
				</div>
				<h2>FLIGHT TICKET</h2>
				<div class="form">
					<form action="BookTicketServlet" method="post">
						<div class="form-body2">
							<div class="form-left">
								<div class="input-form">
									<i class="fa-solid fa-location-arrow"></i> <input type="text"
										id="from" placeholder="From" name="from" autocomplete="off">
									<div id="dropdownListFrom" class="dropdown-list"></div>
								</div>
								<i class="fa-solid fa-arrows-up-down" style="font-size: 20px;"></i>
								<div class="input-form">
									<i class="fa-solid fa-location-arrow"></i> <input type="text"
										id="to" placeholder="To" name="to" autocomplete="off">
									<div id="dropdownListTo" class="dropdown-list"></div>

								</div>
								<div id="error-message">Select another destination. Can't
									go from same station</div>
								<div class="input-form">
									<i class="fa-brands fa-squarespace"></i> <select name="class">
										<option value="all">All classes</option>
										<option value="economy">Economy Class</option>
										<option value="premium_economy">Premium Economy Class</option>
										<option value="business">Business Class</option>
										<option value="first">First Class</option>
									</select>

								</div>
							</div>

							<div class="form-right">
								<div class="input-form" style="margin-bottom: 25px;">
									<i class="fa-solid fa-calendar-days"></i> <input type="date"
										id="date" name="date">
								</div>
								<div class="input-form" style="margin-bottom: 25px;">
									<i class="fa-solid fa-clock"></i> <input type="text" id="time"
										name="time" readonly>
								</div>
								<div class="input-form">
									<i class="fa-solid fa-suitcase-rolling"></i> <select
										name="flight_company" style="width: 50%;">
										<option value="all">All companies</option>
										<option value="Air India">Air India</option>
										<option value="IndiGo">IndiGo</option>
										<option value="SpiceJet">SpiceJet</option>
										<option value="GoAir">GoAir</option>
										<option value="Vistara">Vistara</option>
										<option value="AirAsia">AirAsia</option>
										<option value="Air India Express">Air India Express</option>
										<option value="Jet Airways">Jet Airways</option>
										<option value="Alliance Air">Alliance Air</option>
										<option value="Air Costa">Air Costa</option>
										<option value="TruJet">TruJet</option>
										<option value="Zoom Air">Zoom Air</option>
										<option value="Air Deccan">Air Deccan</option>
										<option value="Star Air">Star Air</option>
										<option value="Air Odisha">Air Odisha</option>
										<option value="Tata SIA Airlines (Vistara)">Tata SIA
											Airlines (Vistara)</option>
										<option value="Air Pegasus">Air Pegasus</option>
										<option value="FlyBig">FlyBig</option>
										<option value="Akasa Air">Akasa Air</option>
									</select>


								</div>
							</div>
						</div>

						<div class="checkboxex" style="width: 86%; margin-left: 7%;">
							<div class="ch-input" style="display: flex;">
								<input type="checkbox" name="disability"
									value="person With Disability Conession">
								<h5 style="margin: 0px;">person With Disability Conession</h5>
							</div>
							<div class="ch-input" style="display: flex;">
								<input type="checkbox" name="flexible"
									value="Flexible With Date">
								<h5 style="margin: 0px;">Flexible With Date</h5>
							</div>
							<div class="ch-input" style="display: flex;">
								<input type="checkbox" name="avialable"
									value="Train With Avialable Berth">
								<h5 style="margin: 0px;">Flight With Avialable Berth</h5>
							</div>
							<div class="ch-input" style="display: flex;">
								<input type="checkbox" name="pass"
									value="Railway pass Conession">
								<h5 style="margin: 0px;">Flight with super class</h5>
							</div>
						</div>
						<input type="submit" value="Book Ticket"
							style="margin-left: 7%; margin-top: 10px; font-size: 17px; padding: 10px 40px; border: none; background: #913d01; border-radius: 5px; color: white; font-weight: 600; cursor: pointer;">
					</form>
				</div>
				<form action="LogoutServlet" method="post">
						<input type="submit" value="Logout" style="margin-left: 255px; margin-top:-6%; font-size: 17px; padding: 10px 40px; border: none; background: #913d01; border-radius: 5px; color: white; font-weight: 600; cursor: pointer;">
				</form>
				
				<div class="btn" style="margin-top: 10px; margin-left: 50px; width: 25%; border-radius: 5px;"> <a href="mainPage.jsp">Home Page</a> </div>
				<div class="btn" style="margin-top: 10px; margin-left: 50px; width: 25%; border-radius: 5px;"> <a href="mainPage.jsp">Your Bookings</a> </div>
			</div>
		</div>
		<div class="right">
			<h1>FLIGHT BOOKING</h1>
			<h3>Safety | Security | Punctuality</h3>
			<%
			User user = (User) session.getAttribute("user");
			%>
			<h3 style="font-weight: 700;">
				Welcome, <span style="text-transform: uppercase;"><%=user.getUsername()%>..!</span>
			</h3>
		</div>
	</div>

	<script type="text/javascript">
    const stations = [
    	"Indira Gandhi International Airport (DEL), New Delhi, Delhi",
        "Chhatrapati Shivaji Maharaj International Airport (BOM), Mumbai, Maharashtra",
        "Kempegowda International Airport (BLR), Bengaluru, Karnataka",
        "Chennai International Airport (MAA), Chennai, Tamil Nadu",
        "Netaji Subhas Chandra Bose International Airport (CCU), Kolkata, West Bengal",
        "Rajiv Gandhi International Airport (HYD), Hyderabad, Telangana",
        "Cochin International Airport (COK), Kochi, Kerala",
        "Sardar Vallabhbhai Patel International Airport (AMD), Ahmedabad, Gujarat",
        "Pune Airport (PNQ), Pune, Maharashtra",
        "Goa International Airport (GOI), Dabolim, Goa",
        "Jaipur International Airport (JAI), Jaipur, Rajasthan",
        "Visakhapatnam International Airport (VTZ), Visakhapatnam, Andhra Pradesh",
        "Thiruvananthapuram International Airport (TRV), Thiruvananthapuram, Kerala",
        "Biju Patnaik International Airport (BBI), Bhubaneswar, Odisha",
        "Coimbatore International Airport (CJB), Coimbatore, Tamil Nadu",
        "Dr. Babasaheb Ambedkar International Airport (NAG), Nagpur, Maharashtra",
        "Chaudhary Charan Singh International Airport (LKO), Lucknow, Uttar Pradesh",
        "Madurai International Airport (IXM), Madurai, Tamil Nadu",
        "Sri Guru Ram Dass Jee International Airport (ATQ), Amritsar, Punjab",
        "Lokpriya Gopinath Bordoloi International Airport (GAU), Guwahati, Assam",
        "Veer Savarkar International Airport (IXZ), Port Blair, Andaman and Nicobar Islands",
        "Tiruchirappalli International Airport (TRZ), Tiruchirappalli, Tamil Nadu",
        "Devi Ahilya Bai Holkar Airport (IDR), Indore, Madhya Pradesh",
        "Bagdogra Airport (IXB), Siliguri, West Bengal",
        "Kushok Bakula Rimpochee Airport (IXL), Leh, Ladakh",
        "Gaya Airport (GAY), Gaya, Bihar",
        "Jammu Airport (IXJ), Jammu, Jammu and Kashmir",
        "Raja Bhoj Airport (BHO), Bhopal, Madhya Pradesh",
        "Jabalpur Airport (JLR), Jabalpur, Madhya Pradesh",
        "Sri Guru Ram Dass Jee International Airport (RPR), Raipur, Chhattisgarh",
        "Dr. Babasaheb Ambedkar International Airport (STV), Surat, Gujarat",
        "Rajkot Airport (RAJ), Rajkot, Gujarat",
        "Jodhpur Airport (JDH), Jodhpur, Rajasthan",
        "Imphal International Airport (IMF), Imphal, Manipur",
        "Agartala Airport (IXA), Agartala, Tripura",
        "Bhuj Airport (BHJ), Bhuj, Gujarat",
        "Mangalore International Airport (IXE), Mangalore, Karnataka",
        "Vijayawada Airport (VGA), Vijayawada, Andhra Pradesh",
        "Hubli Airport (HBX), Hubli, Karnataka",
        "Dehradun Airport (DED), Dehradun, Uttarakhand",
        "Silchar Airport (IXS), Silchar, Assam",
        "Shri Guru Gobind Singh Ji Airport (IATA:VTZ, ICAO:VOVZ), Vizag",
        "Shri Guru Gobind Singh Ji Airport (VTZ), Visakhapatnam, Andhra Pradesh",
        "Ludhiana Airport (LUH), Ludhiana, Punjab",
        "Birsa Munda Airport (IXR), Ranchi, Jharkhand",
        "Srinagar International Airport (SXR), Srinagar, Jammu and Kashmir",
        "Cuddapah Airport (CDP), Kadapa, Andhra Pradesh",
        "Belgaum Airport (IXG), Belgaum, Karnataka",
        "Khajuraho Airport (HJR), Khajuraho, Madhya Pradesh",
        "Dibrugarh Airport (DIB), Dibrugarh, Assam",
        "Aurangabad Airport (IXU), Aurangabad, Maharashtra",
        "Porbandar Airport (PBD), Porbandar, Gujarat",
        "Nashik Airport (ISK), Nashik, Maharashtra",
        "Kolhapur Airport (KLH), Kolhapur, Maharashtra",
        "Rajahmundry Airport (RJA), Rajahmundry, Andhra Pradesh",
        "Shirdi Airport (SAG), Shirdi, Maharashtra",
        "Gwalior Airport (GWL), Gwalior, Madhya Pradesh",
        "Tezpur Airport (TEZ), Tezpur, Assam",
        "Allahabad Airport (IXD), Allahabad, Uttar Pradesh",
        "Kannur International Airport (CNN), Kannur, Kerala",
        "Kangra Airport (DHM), Kangra, Himachal Pradesh",
        "Pantnagar Airport (PGH), Pantnagar, Uttarakhand",
        "Leh Kushok Bakula Rimpochee Airport (IXL), Leh, Ladakh",
        "Jammu Airport (IXJ), Jammu, Jammu and Kashmir",
        "Diu Airport (DIU), Diu, Daman and Diu",
        "Jamnagar Airport (JGA), Jamnagar, Gujarat",
        "Aizawl Airport (AJL), Aizawl, Mizoram",
        "Lengpui Airport (AJL), Aizawl, Mizoram",
        "Pasighat Airport (IXT), Pasighat, Arunachal Pradesh",
        "Hampi Airport (HMY), Hampi, Karnataka",
        "Kishangarh Airport (KQH), Ajmer, Rajasthan",
        "Pakyong Airport (PYG), Gangtok, Sikkim",
        "Tuticorin Airport (TCR), Thoothukudi, Tamil Nadu",
        "Kullu Manali Airport (KUU), Kullu, Himachal Pradesh",
        "Kandla Airport (IXY), Kandla, Gujarat",
        "Lakhimpur Airport (LKH), Lakhimpur, Assam",
        "Bhuntar Airport (KUU), Bhuntar, Himachal Pradesh",
        "Mysore Airport (MYQ), Mysore, Karnataka",
        "Chandigarh Airport (IXC), Chandigarh",
        "Rourkela Airport (RRK), Rourkela, Odisha",
        "Daman Airport (NMB), Daman, Daman and Diu",
        "Bhatinda Airport (BUP), Bhatinda, Punjab",
        "Bareilly Airport (BEK), Bareilly, Uttar Pradesh",
        "Karipur International Airport (CCJ), Kozhikode, Kerala",
        "Kadapa Airport (CDP), Kadapa, Andhra Pradesh",
        "Kolhapur Airport (KLH), Kolhapur, Maharashtra",
        "Kullu Manali Airport (KUU), Kullu, Himachal Pradesh",
        "Leh Kushok Bakula Rimpochee Airport (IXL), Leh, Ladakh",
        "Lucknow Airport (LKO), Lucknow, Uttar Pradesh",
        "Ludhiana Airport (LUH), Ludhiana, Punjab",
        "Madurai Airport (IXM), Madurai, Tamil Nadu",
        "Mangalore Airport (IXE), Mangalore, Karnataka",
        "Mysore Airport (MYQ), Mysore, Karnataka",
        "Nagpur Airport (NAG), Nagpur, Maharashtra",
        "Patna Airport (PAT), Patna, Bihar",
        "Pune Airport (PNQ), Pune, Maharashtra",
        "Raipur Airport (RPR), Raipur, Chhattisgarh",
        "Ranchi Airport (IXR), Ranchi, Jharkhand",
        "Shillong Airport (SHL), Shillong, Meghalaya",
        "Surat Airport (STV), Surat, Gujarat",
        "Tirupati Airport (TIR), Tirupati, Andhra Pradesh",
        "Udaipur Airport (UDR), Udaipur, Rajasthan",
        "Varanasi Airport (VNS), Varanasi, Uttar Pradesh",
        "Vijayawada Airport (VGA), Vijayawada, Andhra Pradesh",
        "Visakhapatnam Airport (VTZ), Visakhapatnam, Andhra Pradesh",
        "Warangal Airport (WGC), Warangal, Telangana",
        "Agatti Airport (AGX), Agatti Island, Lakshadweep",
        "Port Blair Airport (IXZ), Port Blair, Andaman and Nicobar Islands",
        "Dibrugarh Airport (DIB), Dibrugarh, Assam",
        "Jorhat Airport (JRH), Jorhat, Assam",
        "Shillong Airport (SHL), Shillong, Meghalaya",
        "Silchar Airport (IXS), Silchar, Assam",
        "Tezpur Airport (TEZ), Tezpur, Assam",
        "Dimapur Airport (DMU), Dimapur, Nagaland",
        "Imphal Airport (IMF), Imphal, Manipur",
        "Agartala Airport (IXA), Agartala, Tripura",
        "Lilabari Airport (IXI), Lilabari, Assam",
        "Passighat Airport (IXT), Passighat, Arunachal Pradesh",
        "Kailashahar Airport (IXH), Kailashahar, Tripura",
        "Mysuru Airport (MYQ), Mysuru, Karnataka",
        "Mangaluru Airport (IXE), Mangaluru, Karnataka",
        "Davanagere Airport (DXE), Davanagere, Karnataka",
        "Kannur International Airport (CNN), Kannur, Kerala",
        "Jharsuguda Airport (JRG), Jharsuguda, Odisha",
        "Jeypore Airport (PYB), Jeypore, Odisha",
        "Vijayanagar Airport (VDY), Toranagallu, Karnataka",
        "Kishangarh Airport (KQH), Kishangarh, Rajasthan",
        "Kangra Airport (DHM), Kangra, Himachal Pradesh",
        "Shimla Airport (SLV), Shimla, Himachal Pradesh",
        "Shirdi Airport (SAG), Shirdi, Maharashtra",
        "Sindhudurg Airport (SIX), Sindhudurg, Maharashtra",
        "Lakhimpur Airport (LHI), Lakhimpur, Assam",
        "Bhavnagar Airport (BHU), Bhavnagar, Gujarat",
        "Bharatpur Airport (BHR), Bharatpur, Rajasthan",
        "Akola Airport (AKD), Akola, Maharashtra",
        "Sholapur Airport (SSE), Sholapur, Maharashtra",
        "Bellary Airport (BEP), Ballari, Karnataka",
        "Begumpet Airport (BPM), Begumpet, Telangana",
        "Jakkur Aerodrome (JAK), Bengaluru, Karnataka",
        "HAL Airport (BLR), Bengaluru, Karnataka",
        "Yelahanka Air Force Station (YLK), Bengaluru, Karnataka",
        "Hindon Airport (VIDX), Hindon, Uttar Pradesh",
        "Kannur International Airport (CNN), Kannur, Kerala",
        "Kalaburagi Airport (IXG), Kalaburagi, Karnataka",
        "Tirupati Airport (TIR), Tirupati, Andhra Pradesh",
        "Bijapur Airport (BJP), Bijapur, Karnataka",
        "Bidar Airport (IXX), Bidar, Karnataka",
        "Bareilly Airport (BEK), Bareilly, Uttar Pradesh",
        "Bhatinda Airport (BUP), Bhatinda, Punjab",
        "Harni Airport (VAD), Vadodara, Gujarat",
        "Dharamshala Airport (DHM), Kangra, Himachal Pradesh",
        "Bilaspur Airport (PAB), Bilaspur, Chhattisgarh",
        "Gondia Airport (GDA), Gondia, Maharashtra",
        "Nanded Airport (NDC), Nanded, Maharashtra",
        "Baramati Airport (BQY), Baramati, Maharashtra",
        "Chandrapur Airport (NDC), Nanded, Maharashtra",
        "Rajahmundry Airport (RJA), Rajahmundry, Andhra Pradesh",
        "Jamnagar Airport (JGA), Jamnagar, Gujarat",
        "Bijapur Airport (BJP), Bijapur, Karnataka",
        "Bidar Airport (IXX), Bidar, Karnataka",
        "Bareilly Airport (BEK), Bareilly, Uttar Pradesh",
        "Bhatinda Airport (BUP), Bhatinda, Punjab",
        "Harni Airport (VAD), Vadodara, Gujarat",
        "Dharamshala Airport (DHM), Kangra, Himachal Pradesh",
        "Bilaspur Airport (PAB), Bilaspur, Chhattisgarh",
        "Gondia Airport (GDA), Gondia, Maharashtra",
        "Nanded Airport (NDC), Nanded, Maharashtra",
        "Baramati Airport (BQY), Baramati, Maharashtra",
        "Chandrapur Airport (NDC), Nanded, Maharashtra",
        "Rajahmundry Airport (RJA), Rajahmundry, Andhra Pradesh",
        "Jamnagar Airport (JGA), Jamnagar, Gujarat",
        "Bijapur Airport (BJP), Bijapur, Karnataka"
    ];

    function filterStations(input) {
        return stations.filter(station => station.toLowerCase().startsWith(input.toLowerCase()));
    }

    function updateDropdownList(inputElement, dropdownId) {
        const input = document.getElementById(inputElement).value;
        const dropdownList = document.getElementById(dropdownId);
        dropdownList.innerHTML = '';
        const filteredStations = filterStations(input);
        if (filteredStations.length > 0) {
            dropdownList.style.display = 'block';
            filteredStations.forEach(station => {
                const div = document.createElement('div');
                div.textContent = station;
                div.addEventListener('click', () => {
                    document.getElementById(inputElement).value = station;
                    dropdownList.style.display = 'none';
                    validateStations();
                });
                dropdownList.appendChild(div);
            });
        } else {
            dropdownList.style.display = 'none';
        }
    }

    function validateStations() {
        const fromValue = document.getElementById('from').value;
        const toValue = document.getElementById('to').value;
        const errorMessage = document.getElementById('error-message');

        if (fromValue && toValue && fromValue === toValue) {
            errorMessage.style.display = 'block';
        } else {
            errorMessage.style.display = 'none';
        }
    }

    document.getElementById('from').addEventListener('input', (e) => {
        updateDropdownList('from', 'dropdownListFrom');
        validateStations();
    });

    document.getElementById('to').addEventListener('input', (e) => {
        updateDropdownList('to', 'dropdownListTo');
        validateStations();
    });

    document.addEventListener('click', (e) => {
        const dropdownListFrom = document.getElementById('dropdownListFrom');
        const dropdownListTo = document.getElementById('dropdownListTo');
        if (!dropdownListFrom.contains(e.target) && e.target !== document.getElementById('from')) {
            dropdownListFrom.style.display = 'none';
        }
        if (!dropdownListTo.contains(e.target) && e.target !== document.getElementById('to')) {
            dropdownListTo.style.display = 'none';
            }
        });

        validateStations(); 
    
        const today = new Date();
        const formattedTime = today.toLocaleTimeString([], {hour: '2-digit', minute:'2-digit', second:'2-digit'});
        document.getElementById('time').value = formattedTime;
        
        const todayDate = new Date().toISOString().split('T')[0];
        document.getElementById('date').value = todayDate;
    </script>
</body>
</html>
