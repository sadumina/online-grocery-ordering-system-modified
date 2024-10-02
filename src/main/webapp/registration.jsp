<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="assets/css/signup.css">
<title>Smart cart</title>

<style>
        .error-message {
            color: red;
            font-size: 12px;
            margin-top: 5px;
        }
    </style>

<!--  <script>
        function validatePhoneNumber() {
            var phoneNumber = document.getElementById("pnum").value;
            var cleanedPhoneNumber = phoneNumber.replace(/\D/g, '');

            if (cleanedPhoneNumber.length !== 9) {
                alert("Please enter a 10-digit phone number.");
                return false;
            }

            if (!/^\d+$/.test(cleanedPhoneNumber)) {
                alert("Please enter a valid phone number.");
                return false;
            }

            alert("Phone number is valid.");
            return true;
        }

        function validateAge() {
            var age = parseInt(document.getElementById("age").value);
            var errorMessage = document.getElementById("age-error");

            if (isNaN(age)) {
                errorMessage.innerText = "Please enter a valid age.";
                return false;
            }

            if (age < 20 || age > 50) {
                errorMessage.innerText = "Age must be between 20 and 50.";
                return false;
            }

           // errorMessage.innerText = ""; // Clear error message if age is valid
           // alert("Age is valid.");
            //return true;
        }
    </script>
    -->
</head>
<body>
     
    <div class="container">
        <form action="insert" method="post" onsubmit="return validatePhoneNumber() & validateAge()">

            <h2>Registration</h2>
            <div class="content">
                <div class="input-box">
                    <label for="name">First Name</label>
                    <input type="text" placeholder="Enter the first name" name="fname" required>
                </div>
                <div class="input-box">
                    <label for="Address">Last Name</label>
                    <input type="text" placeholder="Enter the last name" name="lname" required>
                </div>
                <div class="input-box">
                    <label for="Email">Email</label>
                    <input type="email" placeholder="Enter the email" name="email" required>
                </div>
                <div class="input-box" >
                    <label for="phone Number">Phone Number</label>
                    <input type="text" placeholder="Enter your Phone Number" id="pnum" name="pnum" required>
                </div>
                
                <div class="input-box">
                    <label for="Password">Password</label>
                    <input type="text" placeholder="Enter the Password" id="password" name="pwd" required>
                    <div class="error-message" id="age-error"></div>
                </div>

            </div>
            <div class="alert">
                <p>You have to accept <a href="#">terms and conditions</a></p>
            </div>
            <div class="button-container">
                <button type="submit" name="insert" ><a href="success.jsp">Register</a></button>
            </div>
        </form>
    </div>
</body>
</html>