<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0); // Proxies.
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add New User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #333;
            color: #fff;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #555;
            border: 1px solid #777;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.5);
        }

        .container h2 {
            text-align: center;
            color: orange;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #fff;
        }

        input[type="text"],
        input[type="number"],
        input[type="email"],
        input[type="password"],
        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #777;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 14px;
            background-color: #444;
            color: #fff;
        }

        input[type="radio"] {
            margin-right: 10px;
        }

        button {
            padding: 10px 20px;
            background-color: #007bff;
            border: none;
            color: white;
            cursor: pointer;
            border-radius: 5px;
            font-size: 14px;
        }

        button:hover {
            background-color: #0056b3;
        }

        .error {
            color: red;
        }
    </style>
    <script type="text/javascript">
        // Prevent back navigation
        history.pushState(null, null, location.href);
        window.onpopstate = function () {
            history.go(1);
        };
    </script>
</head>
<body>
    <div class="container">
        <h2>Add New User</h2>
        <form:form method="post" modelAttribute="user" action="${pageContext.request.contextPath}/addNewUser">
            <div class="form-group">
                <label for="name">Name:</label>
                <form:input path="name" id="name" required="true"/>
            </div>
            <div class="form-group">
                <label for="age">Age:</label>
                <form:input path="age" id="age" type="number" required="true"/>
            </div>
            <div class="form-group">
                <label for="address">Address:</label>
                <form:input path="address" id="address" required="true"/>
            </div>
            <div class="form-group">
                <label for="mobileNumber">Mobile Number:</label>
                <form:input path="mobileNumber" id="mobileNumber" type="number" required="true"/>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <form:input path="email" id="email" type="email" required="true"/>
            </div>
            <div class="form-group">
                <label>Preference:</label><br>
                <form:radiobutton path="preference" value="Budget-friendly"/> Budget-friendly
                <form:radiobutton path="preference" value="Moderate"/> Moderate
                <form:radiobutton path="preference" value="Luxurious"/> Luxurious
            </div>
            <div class="form-group">
                <label for="gender">Gender:</label>
                <form:select path="gender" id="gender">
                    <form:option value="Male">Male</form:option>
                    <form:option value="Female">Female</form:option>
                    <form:option value="Transgender">Transgender</form:option>
                </form:select>
            </div>
            <div class="form-group">
                <label for="username">Username:</label>
                <form:input path="username" id="username" required="true"/>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <form:password path="password" id="password" required="true"/>
            </div>
            <div class="form-group">
                <label for="confirmPassword">Confirm Password:</label>
                <form:password path="confirmPassword" id="confirmPassword" required="true"/>
                <div class="error"><form:errors path="confirmPassword"/></div>
            </div>
            <button type="submit">Add User</button>
        </form:form>
    </div>
</body>
</html>
