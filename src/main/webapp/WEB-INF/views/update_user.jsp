<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0); // Proxies.
%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Update User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #333; /* Dark background */
            color: #fff; /* Light text */
            margin: 20px;
            padding: 0;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h2 {
            color: olive;
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            color: #555; /* Darker gray text for labels */
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="number"],
        select {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="radio"] {
            margin-right: 5px;
            transform: translateY(2px);
        }

        label.radio-label {
            display: inline-flex;
            align-items: center;
            margin-right: 15px;
        }

        input[type="submit"] {
            background-color: #007bff; /* Blue button */
            color: white;
            border: none;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f2f2f2; /* Light gray background */
            color: #333; /* Dark text */
        }

        .btn-container {
            text-align: center;
            margin-top: 20px;
        }

        .btn-container a {
            color: #007bff; /* Blue link */
            text-decoration: none;
        }

        .btn-container a:hover {
            text-decoration: underline; /* Underline on hover */
        }
    </style>

    <script type="text/javascript">
        // Prevent back navigation
        history.pushState(null, null, location.href);
        window.onpopstate = function () {
            history.go(1);
        };

        function showAlert() {
            alert("Updated User Details Successfully");
        }
    </script>
</head>
<body>
<h2>Update User</h2>
<form action="${pageContext.request.contextPath}/updateUser" method="post" onsubmit="showAlert()">
    <input type="hidden" name="id" value="${user.id}">
    <label for="name">Name:</label><br>
    <input type="text" id="name" name="name" value="${user.name}" readonly><br>

    <label for="age">Age:</label><br>
    <input type="number" id="age" name="age" value="${user.age}" required><br>

    <label for="gender">Gender:</label><br>
    <select name="gender" id="gender">
        <option value="Male">Male</option>
        <option value="Female">Female</option>
        <option value="Transgender">Transgender</option>
    </select><br>

    <label for="email">Email:</label><br>
    <input type="email" id="email" name="email" value="${user.email}" required><br>

    <label for="mobileNumber">Mobile Number:</label><br>
    <input type="number" id="mobileNumber" name="mobileNumber" value="${user.mobileNumber}" required><br>

    <label for="address">Address (Place of Residence):</label><br>
    <input type="text" id="address" name="address" value="${user.address}" required><br>

    <label>Preference:</label><br>
    <div class="radio-label">
        <input type="radio" id="budget" name="preference" value="Budget Friendly" required>
        <label for="budget" class="radio-label">Budget Friendly</label>
    </div>
    <div class="radio-label">
        <input type="radio" id="moderate" name="preference" value="Moderate">
        <label for="moderate" class="radio-label">Moderate</label>
    </div>
    <div class="radio-label">
        <input type="radio" id="luxurious" name="preference" value="Luxurious">
        <label for="luxurious" class="radio-label">Luxurious</label>
    </div><br>

    <input type="submit" value="Update">
</form>

<div class="btn-container">
    <a href="${pageContext.request.contextPath}/viewAllUsers">Back to View All Users</a>
</div>

</body>
</html>
