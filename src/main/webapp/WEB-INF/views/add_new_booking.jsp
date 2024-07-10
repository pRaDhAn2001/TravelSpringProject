<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
      background-color: #333; /* Dark background */
      color: #fff; /* Light text */
      margin: 0;
      padding: 20px;
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
      color: orange;
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

    input[type="text"], input[type="date"], input[type="number"], input[type="email"], input[type="file"], input[type="submit"], select {
      padding: 10px;
      margin-bottom: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 16px;
      width: 100%;
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

    input:focus, select:focus {
      border-color: #007bff; /* Blue border on focus */
      outline: none;
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
  <div class="container">
    <h2>Add New Booking</h2>
    <form action="/addBooking" method="post" enctype="multipart/form-data">
      <label for="name">Name</label>
      <input type="text" id="name" name="name" value="${user.name}" readonly>
      
      <label for="mobile">Mobile Number</label>
      <input type="number" id="mobile" name="mobileNumber" value="${user.mobileNumber}" readonly>
      
      <label for="email">Email</label>
      <input type="email" id="email" name="email" value="${user.email}" readonly>
      
      <label for="age">Age</label>
      <input type="number" id="age" name="age" value="${user.age}" readonly>
      
      <label for="address">Address</label>
      <input type="text" id="address" name="address" value="${user.address}" readonly>
      
      <label for="packageId">Package:</label>
      <select name="packageId" id="packageId" required>
        <option value="">Select a package</option>
        <c:forEach var="pkg" items="${packages}">
          <option value="${pkg.id}">${pkg.name}</option>
        </c:forEach>
      </select>
      
      <label for="numberOfAdults">Number of Adults:</label>
      <input type="number" id="numberOfAdults" name="numberOfAdults" required>
      
      <label for="numberOfChildren">Number of Children:</label>
      <input type="number" id="numberOfChildren" name="numberOfChildren" required>
      
      <label for="travelDate">Travel Date:</label>
      <input type="date" id="travelDate" name="travelDate" required>
      
      <label for="idProof">ID Proof (PDF/DOC):</label>
      <input type="file" id="idProof" name="idProof" accept=".pdf,.doc,.docx" required>
      
      <input type="submit" value="Book Now">
    </form>
  </div>
</body>
</html>
