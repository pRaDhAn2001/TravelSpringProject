<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #121212;
            color: #ffffff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            min-height: 100vh;
        }

        .signup-container {
            width: 100%;
            max-width: 500px;
            padding: 20px;
            background-color: #1e1e1e;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2), 0 6px 20px rgba(0, 0, 0, 0.19);
            border-radius: 10px;
            margin-top: 20px;
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s;
            overflow: hidden;
        }

        .signup-container:hover {
            transform: scale(1.02);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.4), 0 12px 40px rgba(0, 0, 0, 0.38);
        }

		 .signup-container img {
			width: 120px;
			float: inherit;
		}
		
        .signup-container h2 {
            margin-bottom: 20px;
            color: #ffffff;
        }

        .signup-container form {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }

        .signup-container label {
            margin-bottom: 5px;
            color: #aaaaaa;
            font-size: 14px;
            text-align: left;
            width: 100%;
        }

        .signup-container input, .signup-container select {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #333333;
            border-radius: 4px;
            background-color: #333333;
            color: #ffffff;
            font-size: 14px;
            width: calc(100% - 1px); 
            box-sizing: border-box; 
        }

        .signup-container input[type="radio"] {
            margin-right: 5px;
            transform: translateY(2px);
        }

        .radio-label {
            display: inline-flex;
            align-items: center;
            margin-right: 15px;
            color: #aaaaaa;
        }

        .radio-group {
            display: flex;
            flex-direction: row;
            justify-content: flex-start;
            margin-bottom: 15px;
            width: 100%;
        }

        .signup-container button {
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease, transform 0.3s;
            width: 100%;
        }

        .signup-container button:hover {
            background-color: #218838;
            transform: scale(1.05);
        }

        .error-message {
            color: red;
            text-align: center;
            margin-bottom: 20px;
        }

        .signup-container a {
            display: block;
            color: #007bff;
            margin-top: 10px;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .signup-container a:hover {
            color: #0056b3;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="signup-container">
     <img src="https://static.wixstatic.com/media/2f893f_8485abf42c324b11818c30307f1d0934~mv2.png/v1/crop/x_0,y_7,w_500,h_486/fill/w_303,h_294,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/Bhraman%20logo.png">
    
        <h2>Sign Up</h2>
        <form action="/processSignUp" method="post">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" required>

            <label for="gender">Gender</label>
            <select name="gender" id="gender">
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Transgender">Transgender</option>
            </select>

            <label for="mobileNumber">Mobile Number</label>
            <input type="number" id="mobileNumber" name="mobileNumber" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>

            <label for="age">Age</label>
            <input type="number" id="age" name="age" required>

            <label for="address">Address (Place of Residence)</label>
            <input type="text" id="address" name="address" required>

            <label>Preference</label>
            <div class="radio-group">
                <label class="radio-label">
                    <input type="radio" id="budget" name="preference" value="Budget Friendly" required>
                    Budget Friendly
                </label>
                <label class="radio-label">
                    <input type="radio" id="moderate" name="preference" value="Moderate">
                    Moderate
                </label>
                <label class="radio-label">
                    <input type="radio" id="luxurious" name="preference" value="Luxurious">
                    Luxurious
                </label>
            </div>

            <label for="username">Username</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>

            <label for="confirmPassword">Confirm Password</label>
            <input type="password" id="confirmPassword" name="confirmPassword" required>

            <button type="submit">Sign Up</button>
        </form>
        <c:if test="${not empty error}">
            <p class="error-message">${error}</p>
        </c:if>
        <a href="/login">Already have an account? Login</a>
    </div>
</body>
</html>
