<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0); // Proxies.
%>

<!DOCTYPE html>



<html>



<head>

 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

 

 <title>User Dashboard</title>



 <style>



  body, html {



   height: 100%;



   margin: 0;



   font-family: Arial, sans-serif;



   color: #fff;



  }



  .dashboard-container {



   position: relative;



   z-index: 1;



   width: 100%;



   height: 100%;



   display: flex;



   flex-direction: column;



   justify-content: center;



   align-items: center;



   text-align: center;



   background-image: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url("https://iso.500px.com/wp-content/uploads/2015/08/travel_cover-1500x1000.jpeg");



   padding: 20px;



  }



  .welcome-message {



   font-size: 2em;



   margin-bottom: 30px;



  }



  .dashboard-options {



   display: flex;



   flex-direction: column;



   gap: 20px;



  }



  .dashboard-options a {



   background-color: #28a745;



   color: white;



   padding: 15px 30px;



   text-decoration: none;



   border-radius: 5px;



   font-size: 1.2em;



   transition: background-color 0.3s ease;



  }



  .dashboard-options a:hover {



   background-color: #218838;



  }



  .header, .footer {



   position: fixed;



   width: 100%;



   padding: 10px 0;



   text-align: center;



   font-size: 1.5em;

   

   box-shadow: 0 3px 4px rgba(0, 0, 0, 0.5);



   z-index: 10;



  }



  .header {



   top: 0;



   display: flex;



   justify-content: space-between;



   align-items: center;

   

   padding: 0px;

   

   background: rgba(250, 250, 250, 0.4);



  }

  

  .header .user {

  

  color: black;

  

  font-family: sans-serif;

  

  font-size: 30px;

  

  font-weight: bold;

  

  }



  .header img {



   height: 80px;

   

   width: 100px;



   margin-left: 20px;



  }



  .header .logout {



   margin-right: 30px;



   background: transparent;



   color: #fff;



   padding: 10px 20px;



   text-decoration: none;



   border-radius: 35px;

   

   border: 2px solid #000;



   font-size: 15px;



   transition: background-color 0.3s ease;

   

   outline: none !important;



  }



  .header .logout:hover {



   background-color: #c82333;



  }



  .footer {



   bottom: 0;



   font-size: 1em;

   

   background: rgba(0, 0, 0, 0.7);



  }



  .footer a {



   color: #28a745;



   text-decoration: none;



  }



  .footer a:hover {



   text-decoration: underline;



  }



  .personal-details {



   position: absolute;



   top: 100px;



   right: 20px;



   background-color: #007bff;



   color: white;



   padding: 10px 16px;



   text-decoration: none;



   border-radius: 5px;



   font-size: 1em;



   transition: background-color 0.3s ease;

   

   position: fixed;



  }



  .personal-details:hover {



   background-color: #0056b3;



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



 <div class="header">



  <img src="https://static.wixstatic.com/media/2f893f_8485abf42c324b11818c30307f1d0934~mv2.png/v1/crop/x_0,y_7,w_500,h_486/fill/w_303,h_294,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/Bhraman%20logo.png" alt="Logo">



  <div class="user">User Dashboard</div>



    <a href="/logout" class="logout">

      <i class="fas fa-sign-out-alt"></i> Logout

    </a>



 </div>



 <div class="dashboard-container">



  <a href="/viewDetails" class="personal-details">View/Update Personal Details</a>



  <div class="welcome-message">Welcome to Your Dashboard, ${sessionScope.username}</div>



  <div class="dashboard-options">



   <a href="/viewBookings">View Your Bookings</a>



   <a href="/addBooking">Add New Booking</a>



   <a href="/packages">View All Packages</a>



   <a href="/enquiry">Raise an Enquiry</a>



  </div>



 </div>



 <div class="footer">



  &copy; 2024 Bharaman. All rights reserved.



 </div>



</body>



</html>

