<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0); // Proxies.
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Booking</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #121212;
            color: #ffffff;
            margin: 20px;
        }

        h2 {
            color: orange;
            text-align: center;
        }

        form {
            width: 100%; /* Adjusted width to make it responsive */
            max-width: 700px; /* Added max-width for responsiveness */
            margin: 0 auto;
            padding: 20px;
            background-color: #1e1e1e;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #ffffff;
        }

        .form-group input[type="text"], .form-group input[type="number"], .form-group input[type="date"], .form-group input[type="file"], .form-group select, .form-group textarea {
            width: calc(100% - 1px); /* Adjusted width with padding consideration */
            padding: 10px;
            border: 1px solid #dddddd;
            border-radius: 5px;
            background-color: #ffffff;
            color: #333333;
            font-size: 14px;
            box-sizing: border-box; /* Ensures padding is included in width calculation */
        }

        .form-group button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-size: 16px;
        }

        .form-group button:hover {
            background-color: #0056b3;
        }
    </style>
    <script>
    window.onload = function() {
      var dateInput = document.getElementById('travelDate');
      var today = new Date();
      var minDate = new Date(today);
      minDate.setDate(minDate.getDate() + 30);
      var maxDate = new Date(today);
      maxDate.setMonth(maxDate.getMonth() + 6);
      var minDateString = minDate.toISOString().split('T')[0];
      var maxDateString = maxDate.toISOString().split('T')[0];
      dateInput.min = minDateString;
      dateInput.max = maxDateString;
    };
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
    <h2>Add New Booking</h2>
    <form:form method="POST" action="/addBookingAdmin" modelAttribute="booking" enctype="multipart/form-data">
        <div class="form-group">
            <label for="userId">User ID:</label>
            <form:input path="user.id" id="userId" required="true"/>
        </div>
        <div class="form-group">
            <label for="packageId">Package ID:</label>
            <form:input path="travelPackage.id" id="packageId" required="true"/>
        </div>
        <div class="form-group">
            <label for="numberOfAdults">Number of Adults:</label>
            <form:input path="numberOfAdults" id="numberOfAdults" type="number" required="true"/>
        </div>
        <div class="form-group">
            <label for="numberOfChildren">Number of Children:</label>
            <form:input path="numberOfChildren" id="numberOfChildren" type="number" required="true"/>
        </div>
        <div class="form-group">
            <label for="travelDate">Travel Date:</label>
            <form:input path="travelDate" id="travelDate" type="date" required="true"/>
        </div>
        <div class="form-group">
            <label for="idProof">ID Proof:</label>
            <form:input path="idProof" id="idProof" type="file" accept=".pdf,.doc,.docx" required="true"/>
        </div>
        <div class="form-group">
            <button type="submit">Add Booking</button>
        </div>
    </form:form>
</body>
</html>
