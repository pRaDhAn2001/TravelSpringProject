<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0); // Proxies.
%>

<!DOCTYPE html>
<html>
<head>
    <title>View All Bookings</title>
    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: Arial, sans-serif;
            color: #ffffff;
            background-color: #121212;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: #1e1e1e;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2), 0 6px 20px rgba(0, 0, 0, 0.19);
            border-radius: 10px;
            overflow: hidden;
        }
        
        .container h2 {
        	color: orange;
        	text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #333333;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #333333;
            color: #ffffff;
        }

        .action-buttons {
            display: flex;
            gap: 5px;
        }

        .action-buttons a {
            padding: 8px 12px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 3px;
            transition: background-color 0.3s ease;
        }

        .action-buttons a:hover {
            background-color: #0056b3;
        }

        .action-buttons a.delete {
            background-color: #dc3545;
        }

        .action-buttons a.delete:hover {
            background-color: #c82333;
        }

        a.back-link {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }

        a.back-link:hover {
            background-color: #0056b3;
        }
    </style>

    <script type="text/javascript">
        if (window.history.replaceState) {
            window.history.replaceState(null, null, window.location.href);
        }

        window.onload = function() {
            const message = "${message}";
            if (message) {
                alert(message);
            }
        }
    </script>
</head>
<body>
    <div class="container">
        <h2>All Bookings</h2>
        <table>
            <thead>
                <tr>
                    <th>Booking ID</th>
                    <th>User ID</th>
                    <th>User Name</th>
                    <th>Package ID</th>
                    <th>Package Name</th>
                    <th>Number of Adults</th>
                    <th>Number of Children</th>
                    <th>Travel Date</th>
                    <th>Travel Price</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="booking" items="${bookings}">
                    <tr>
                        <td>${booking.id}</td>
                        <td>${booking.user.id}</td>
                        <td>${booking.user.name}</td>
                        <td>${booking.travelPackage.id}</td>
                        <td>${booking.travelPackage.name}</td>
                        <td>${booking.numberOfAdults}</td>
                        <td>${booking.numberOfChildren}</td>
                        <td>${booking.travelDate}</td>
                        <td>${booking.totalPrice}</td>
                        <td class="action-buttons">
                            <a href="/updateBooking/${booking.id}">Update</a>
                            <a href="/deleteBooking/${booking.id}" class="delete" onclick="return confirm('Are you sure you want to delete this booking?');">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <a href="${pageContext.request.contextPath}/admin_dashboard" class="back-link">Back to Dashboard</a>
</body>
</html>
