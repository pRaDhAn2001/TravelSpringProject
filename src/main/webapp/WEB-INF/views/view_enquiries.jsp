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
  <title>View Enquiries</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #333; /* Dark background */
      color: #fff; /* Light text */
      margin: 20px;
    }

    h2 {
      color: orange; 
      text-align: center;
      margin-bottom: 20px;
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
      background-color: #007bff; /* Blue header */
      color: white;
    }

    tr:hover {
      background-color: #555; /* Darker hover */
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
  <h2>Enquiry List</h2>

  <table>
    <thead>
      <tr>
        <th>Enquiry ID</th>
        <th>Package name</th>
        <th>Name</th>
        <th>Email</th>
        <th>Mobile Number</th>
        <th>Message</th>
        <th>Date</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="enquiry" items="${enquiries}">
        <tr>
          <td>${enquiry.id}</td>
          <td>${enquiry.travelPackage.name}</td>
          <td>${enquiry.name}</td>
          <td>${enquiry.email}</td>
          <td>${enquiry.mobileNumber}</td>
          <td>${enquiry.message}</td>
          <td>${enquiry.dateCreated}</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>

  <div style="text-align: center; margin-top: 20px;">
    <a href="${pageContext.request.contextPath}/admin_dashboard">Back to Admin Dashboard</a>
  </div>
</body>
</html>
