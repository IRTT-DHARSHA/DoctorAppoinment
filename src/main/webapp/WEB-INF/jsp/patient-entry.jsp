<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Patient Entry</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f2f2f2;
            text-align: center;
        }
        .container {
            margin-top: 100px;
        }
        button {
            margin: 10px;
            padding: 10px 20px;
            font-size: 18px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Is this your first visit?</h2>
    <form action="handle-patient-choice" method="post">
        <button type="submit" name="visitType" value="first">First Visit</button>
        <button type="submit" name="visitType" value="returning">Already Registered</button>
    </form>
</div>
</body>
</html>
