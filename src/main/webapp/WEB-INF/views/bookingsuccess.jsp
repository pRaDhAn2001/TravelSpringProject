<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0); // Proxies.
%>

<!DOCTYPE html>



<html>



<head>



  <title>Booking Success</title>



  <style>



    body {



      font-family: Arial, sans-serif;



      background-color: #f4f4f4;



      margin: 0;



      padding: 0;



      display: flex;



      justify-content: center;



      align-items: center;



      height: 100vh;



    }



    .success-container {



      background-color: #fff;



      padding: 20px;



      border-radius: 10px;



      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);



      width: 400px;



      text-align: center;



    }



    .success-container h2 {



      margin-bottom: 20px;



      color: #333;



    }



    .success-container p {



      margin-bottom: 20px;



      color: #333;



    }



    .success-container .button {



      display: inline-block;



      padding: 10px 20px;



      background-color: #28a745;



      color: white;



      text-decoration: none;



      border-radius: 5px;



    }



    .success-container .button:hover {



      background-color: #218838;



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



  <div class="success-container">



    <h2>Booking Successful!</h2>



    <p>Thank you for booking with us. Here are your booking details:</p>



    <p>Package: ${booking.travelPackage.name}</p>



    <p>Name: ${booking.name}</p>



    <p>Email: ${booking.email}</p>

    

    <p>Mob. Number: ${booking.mobileNumber}</p>



    <p>Number of Adults: ${booking.numberOfAdults}</p>



    <p>Number of Children: ${booking.numberOfChildren}</p>



    <p>Total Price:Rs. ${booking.totalPrice}</p>

    

    <p>Travel Date: ${booking.travelDate}</p>

    

	<p>ID Proof: <a href="/uploads/${booking.idProofPath}" target="_blank">Download here</a></p>  

 

    <a href="/user_dashboard" class="button">Back to Dashboard</a>



  </div>



</body>



</html>





