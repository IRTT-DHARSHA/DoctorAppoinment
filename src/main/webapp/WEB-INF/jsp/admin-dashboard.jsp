<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: sans-serif;
            background-color: #e0f2f1;
            padding: 50px;
        }

        .dashboard {
            background-color: white;
            padding: 40px;
            max-width: 600px;
            margin: auto;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            color: #00796b;
        }

        .info {
            text-align: center;
            margin-top: 30px;
            font-size: 18px;
        }
    </style>
</head>
<body>
<div class="dashboard">
    <h2>Welcome Admin</h2>
    <div class="info">
        <p>Hello, ${admin.name}!</p>
        <p>You have successfully logged in to the Doctor Appointment System.</p>
    </div>
</div>
</body>
</html>
