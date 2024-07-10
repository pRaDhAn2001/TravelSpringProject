<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #121212;
            color: #ffffff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
        }

        .login-container {
            width: 100%;
            max-width: 400px;
            padding: 20px;
            background-color: #1e1e1e;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2), 0 6px 20px rgba(0, 0, 0, 0.19);
            border-radius: 10px;
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .login-container:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.4), 0 12px 40px rgba(0, 0, 0, 0.38);
        }
        
        .login-container img {
			width: 120px;
			float: inherit;
		}

        .login-container h2 {
            margin-bottom: 20px;
            color: #ffffff;
        }

        .login-container form {
            display: flex;
            flex-direction: column;
        }

        .login-container label {
            margin-bottom: 5px;
            color: #aaaaaa;
            text-align: left;
            font-size: 14px;
        }

        .login-container input {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #333333;
            border-radius: 4px;
            background-color: #333333;
            color: #ffffff;
            font-size: 14px;
        }

        .login-container button {
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease, transform 0.3s;
        }

        .login-container button:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }

        .error-message {
            color: red;
            text-align: center;
            margin-bottom: 20px;
        }

        .login-container a {
            display: block;
            color: #007bff;
            margin-top: 10px;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .login-container a:hover {
            color: #0056b3;
            text-decoration: underline;
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
    <div class="login-container">
    <img src="https://static.wixstatic.com/media/2f893f_8485abf42c324b11818c30307f1d0934~mv2.png/v1/crop/x_0,y_7,w_500,h_486/fill/w_303,h_294,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/Bhraman%20logo.png">
        <h2>Login</h2>
        <form action="/processLogin" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required>
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
            <button type="submit">Login</button>
        </form>
        <c:if test="${not empty error}">
            <p class="error-message">${error}</p>
        </c:if>
        <a href="/signup">Don't have an account? Sign Up</a>
    </div>
</body>
</html>
