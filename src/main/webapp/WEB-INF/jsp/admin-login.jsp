<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <style>
        body {
            font-family: sans-serif;
            background-color: #fff3e0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-box {
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
            width: 350px;
        }

        h2 {
            text-align: center;
            color: #e65100;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-top: 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        input[type="submit"] {
            background-color: #ef6c00;
            color: white;
            border: none;
            margin-top: 20px;
        }

        input[type="submit"]:hover {
            background-color: #e65100;
            cursor: pointer;
        }

        .error {
            text-align: center;
            color: red;
            margin-top: 10px;
        }

        .link {
            text-align: center;
            margin-top: 10px;
        }

        .link a {
            text-decoration: none;
            color: #e65100;
        }
    </style>
</head>
<body>
<div class="login-box">
    <h2>Admin Login</h2>
    <form action="login-admin" method="post">
        <input type="text" name="name" placeholder="Admin Name" required />
        <input type="password" name="password" placeholder="Password" required />
        <input type="submit" value="Login" />
    </form>
    <c:if test="${not empty error}">
        <div class="error">${error}</div>
    </c:if>
    <div class="link">
        <a href="admin-register">Don't have an account? Register</a>
    </div>
</div>
</body>
</html>
