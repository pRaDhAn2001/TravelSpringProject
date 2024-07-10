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
  <title>View Personal Details</title>
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
      background: #444; /* Darker background */
      padding: 20px 40px 30px 40px;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    h2 {
      color: teal;
      text-align: center;
      margin-bottom: 20px;
    }

    .details {
      margin-bottom: 20px;
    }

    label {
      font-weight: bold;
      color: #ccc; /* Lighter gray text */
    }

    .actions {
      display: flex;
      justify-content: space-between;
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
    }

    .button:hover {
      background-color: #0056b3; /* Darker blue on hover */
    }

    .details p {
      margin: 10px 0;
    }
  </style>
  
  <script type="text/javascript">
    if (window.history.replaceState) {
      window.history.replaceState(null, null, window.location.href);
    }

    window.onload = function() {
      if (window.history && window.history.pushState) {
        window.history.pushState(null, null, window.location.href);
        window.onpopstate = function() {
          window.history.pushState(null, null, window.location.href);
        };
      }
    };
  </script>
</head>
<body>
  <div class="container">
    <h2>Personal Details</h2>
    <div class="details">
      <p><label>Name:</label> ${user.name}</p>
      <p><label>Age:</label> ${user.age}</p>
      <p><label>Mobile Number:</label> ${user.mobileNumber}</p>
      <p><label>Email:</label> ${user.email}</p>
      <p><label>Address:</label> ${user.address}</p>
    </div>
    <div class="actions">
      <a href="/user_dashboard" class="button">Back to Dashboard</a>
      <a href="/updateDetailsForm" class="button">Update Details</a>
    </div>
  </div>
</body>
</html>
