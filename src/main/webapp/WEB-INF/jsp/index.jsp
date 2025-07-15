<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Doctor Appointment System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f0f0f0;
            text-align: center;
            padding: 50px;
        }

        .container {
            background-color: white;
            padding: 30px;
            border-radius: 15px;
            display: inline-block;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        }

        h2 {
            color: #333;
            margin-bottom: 30px;
        }

        .card-container {
            display: flex;
            justify-content: center;
            gap: 30px;
        }

        .card {
            padding: 20px 40px;
            border-radius: 10px;
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
            text-decoration: none;
            font-size: 18px;
        }

        .card:hover {
            background-color: #45a049;
        }

        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Select Your Role</h2>
    <div class="card-container">
        <a href="admin-login"><div class="card">Admin</div></a>
        <a href="/doctor/login"><div class="card">Doctor</div></a>
        <a href="patient-entry"><div class="card">Patient</div></a>
    </div>
</div>
</body>
</html>
