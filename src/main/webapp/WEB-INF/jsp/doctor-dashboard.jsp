<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>Doctor Dashboard</title>
    <style>
        body { font-family: Arial; background: #e6f2ff; padding: 30px; }
        h2 { text-align: center; color: #0066cc; }
        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background: #fff;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }
        th {
            background: #d9edf7;
        }
        button {
            padding: 6px 12px;
            background-color: #5cb85c;
            color: white;
            border: none;
            cursor: pointer;
        }
        .completed {
            color: green;
            font-weight: bold;
        }
    </style>
    <script>
        function markCompleted(id) {
            fetch('/mark-completed/' + id, { method: 'POST' })
                .then(res => res.text())
                .then(data => {
                    if (data === 'success') {
                        document.getElementById("btn-" + id).style.display = "none";
                        document.getElementById("status-" + id).innerText = "Completed";
                        document.getElementById("status-" + id).className = "completed";
                    }
                });
        }
    </script>
</head>
<body>
    <h2>Welcome, Doctor!</h2>
    <p style="text-align:center;">Below is the list of registered patients.</p>

    <table>
        <thead>
            <tr>
                <th>Application ID</th>
                <th>Name</th>
                <th>Age</th>
                <th>Mobile</th>
                <th>Blood Group</th>
                <th>Purpose</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="p" items="${patients}">
                <tr>
                    <td>${p.applicationId}</td>
                    <td>${p.name}</td>
                    <td>${p.age}</td>
                    <td>${p.mobile}</td>
                    <td>${p.bloodGroup}</td>
                    <td>${p.purpose}</td>
                    <td>
                        <c:choose>
                            <c:when test="${p.status == 'Completed'}">
                                <span id="status-${p.id}" class="completed">Completed</span>
                            </c:when>
                            <c:otherwise>
                                <button id="btn-${p.id}" onclick="markCompleted(${p.id})">Cleared</button>
                                <span id="status-${p.id}" style="margin-left: 10px;"></span>
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
