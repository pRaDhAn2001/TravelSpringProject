<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0); // Proxies.
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Package</title>
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

        form {
            width: 50%;
            margin: 0 auto;
            padding: 20px;
            background-color: #1e1e1e;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #ffffff;
        }

        .form-group input, .form-group textarea {
            width: calc(100% - 21px); /* Adjusting width to end correctly */
            padding: 10px;
            border: 1px solid #333;
            border-radius: 5px;
            color: #333;
            background-color: #ffffff;
        }

        .form-group button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .form-group button:hover {
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
    <h2>Add New Package</h2>
    <form:form method="POST" action="${pageContext.request.contextPath}/addPackage" modelAttribute="package">
        <div class="form-group">
            <label for="name">Package Name:</label>
            <form:input path="name" id="name" required="true"/>
        </div>
        <div class="form-group">
            <label for="description">Description:</label>
            <form:textarea path="description" id="description" required="true"/>
        </div>
        <div class="form-group">
            <label for="price">Price:</label>
            <form:input path="price" id="price" type="number" step="0.01" required="true"/>
        </div>
        <div class="form-group">
            <label for="ratings">Ratings:</label>
            <form:input path="ratings" id="ratings" type="number" step="0.1" required="true"/>
        </div>
        <div class="form-group">
            <button type="submit" onclick="return confirm('Do you want this add this package?');">Add Package</button>
        </div>
    </form:form>
</body>
</html>
