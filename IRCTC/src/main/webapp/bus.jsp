<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.irctc.model.User"%>
<html>
<head>
<title>Booking.com - Bus Booking</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" type="text/css" href="css/bus.css">
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
						<a href="#">PRN STATUS</a>
					</div>
					<div class="btn">
						<a href="#">CHART / VACANCY</a>
					</div>
				</div>
				<h2>BUS TICKET</h2>
				<div class="form">
					<form action="${pageContext.request.contextPath}/BookTicketServlet" method="post">
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
									<i class="fa-brands fa-squarespace"></i> <select
										name="class">
										<option value="local">Local Bus</option>
										<option value="express">Express Bus</option>
										<option value="intercity">Intercity Bus</option>
										<option value="shuttle">Shuttle Bus</option>
										<option value="school">School Bus</option>
										<option value="tourist">Tourist Bus</option>
										<option value="coach">Coach Bus</option>
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
										name="bus_company" style="width: 50%;">
										<option value="all">All companies</option>
										<option value="KSRTC">KSRTC (Karnataka State Road
											Transport Corporation)</option>
										<option value="MSRTC">MSRTC (Maharashtra State Road
											Transport Corporation)</option>
										<option value="UPSRTC">UPSRTC (Uttar Pradesh State
											Road Transport Corporation)</option>
										<option value="TSRTC">TSRTC (Telangana State Road
											Transport Corporation)</option>
										<option value="APSRTC">APSRTC (Andhra Pradesh State
											Road Transport Corporation)</option>
										<option value="RSRTC">RSRTC (Rajasthan State Road
											Transport Corporation)</option>
										<option value="GSRTC">GSRTC (Gujarat State Road
											Transport Corporation)</option>
										<option value="HRTC">HRTC (Himachal Road Transport
											Corporation)</option>
										<option value="PRTC">PRTC (Punjab Roadways Transport
											Corporation)</option>
										<option value="MSRTC">MSRTC (Maharashtra State Road
											Transport Corporation)</option>
										<option value="DTC">DTC (Delhi Transport Corporation)</option>
										<option value="BMTC">BMTC (Bangalore Metropolitan
											Transport Corporation)</option>
										<option value="RTC">RTC (Road Transport Corporation)</option>
										<option value="Volvo Buses">Volvo Buses</option>
										<option value="Neeta Travels">Neeta Travels</option>
										<option value="VRL Travels">VRL Travels</option>
										<option value="SRS Travels">SRS Travels</option>
										<option value="KPN Travels">KPN Travels</option>
										<option value="Orange Travels">Orange Travels</option>
										<option value="Parveen Travels">Parveen Travels</option>
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
								<h5 style="margin: 0px;">Bus With Avialable Berth</h5>
							</div>
							<div class="ch-input" style="display: flex;">
								<input type="checkbox" name="pass"
									value="Railway pass Conession">
								<h5 style="margin: 0px;">Want Bus pass</h5>
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
			<h1>MSRTC</h1>
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
    	"ISBT Kashmiri Gate (New Delhi, Delhi)",
        "Majestic Bus Station (Bengaluru, Karnataka)",
        "CMBT Bus Terminus (Chennai, Tamil Nadu)",
        "Swargate Bus Station (Pune, Maharashtra)",
        "Kempegowda Bus Station (Bengaluru, Karnataka)",
        "Nehru Inter State Bus Terminal (Kashmiri Gate, Delhi)",
        "MGBS Bus Station (Hyderabad, Telangana)",
        "Vashi Bus Depot (Navi Mumbai, Maharashtra)",
        "Gandhi Nagar Bus Station (Ahmedabad, Gujarat)",
        "Secunderabad Bus Station (Secunderabad, Telangana)",
        "Paradeep Bus Stand (Paradeep, Odisha)",
        "Patna Bus Stand (Patna, Bihar)"
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
