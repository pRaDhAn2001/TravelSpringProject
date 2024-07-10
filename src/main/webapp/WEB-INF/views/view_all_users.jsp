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
    <title>View All Users</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #121212;
            color: #ffffff;
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
            border-bottom: 1px solid #333;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        tr:hover {
            background-color: #1e1e1e;
        }

        a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 10px;
        }

        a:hover {
            background-color: #0056b3;
        }

        .action-buttons a.delete {
            background-color: #dc3545;
        }

        .action-buttons a.delete:hover {
            background-color: #c82333;
        }

        .btn-container {
            display: flex;
            justify-content: center;
            margin-top: 20px;
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
    <h2>All Registered Users</h2>
    <table>
        <thead>
            <tr>
                <th>User ID</th>
                <th>Name</th>
                <th>Age</th>
                <th>Gender</th>
                <th>Email</th>
                <th>Mobile Number</th>
                <th>Address</th>
                <th>Preference</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.name}</td>
                    <td>${user.age}</td>
                    <td>${user.gender}</td>
                    <td>${user.email}</td>
                    <td>${user.mobileNumber}</td>
                    <td>${user.address}</td>
                    <td>${user.preference}</td>
                    <td class="action-buttons">
                        <a href="${pageContext.request.contextPath}/updateUser?id=${user.id}">Update</a>
                        <a href="${pageContext.request.contextPath}/deleteUser?id=${user.id}" class="delete" onclick="return confirm('Are you sure you want to delete this user?');">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <div class="btn-container">
        <a href="${pageContext.request.contextPath}/admin_dashboard">Back to Admin Dashboard</a>
    </div>
</body>
</html>
