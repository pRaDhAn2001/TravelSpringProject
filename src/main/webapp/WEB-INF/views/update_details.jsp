<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0); // Proxies.
%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Update Personal Details</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #333; /* Dark background */
      color: #fff; /* Light text */
      margin: 0;
      padding: 0;
    }

    .container {
      max-width: 800px;
      margin: 50px auto;
      background: #fff;
      padding: 20px 40px 30px 40px;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    h2 {
      color: olive;
      text-align: center;
      margin-bottom: 20px;
    }

    form {
      display: flex;
      flex-direction: column;
    }

    label {
      margin-bottom: 10px;
      font-weight: bold;
      color: #555;
    }

    input[type="text"],
    input[type="number"],
    input[type="email"],
    input[type="submit"] {
      padding: 10px;
      margin-bottom: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 16px;
      width: 100%;
      background-color: #f2f2f2; /* Light gray background for input fields */
      color: #333; /* Dark text color */
    }

    input[type="submit"] {
      background-color: #007bff; /* Blue button */
      color: white;
      border: none;
      cursor: pointer;
      font-size: 18px;
      transition: background-color 0.3s;
    }

    input[type="submit"]:hover {
      background-color: #0056b3; /* Darker blue on hover */
    }

    input:focus {
      border-color: #007bff; /* Blue outline on focus */
      outline: none;
    }

    .button {
      background-color: #007bff; /* Blue button */
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      text-decoration: none;
      font-size: 18px;
      display: block;
      text-align: center;
      margin-top: 20px;
    }

    .button:hover {
      background-color: #0056b3; /* Darker blue on hover */
    }
  </style>

  <script>
    function showSuccessAlert() {
      alert('Personal Details updated successfully!');
    }
  </script>

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
    <h2>Update Personal Details</h2>

    <form action="/updateDetails" method="post" onsubmit="showSuccessAlert()">
      <label for="name">Name:</label>
      <input type="text" id="name" name="name" value="${user.name}" required>

      <label for="age">Age:</label>
      <input type="number" id="age" name="age" value="${user.age}" required>

      <label for="mobileNumber">Mobile Number:</label>
      <input type="number" id="mobileNumber" name="mobileNumber" value="${user.mobileNumber}" required>

      <label for="email">Email:</label>
      <input type="email" id="email" name="email" value="${user.email}" required>

      <label for="address">Address:</label>
      <input type="text" id="address" name="address" value="${user.address}" required>

      <input type="submit" value="Save Details">
    </form>

    <a href="/user_dashboard" class="button">Back to Dashboard</a>
  </div>
</body>
</html>
