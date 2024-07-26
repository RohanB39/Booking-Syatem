<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking.com Next Generation eTicketing System</title>
<link rel="stylesheet" type="text/css" href="css/registration.css">
</head>
<body>
	<div class="form-body" style="width: 100%;">
		<div class="form-container">
			<h2>Enter Personal Details</h2>
			<div class="tab">
				<div>
					<a href="basicDetails.jsp">Basic Details</a>
				</div>
				<div class="active">
					<a href="personalDetails.jsp">Personal Details</a>
				</div>
				<div>
					<a href="address.jsp">Address</a>
				</div>
			</div>
			<form action="personalDetails" method="post">
				<div class="form-group" style="display: flex;">
					<input type="text" name="fname" required autocomplete="fname"
						placeholder="First Name"> <input type="text" name="mname"
						required autocomplete="mname" placeholder="Middle Name"> <input
						type="text" name="lname" required autocomplete="lname"
						placeholder="Last Name">
				</div>
				<b style="margin-bottom: 10px;">Info! Please provide your exact
					name as per Aadhaar to avail Aadhaar based benefits on IRCTC
					eTicketing website.</b>
				<div class="form-group" style="margin-top: 10px; display: flex;">
					<select name="occupation" style="width: 100%;
    padding: 15px;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 5px;
    outline: none;
    background: #fff;
    color: #333;
    font-size: 16px;
    transition: border-color 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
    appearance: none;
    background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="rgba(51, 51, 51, 0.7)" d="M7 10l5 5 5-5z"/></svg>');
    background-repeat: no-repeat;
    background-position: right 10px center;
    background-size: 12px 12px;">
						<option>Occupation</option>
						<option value="GOVERNMENT">GOVERNMENT</option>
						<option value="PUBLIC">PUBLIC</option>
						<option value="PRIVATE">PRIVATE</option>
						<option value="PROFESSIONAL">PROFESSIONAL</option>
						<option value="SELF EMPLOYED">SELF EMPLOYED</option>
						<option value="STUDENT">STUDENT</option>
						<option value="OTHER">OTHER</option>
					</select> <input type="date" id="date" name="dateofbirth" required
						autocomplete="date" placeholder="Date Of Birth">
				</div>
				<div class="form-group" style="display: flex; align-items: center;">
					<div
						style="display: flex; align-items: center; justify-content: center;">
						<input type="radio" id="married" name="marital_status"
							value="married"> Married
					</div>
					<div
						style="display: flex; align-items: center; justify-content: center; margin-left: 10px;">
						<input type="radio" id="unmarried" name="marital_status"
							value="unmarried"> Unmarried
					</div>
				</div>
				<div class="form-group" style="display: flex; align-items: center;">
					<div
						style="display: flex; align-items: center; justify-content: center;">
						<input type="radio" name="gender" value="male"> Male
					</div>
					<div
						style="display: flex; align-items: center; justify-content: center; margin-left: 10px;">
						<input type="radio" name="gender" value="female"> Female
					</div>
					<div
						style="display: flex; align-items: center; justify-content: center; margin-left: 10px;">
						<input type="radio" name="gender" value="other"> Other
					</div>
					<input type="email" name="email" placeholder="Email"
						style="margin-left: 20px;">
				</div>
				<div class="note"
					style="background: #b8f4f5; padding: 5px 15px; border-radius: 5px; font-size: 12px; margin-bottom: 10px;">
					<p>
						<b>Info!</b> International/NRI users with ISD code other than 91
						have to pay Registration fees after successful registration i.e.
						on first login. Please note that the Registration fee for
						International/NRI users is Rs. 100 + GST.
					</p>
				</div>
				<div class="form-group" style="display: flex; align-items: center; justify-content: space-between;">
					<input type="number" name="isd" required autocomplete="isd"
						placeholder="ISD" style="width: 15%;"> <input type="number" name="mobile"
						required autocomplete="mobile" placeholder="Mobile Number" style="width: 75%;">
				</div>
				<div style="display: flex; flex-direction: column; margin-bottom: 10px;">
						<input type="text" id="nationalityInput" placeholder="Nationality" style="padding: 10px;">
						<select id="nationalitySelect" name="nationality" style="padding: 7px; width: 100%;
    padding: 15px;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 5px;
    outline: none;
    background: #fff;
    color: #333;
    font-size: 16px;
    transition: border-color 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
    appearance: none;
    background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="rgba(51, 51, 51, 0.7)" d="M7 10l5 5 5-5z"/></svg>');
    background-repeat: no-repeat;
    background-position: right 10px center;
    background-size: 12px 12px;">
						</select>
				</div>
				<div class="form-group" style="display: flex; width:100%; align-items: center; justify-content: space-around;">
                    <button type="submit" style="width: 40%;">Next</button>
                    <a href="login.jsp" style="color: black;">Login?</a>
                </div>
			</form>
		</div>
		<div class="form-img"
			style="display: flex; flex-direction: column; align-items: center; ">
			<img style="height: 10vh; width: 30%;"  alt="" src="img/booking_logo.png">
			<img style="height: 80vh; width: 100%;  border-radius: 400px"  alt="" src="img/personal_bg.jpg">
		</div>
	</div>
	<script>
        
        const countries = [
    "Afghanistan", "Albania", "Algeria", "Andorra", "Angola", "Antigua and Barbuda", "Argentina", "Armenia", "Australia", "Austria", 
    "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bhutan", "Bolivia", 
    "Bosnia and Herzegovina", "Botswana", "Brazil", "Brunei", "Bulgaria", "Burkina Faso", "Burundi", "Cabo Verde", "Cambodia", 
    "Cameroon", "Canada", "Central African Republic", "Chad", "Chile", "China", "Colombia", "Comoros", "Congo", "Costa Rica", 
    "Croatia", "Cuba", "Cyprus", "Czechia", "Denmark", "Djibouti", "Dominica", "Dominican Republic", "East Timor", "Ecuador", 
    "Egypt", "El Salvador", "Equatorial Guinea", "Eritrea", "Estonia", "Eswatini", "Ethiopia", "Fiji", "Finland", "France", 
    "Gabon", "Gambia", "Georgia", "Germany", "Ghana", "Greece", "Grenada", "Guatemala", "Guinea", "Guinea-Bissau", "Guyana",     "Haiti", "Honduras", "Hungary", "Iceland", "India", "Indonesia", "Iran", "Iraq", "Ireland", "Israel", "Italy", "Ivory Coast", 
    "Jamaica", "Japan", "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Korea, North", "Korea, South", "Kosovo", "Kuwait", 
    "Kyrgyzstan", "Laos", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg", 
    "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Marshall Islands", "Mauritania", "Mauritius", "Mexico", 
    "Micronesia", "Moldova", "Monaco", "Mongolia", "Montenegro", "Morocco", "Mozambique", "Myanmar", "Namibia", "Nauru", "Nepal", 
    "Netherlands", "New Zealand", "Nicaragua", "Niger", "Nigeria", "North Macedonia", "Norway", "Oman", "Pakistan", "Palau", 
    "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines", "Poland", "Portugal", "Qatar", "Romania", "Russia", 
    "Rwanda", "Saint Kitts and Nevis", "Saint Lucia", "Saint Vincent and the Grenadines", "Samoa", "San Marino", "Sao Tome and Principe", 
    "Saudi Arabia", "Senegal", "Serbia", "Seychelles", "Sierra Leone", "Singapore", "Slovakia", "Slovenia", "Solomon Islands", 
    "Somalia", "South Africa", "South Sudan", "Spain", "Sri Lanka", "Sudan", "Suriname", "Sweden", "Switzerland", "Syria", 
    "Taiwan", "Tajikistan", "Tanzania", "Thailand", "Togo", "Tonga", "Trinidad and Tobago", "Tunisia", "Turkey", "Turkmenistan", 
    "Tuvalu", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", "United States", "Uruguay", "Uzbekistan", "Vanuatu", 
    "Vatican City", "Venezuela", "Vietnam", "Yemen", "Zambia", "Zimbabwe"
];


        
        function filterCountries(input) {
            const filteredCountries = countries.filter(country => country.toLowerCase().startsWith(input.toLowerCase()));
            return filteredCountries;
        }

        
        function updateDropdownOptions(input) {
            const selectElement = document.getElementById('nationalitySelect');
            selectElement.innerHTML = '';
            const filteredCountries = filterCountries(input);
            filteredCountries.forEach(country => {
                const option = document.createElement('option');
                option.text = country;
                option.value = country;
                selectElement.add(option);
            });
        }

        
        document.getElementById('nationalityInput').addEventListener('input', function(event) {
            const input = event.target.value;
            updateDropdownOptions(input);
        });

        
        updateDropdownOptions('');
    </script>
</body>
</html>

