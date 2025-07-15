<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Registration</title>
    <style>
        body {
            font-family: sans-serif;
            background-color: #f1f8e9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-box {
            background: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
            width: 350px;
        }

        h2 {
            text-align: center;
            color: #558b2f;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-top: 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        input[type="submit"] {
            background-color: #558b2f;
            color: white;
            border: none;
            margin-top: 20px;
        }

        input[type="submit"]:hover {
            background-color: #33691e;
            cursor: pointer;
        }

        .message {
            text-align: center;
            color: green;
            margin-top: 15px;
        }

        .link {
            text-align: center;
            margin-top: 10px;
        }

        .link a {
            text-decoration: none;
            color: #33691e;
        }
    </style>
</head>
<body>
<div class="form-box">
    <h2>Admin Registration</h2>
    <form action="register-admin" method="post">
        <input type="text" name="name" placeholder="Admin Name" required />
        <input type="password" name="password" placeholder="Password" required />
        <input type="submit" value="Register" />
    </form>
    <div class="link">
        <a href="admin-login">Already Registered? Login</a>
    </div>
</div>
</body>
</html>
