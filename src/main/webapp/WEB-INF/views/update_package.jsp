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
  <title>Update Package</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <style>
    body {
      background-color: #333; /* Dark background */
      font-family: Arial, sans-serif;
      color: #fff; /* Light text */
      margin: 0;
      padding: 0;
    }

    .container {
      margin-top: 50px;
      max-width: 600px;
      background: #fff;
      padding: 30px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      border-radius: 8px;
    }

    h2 {
      margin-bottom: 20px;
      color: olive;
      text-align: center;
    }

    label {
      font-weight: bold;
      color: #555;
    }

    .form-group {
      margin-bottom: 15px;
    }

    .form-control {
      height: 40px;
      padding: 10px;
      font-size: 14px;
      border-radius: 5px;
      border: 1px solid #ccc;
      background-color: #f2f2f2; /* Light gray background */
      color: #333; /* Dark text */
    }

    .form-control:focus {
      border-color: #007bff; /* Blue outline on focus */
      box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
    }

    .btn-primary {
      background-color: #007bff; /* Blue button */
      border-color: #007bff;
      padding: 10px 20px;
      font-size: 16px;
      border-radius: 5px;
    }

    .btn-primary:hover {
      background-color: #0056b3; /* Darker blue on hover */
      border-color: #0056b3;
    }

    .back-link {
      display: block;
      margin-top: 20px;
      text-align: center;
      color: #007bff;
      text-decoration: none;
    }

    .back-link:hover {
      text-decoration: underline;
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
  <h2>Update Package</h2>

  <form:form method="post" modelAttribute="pkg" action="${pageContext.request.contextPath}/updatePackage">
    <form:hidden path="id"/>

    <div class="form-group">
      <label for="name">Package Name:</label>
      <form:input path="name" id="name" class="form-control" required="true"/>
    </div>

    <div class="form-group">
      <label for="price">Price:</label>
      <form:input path="price" id="price" type="number" step="0.01" class="form-control" required="true"/>
    </div>

    <div class="form-group">
      <label for="description">Description:</label>
      <form:textarea path="description" id="description" class="form-control" rows="4" required="true"/>
    </div>

    <div class="form-group">
      <label for="ratings">Ratings:</label>
      <form:input path="ratings" id="ratings" type="number" step="0.1" class="form-control" required="true"/>
    </div>

    <div>
      <button type="submit" class="btn btn-primary">Update Package</button>
    </div>
  </form:form>

  <a href="${pageContext.request.contextPath}/packages" class="back-link">Back to Package List</a>
</div>
</body>
</html>
