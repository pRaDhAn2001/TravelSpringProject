<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
  <title>Update Booking</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #333; /* Dark background */
      color: #fff; /* Light text */
      margin: 20px;
    }

    .container {
      max-width: 600px;
      margin: auto;
      padding: 20px;
      border: 1px solid #ccc;
      border-radius: 10px;
    }

    h1 {
      color: olive;
      text-align: center;
      margin-bottom: 20px;
    }

    .form-group {
      margin-bottom: 15px;
    }

    label {
      display: block;
      margin-bottom: 5px;
      color: #fff; /* White text */
    }

    input[type="text"],
    input[type="number"],
    input[type="date"],
    input[type="email"] {
      width: 100%;
      padding: 8px;
      box-sizing: border-box;
    }

    input[readonly] {
      background-color: #f0f0f0;
      border: none;
      pointer-events: none !important;
    }

    button {
      padding: 10px 20px;
      background-color: #007bff; /* Blue button */
      border: none;
      color: white;
      cursor: pointer;
    }

    button:hover {
      background-color: #0056b3; /* Darker blue on hover */
    }

    .back-link {
      display: inline-block;
      margin-top: 20px;
      color: #fff; /* White text */
    }

    .back-link:hover {
      text-decoration: underline;
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

    // Prevent back navigation
    history.pushState(null, null, location.href);
    window.onpopstate = function () {
      history.go(1);
    };
  </script>
</head>

<body>
  <div class="container">
    <h1>Update Booking</h1>

    <c:if test="${not empty error}">
      <div class="alert">${error}</div>
    </c:if>

    <form:form action="${pageContext.request.contextPath}/updateBooking" method="post" modelAttribute="booking">
      <form:hidden path="id"/>

      <div class="form-group">
        <label for="userId">User ID:</label>
        <form:input path="user.id" id="userId" readonly="readonly"/>
      </div>

      <div class="form-group">
        <label for="name">Name:</label>
        <form:input path="name" id="name" readonly="readonly"/>
      </div>

      <div class="form-group">
        <label for="age">Age:</label>
        <form:input path="age" id="age" readonly="readonly"/>
      </div>

      <div class="form-group">
        <label for="mobileNumber">Mobile Number:</label>
        <form:input path="mobileNumber" id="mobileNumber" readonly="readonly"/>
      </div>

      <div class="form-group">
        <label for="email">Email:</label>
        <form:input path="email" id="email" readonly="readonly"/>
      </div>

      <div class="form-group">
        <label for="address">Address:</label>
        <form:input path="address" id="address" readonly="readonly"/>
      </div>

      <div class="form-group">
        <label for="numberOfAdults">Number of Adults:</label>
        <form:input path="numberOfAdults" id="numberOfAdults" type="number"/>
      </div>

      <div class="form-group">
        <label for="numberOfChildren">Number of Children:</label>
        <form:input path="numberOfChildren" id="numberOfChildren" type="number"/>
      </div>

      <div class="form-group">
        <label for="travelDate">Travel Date:</label>
        <form:input path="travelDate" id="travelDate" type="date"/>
      </div>

      <div class="form-group">
        <label for="travelPackage">Package ID:</label>
        <form:input path="travelPackage.id" id="travelPackage" readonly="readonly"/>
      </div>

      <button type="submit" onclick="return confirm('Do you want to update this booking?');">Update</button>
    </form:form>

    <a href="${pageContext.request.contextPath}/viewAllBookings" class="back-link">Back to All Bookings</a>
  </div>
</body>
</html>
