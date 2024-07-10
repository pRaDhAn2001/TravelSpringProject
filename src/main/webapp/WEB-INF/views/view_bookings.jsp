<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0); // Proxies.
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>View My Bookings</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #333; /* Dark background */
      color: #fff; /* Light text */
      margin: 0;
      padding: 20px;
    }

    h2 {
      color: orange;
      text-align: center;
      margin-bottom: 10px;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }

    th, td {
      padding: 10px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }

    th {
      background-color: #444; /* Darker background for header */
      color: #fff; /* White text */
    }

    tr:hover {
      background-color: #555; /* Darker background on hover */
    }

    a {
      display: inline-block;
      padding: 10px 20px;
      background-color: #007bff; /* Blue button */
      color: white;
      text-decoration: none;
      border-radius: 5px;
      margin-top: 10px;
    }

    a:hover {
      background-color: #0056b3; /* Darker blue on hover */
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
  <h2>My Bookings</h2>
  <table>
    <thead>
      <tr>
        <th>Booking ID</th>
        <th>Package Name</th>
        <th>Travel Date</th>
        <th>Number of Adults</th>
        <th>Number of Children</th>
        <th>Total Price</th>
        <th>ID Proof</th>
      </tr>
    </thead>
    <tbody>
      <!-- Iterate over bookings stored in session attribute -->
      <c:forEach var="booking" items="${bookings}">
        <tr>
          <td>${booking.id}</td>
          <td>${booking.travelPackage.name}</td>
          <td>${booking.travelDate}</td>
          <td>${booking.numberOfAdults}</td>
          <td>${booking.numberOfChildren}</td>
          <td>${booking.totalPrice}</td>
          <td><a href="/uploads/${booking.idProofPath}" target="_blank">View</a></td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
  <a href="/user_dashboard" class="button">Back to Dashboard</a>
</body>
</html>
