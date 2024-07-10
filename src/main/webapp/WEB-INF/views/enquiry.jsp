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
  <title>Raise an Enquiry</title>
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
    select, textarea, input[type="text"], input[type="submit"], input[type="email"], input[type="number"] {
      padding: 10px;
      margin-bottom: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 16px;
      width: 100%;
    }
    select:focus, textarea:focus, input[type="text"]:focus {
      border-color: #007bff;
      outline: none;
    }
    textarea {
      resize: vertical;
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
    .readonly {
      background-color: #e9ecef;
    }
  </style>
  <script>
    function showSuccessAlert() {
      alert('Enquiry sent successfully!');
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
    <h2>Raise an Enquiry</h2>
    <form action="/submit_enquiry" method="post" onsubmit="showSuccessAlert()">
      <label for="name">Name</label>
      <input type="text" id="name" name="name" value="${user.name}" readonly>
      
      <label for="mobile">Mobile Number</label>
      <input type="number" id="mobile" name="mobileNumber" value="${user.mobileNumber}" readonly>
      
      <label for="email">Email</label>
      <input type="email" id="email" name="email" value="${user.email}" readonly>
      
      <label for="packageId">Choose a Travel Package:</label>
      <select name="packageId" id="packageId" required>
        <option value="">Select a package</option>
        <c:forEach var="pkg" items="${packages}">
          <option value="${pkg.id}">${pkg.name}</option>
        </c:forEach>
      </select>
      
      <label for="message">Your Message:</label>
      <textarea name="message" id="message" rows="5" required></textarea>
      
      <input type="submit" value="Submit">
    </form>
  </div>
</body>
</html>
