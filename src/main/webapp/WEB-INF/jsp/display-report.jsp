<!-- File: src/main/webapp/WEB-INF/jsp/display-report.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.myil.doctorappointment.model.Patient" %>
<%
    List<Patient> patients = (List<Patient>) request.getAttribute("patients");
%>
<!DOCTYPE html>
<html>
<head>
    <title>All Patients Report</title>
    <style>
        table { width: 100%; border-collapse: collapse; }
        th, td { padding: 10px; border: 1px solid #ccc; text-align: left; }
        th { background-color: #f2f2f2; }
        body { font-family: Arial; padding: 20px; }
    </style>
</head>
<body>
    <h2>All Registered Patients</h2>
    <table>
        <thead>
            <tr>
                <th>Application ID</th>
                <th>Name</th>
                <th>Age</th>
                <th>Place</th>
                <th>Mobile</th>
                <th>Purpose</th>
                <th>Doctor</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="patient" items="${patients}">
            <tr>
                <td>${patient.applicationId}</td>
                <td>${patient.name}</td>
                <td>${patient.age}</td>
                <td>${patient.place}</td>
                <td>${patient.mobile}</td>
                <td>${patient.purpose}</td>
                <td>${patient.preferredDoctor}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</body>
</html>
