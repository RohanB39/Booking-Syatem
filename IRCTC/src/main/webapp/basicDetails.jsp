<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking.com Next Generation eTicketing System.</title>
<link rel="stylesheet" type="text/css" href="css/registration.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(
			function() {
				$('#username').on(
						'blur',
						function() {
							var username = $(this).val();
							if (username) {
								$.ajax({
									url : 'checkUsername',
									type : 'POST',
									data : {
										username : username
									},
									success : function(response) {
										if (response === 'unavailable') {
											$('#username-error').text(
													'Username not available')
													.css('color', 'red');
										} else {
											$('#username-error').text(
													'Username available').css(
													'color', 'green');
										}
									}
								});
							}
						});

				$('#password, #confirm-password').on(
						'keyup',
						function() {
							var password = $('#password').val();
							var confirmPassword = $('#confirm-password').val();
							if (password && confirmPassword
									&& password !== confirmPassword) {
								$('#password-error').text(
										'Passwords do not match').css('color',
										'red');
							} else {
								$('#password-error').text('');
							}

							var strength = 0;
							if (password.length >= 8)
								strength++;
							if (password.match(/[a-z]+/))
								strength++;
							if (password.match(/[A-Z]+/))
								strength++;
							if (password.match(/[0-9]+/))
								strength++;
							if (password.match(/[$@#&!]+/))
								strength++;
							switch (strength) {
							case 0:
							case 1:
							case 2:
								$('#password-strength').text('Weak').css(
										'color', 'red');
								break;
							case 3:
								$('#password-strength').text('Moderate').css(
										'color', 'orange');
								break;
							case 4:
							case 5:
								$('#password-strength').text('Strong').css(
										'color', 'green');
								break;
							}
						});
			});
</script>
</head>
<body>
	<div class="form-body" style="width: 100%;">
		<div class="form-container">
			<h2>Create Your Account</h2>
			<div class="tab">
				<div class="active">
					<a href="basicDetails.jsp">Basic Details</a>
				</div>
				<div>
					<a href="personalDetails.jsp">Personal Details</a>
				</div>
				<div>
					<a href="address.jsp">Address</a>
				</div>
			</div>
			<b>GARBAGE/JUNK VALUES IN PROFILE MAY LEAD TO DEACTIVATION</b> <br>
			<small style="margin-bottom: 10px;"> Please use a valid
				E-Mail ID and mobile number in registration.</small>
			<form action="basicDetails" method="post">
				<div class="form-group">
					<input type="text" id="username" name="username" required
						autocomplete="username" placeholder="User Name"> <span
						id="username-error"></span>
				</div>
				<div class="form-group">
					<input type="password" id="password" name="password" required
						autocomplete="new-password" placeholder="Password"> 
						<span id="password-strength"></span>
				</div>
				<div class="form-group">
					<input type="password" id="confirm-password" name="confirmPassword"
						required autocomplete="new-password"
						placeholder="Confirm Password"> <span id="password-error"></span>
				</div>
				<div class="form-group">
					<label for="security-answer">Preffered Language</label> <select
						id="language" name="language" required
						style="width: 100%;
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
						<option value="english">English</option>
						<option value="hindi">Hindi</option>

					</select>
				</div>
				<div class="form-group">
					<label for="security-question">Security Question</label> <select
						id="security-question" name="securityQuestion" required
						style="width: 100%;
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
						<option value="favorite_pet">What is your favorite pet?</option>
						<option value="mother_maiden">What is your mother's
							maiden name?</option>
						<option value="first_school_name">What was the name of
							your first school?</option>
						<option value="childhood_hero">Who was your Childhood
							hero?</option>
						<option value="favourite_past">What is your favorite
							past-time?</option>
						<option value="favourite_team">What is your all time
							favorite sports team?</option>
						<option value="father_maiden">What is your fathers middle
							name?</option>
						<option value="car_bike">What make was your first car or
							bike?</option>
						<option value="meet_spouse">Where did you first meet your
							spouse?</option>
					</select>
				</div>
				<div class="form-group">
					<label for="security-answer">Security Answer</label> <input
						type="text" id="security-answer" name="securityAnswer" required
						autocomplete="off">
				</div>
				<div class="form-group"
					style="display: flex; width: 100%; align-items: center; justify-content: space-around;">
					<button type="submit" style="width: 40%;">Next</button>
					<a href="login.jsp" style="color: black;">Login?</a>
				</div>
			</form>
		</div>

		<div class="form-img"
			style="display: flex; flex-direction: column; align-items: center; ">
			<img style="height: 10vh; width: 30%;"  alt="" src="img/booking_logo.png">
			<img style="height: 80vh; width: 100%; box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1); border-radius: 400px"  alt="" src="img/basic_bg.png">
		</div>
	</div>
</body>
</html>
