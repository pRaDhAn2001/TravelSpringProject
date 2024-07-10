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
    <meta charset="UTF-8">
    <title>Available Packages</title>
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
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #1e1e1e;
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #333;
            color: #ffffff;
        }

        th {
            background-color: #333;
        }

        tr:hover {
            background-color: #333;
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
        
        a.delete {
            background-color: #dc3545;
        }

        a.delete:hover {
            background-color: #c82333;
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
    <h2>Available Packages</h2>
    <table>
        <thead>
            <tr>
                <th>Package ID</th>
                <th>Package Name</th>
                <th>Price</th>
                <th>Description</th>
                <th>Ratings</th>
                <c:choose>
                    <c:when test="${sessionScope.username == 'admin'}">
                        <th>Actions</th>
                    </c:when>
                </c:choose>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="pkg" items="${packages}">
                <tr>
                    <td>${pkg.id}</td>
                    <td>${pkg.name}</td>
                    <td>${pkg.price}</td>
                    <td>${pkg.description}</td>
                    <td>${pkg.ratings}</td>
                    <c:choose>
                        <c:when test="${sessionScope.username == 'admin'}">
                            <td>
                                <a href="${pageContext.request.contextPath}/updatePackage/${pkg.id}">Update</a> |
                                <a href="${pageContext.request.contextPath}/deletePackage/${pkg.id}" class="delete" onclick="return confirm('Are you sure you want to delete this package?');">Delete</a>
                            </td>
                        </c:when>
                    </c:choose>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <c:choose>
        <c:when test="${sessionScope.username == 'admin'}">
            <a href="${pageContext.request.contextPath}/admin_dashboard">Back to Admin Dashboard</a>
        </c:when>
        <c:otherwise>
            <a href="${pageContext.request.contextPath}/user_dashboard">Back to User Dashboard</a>
        </c:otherwise>
    </c:choose>
</body>
</html>
