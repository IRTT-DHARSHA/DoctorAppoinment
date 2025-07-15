<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.myil.doctorappointment.model.Patient" %>
<%
    Patient patient = (Patient) request.getAttribute("patient");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Patient Report</title>
    <style>
        body { font-family: Arial; background: #fafafa; padding: 20px; }
        .report-box { background: white; padding: 20px; max-width: 600px; margin: auto; border-radius: 10px; }
        h2 { text-align: center; }
        p { font-size: 18px; }
        .completed {
            color: green;
            font-weight: bold;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="report-box">
        <h2>Patient Report</h2>
        <p><strong>Name:</strong> <%= patient.getName() %></p>
        <p><strong>Application ID:</strong> <%= patient.getApplicationId() %></p>
        <p><strong>Age:</strong> <%= patient.getAge() %></p>
        <p><strong>Place:</strong> <%= patient.getPlace() %></p>
        <p><strong>Mobile:</strong> <%= patient.getMobile() %></p>
        <p><strong>Purpose of Visit:</strong> <%= patient.getPurpose() %></p>

        <%
            if (patient.getStatus() != null && patient.getStatus().equals("Completed")) {
        %>
            <p class="completed">✔ Doctor has completed your consultation.</p>
        <%
            }
        %>
    </div>
</body>
</html>
