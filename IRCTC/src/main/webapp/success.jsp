<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.irctc.model.User"%>
<html>
<head>
<title>IRCTC HOME</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" type="text/css" href="css/home.css">
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
						<a href="trainStatus.jsp">PRN STATUS</a>
					</div>
					<div class="btn">
						<a href="#">CHART / VACANCY</a>
					</div>
				</div>
				<h2>TRAIN TICKET</h2>
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
										<option value="general">GENERAL</option>
										<option value="ladise">LADIES</option>
										<option value="general">LOWER BERTH/SR.CITIZEN</option>
										<option value="general">PERSON WITH DISABILITY</option>
										<option value="general">DUTY PASS</option>
										<option value="general">TATKAL</option>
										<option value="general">PREMIUM TATKAL</option>
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
										name="tier">
										<option value="all">All classes</option>
										<option value="Anubhuti">Anubhuti Class (EA)</option>
										<option value="AC First Class">AC First Class (1A)</option>
										<option value="Vistadome Ac">Vistadome AC (EV)</option>
										<option value="Exec">Exec. Chair Car (EC)</option>
										<option value="AC 2 Tier">AC 2 Tier (2A)</option>
										<option value="First Class">First Class (FC)</option>
										<option value="AC 3 Tier">AC 3 Tier (3A)</option>
										<option value="AC 3 Economy">AC 3 Economy (3E)</option>
										<option value="Vistadome Chair">Vistadome Chair Car (VC)</option>
										<option value="AC Chair">AC Chair car (CC)</option>
										<option value="Sleeper">Sleeper (SL)</option>
										<option value="Vistadome Non AC">Vistadome Non AC (VS)</option>
										<option value="Second Sitting">Second Sitting (2S)</option>
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
								<h5 style="margin: 0px;">Train With Avialable Berth</h5>
							</div>
							<div class="ch-input" style="display: flex;">
								<input type="checkbox" name="pass"
									value="Railway pass Conession">
								<h5 style="margin: 0px;">Railway pass Conession</h5>
							</div>
						</div>
						<input type="submit" value="Book Ticket" style="margin-left: 7%; margin-top: 10px; font-size: 17px; padding: 10px 40px; border: none; background: #913d01; border-radius: 5px; color: white; font-weight: 600; cursor: pointer;">
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
			<h1>INDIAN RAILWAYS</h1>
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
        "Chhatrapati Shivaji Maharaj Terminus (Mumbai, Maharashtra)", 
        "New Delhi (Delhi)", 
        "Howrah Junction (Howrah, West Bengal)", 
        "Chennai Central (Chennai, Tamil Nadu)", 
        "Mumbai Central (Mumbai, Maharashtra)",
        "Sealdah (Kolkata, West Bengal)", 
        "Bangalore City (Bengaluru, Karnataka)", 
        "Secunderabad Junction (Secunderabad, Telangana)", 
        "Ahmedabad Junction (Ahmedabad, Gujarat)", 
        "Kanpur Central (Kanpur, Uttar Pradesh)",
        "Lucknow NR (Lucknow, Uttar Pradesh)", 
        "Patna Junction (Patna, Bihar)", 
        "Agra Cantt (Agra, Uttar Pradesh)", 
        "Varanasi Junction (Varanasi, Uttar Pradesh)", 
        "Kolkata (Kolkata, West Bengal)",
        "Madurai Junction (Madurai, Tamil Nadu)", 
        "Guwahati (Guwahati, Assam)", 
        "Visakhapatnam (Visakhapatnam, Andhra Pradesh)", 
        "Thiruvananthapuram Central (Thiruvananthapuram, Kerala)", 
        "Jaipur (Jaipur, Rajasthan)",
        "Nagpur Junction (Nagpur, Maharashtra)", 
        "Pune Junction (Pune, Maharashtra)", 
        "Bhubaneswar (Bhubaneswar, Odisha)", 
        "Indore Junction BG (Indore, Madhya Pradesh)", 
        "Bhopal Junction (Bhopal, Madhya Pradesh)",
        "Jammu Tawi (Jammu, Jammu and Kashmir)", 
        "Amritsar Junction (Amritsar, Punjab)", 
        "Vijayawada Junction (Vijayawada, Andhra Pradesh)", 
        "Coimbatore Junction (Coimbatore, Tamil Nadu)", 
        "Jabalpur Junction (Jabalpur, Madhya Pradesh)",
        "Ranchi Junction (Ranchi, Jharkhand)", 
        "Raipur Junction (Raipur, Chhattisgarh)", 
        "Dehradun (Dehradun, Uttarakhand)", 
        "Surat (Surat, Gujarat)", 
        "Rajkot Junction (Rajkot, Gujarat)",
        "Jodhpur Junction (Jodhpur, Rajasthan)"
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
