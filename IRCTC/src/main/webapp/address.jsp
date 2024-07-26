<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>IRCTC Next Generation eTicketing System</title>
    <link rel="stylesheet" type="text/css" href="css/registration.css">
</head>
<body>

    <div class="form-body" style="width: 100%;">
        <div class="form-container">
        <h2>Enter Address Details</h2>
            <div class="tab">
                <div>
                    <a href="basicDetails.jsp">Basic Details</a>
                </div>
                <div>
                    <a href="personalDetails.jsp">Personal Details</a>
                </div>
                <div class="active">
                    <a href="address.jsp">Address</a>
                </div>
            </div>
            <form action="address" method="post">
                <div class="form-group" style="display: flex; justify-content: space-between;">
                    <input type="text" name="floor" required autocomplete="street-address" placeholder="Floor/Door/Block No." style="width: 45%;">
                    <input type="text" name="street" required autocomplete="street-address" placeholder="Street/Lane" style="width: 45%;">
                </div>
                <div class="form-group" style="display: flex; justify-content: space-between;">
                    <input type="text" name="area" required autocomplete="street-address" placeholder="Area/locality" style="width: 45%;">
                    <input type="number" id="pinCode" name="pin" required autocomplete="street-address" placeholder="Pin Code" style="width: 45%;">
                </div>
                <div class="form-group" style="display: flex; justify-content: space-between;">
                    <input type="text" id="city" name="city" required autocomplete="street-address" placeholder="City" style="width: 45%;">
                    <input type="text" id="state" name="state" required autocomplete="street-address" placeholder="State" style="width: 45%;">
                </div>
                <div class="form-group" style="display: flex; justify-content: space-between;">
                    <input type="text" id="postOffice" name="post" required autocomplete="street-address" placeholder="Post Office" style="width: 45%;">
                    <input type="text" name="post_office" required autocomplete="street-address" placeholder="Mobile Number" style="width: 45%;">
                </div>
                Copy Residence to office Address
                <div class="form-group" style="display: flex; align-items: center;">
                    <div class="marrid" style="display: flex; align-items: center; justify-content: center;"><input type="radio" name="yes" required autocomplete="marrid" value="yes" >yes</div>
                    <div class="marrid" style="display: flex; align-items: center; justify-content: center; margin-left: 10px;"><input type="radio"  name="yes" required autocomplete="marrid" value="no" >No</div>
                </div>
                <div class="form-group" style="display: flex;">
                    <input type="checkbox" name="terms1" required autocomplete="male" value="term1" style="margin-left: -100px;">
                    <span style="margin-left: -100px;">Please inform me about Booking.com Co-branded credit card through Phone/Email/SMS (Optional)</span>
                </div>
                <div class="form-group" style="display: flex; width:100%; align-items: center; justify-content: space-around;">
                    <button type="submit" style="width: 40%;">Create Account?</button>
                    <a href="login.jsp" style="color: black;">Login?</a>
                </div>
            </form>
        </div>
        <div class="form-img"
			style="display: flex; flex-direction: column; align-items: center; ">
			<img style="height: 10vh; width: 30%;"  alt="" src="img/booking_logo.png">
			<img style="height: 80vh; width: 100%;  border-radius: 400px"  alt="" src="img/address_bg.jpg">
		</div>
    </div>
</body>
</html>
