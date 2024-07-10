<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0); // Proxies.
%>

<html>



<head>



  <title>Book Package</title>

  

   <script type="text/javascript">

    // Prevent back navigation

    history.pushState(null, null, location.href);

    window.onpopstate = function () {

      history.go(1);

    };

  </script>



</head>



<body>



  <h2>Book Package: ${travelPackage.name}</h2>



  <form action="/bookpackage?packageId=${travelPackage.id}&userId=${user.id}" method="post">



    <input type="hidden" name="travelPackage.id" value="${travelPackage.id}">



    <input type="hidden" name="user.id" value="${user.id}">



    <input type="text" name="name" placeholder="Name" required><br>



    <input type="number" name="age" placeholder="Age" required><br>



    <input type="text" name="mobileNumber" placeholder="Mobile Number" required><br>



    <input type="email" name="email" placeholder="Email" required><br>



    <input type="text" name="address" placeholder="Address" required><br>



    <input type="number" name="numberOfAdults" placeholder="Number of Adults" required><br>



    <input type="number" name="numberOfChildren" placeholder="Number of Children" required><br>



    <input type="date" name="travelDate" placeholder="Travel Date" required><br>



    <button type="submit">Book</button>



  </form>



</body>



</html>

