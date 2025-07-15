<!-- File: src/main/webapp/WEB-INF/jsp/patient-register.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Patient Registration</title>
    <style>
        body { font-family: Arial; background: #f0f8ff; padding: 20px; }
        form { background: white; padding: 20px; max-width: 600px; margin: auto; border-radius: 10px; }
        input, select, button { width: 100%; padding: 10px; margin-top: 10px; }
        .hidden { display: none; }
        label { margin-top: 10px; display: block; font-weight: bold; }
    </style>
    <script>
        function toggleFields() {
            var isFirst = document.getElementById("firstVisitYes").checked;
            document.getElementById("firstVisitFields").style.display = isFirst ? "block" : "none";
        }

        function calculateAge() {
            const dob = document.getElementById("dob").value;
            if (dob) {
                const birthDate = new Date(dob);
                const today = new Date();
                let age = today.getFullYear() - birthDate.getFullYear();
                const m = today.getMonth() - birthDate.getMonth();
                if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
                    age--;
                }
                document.getElementById("age").value = age;
            }
        }
    </script>
</head>
<body>
    <h2 style="text-align:center;">Patient Registration</h2>
    <form action="register-patient" method="post">
        <label>Is this your first visit?</label>
        <input type="radio" name="firstVisit" id="firstVisitYes" value="yes" onclick="toggleFields()" required> Yes
        <input type="radio" name="firstVisit" value="no" onclick="toggleFields()"> No

        <div id="firstVisitFields" class="hidden">
            <label>Application ID</label>
            <input type="text" name="applicationId" value="APP${Math.floor(Math.random()*90000)+10000}" readonly />

            <label>Name</label>
            <input type="text" name="name" required />

            <label>Password</label>
            <input type="password" name="password" required />

            <label>Date of Birth</label>
            <input type="date" name="dob" id="dob" onchange="calculateAge()" required />

            <label>Age</label>
            <input type="text" name="age" id="age" readonly />

            <label>Place</label>
            <input type="text" name="place" required />

            <label>Mobile Number</label>
            <input type="text" name="mobile" maxlength="10" required />

            <label>Blood Group</label>
            <select name="bloodGroup" required>
                <option value="">--Select--</option>
                <option value="A+">A+</option>
                <option value="A-">A-</option>
                <option value="B+">B+</option>
                <option value="B-">B-</option>
                <option value="AB+">AB+</option>
                <option value="AB-">AB-</option>
                <option value="O+">O+</option>
                <option value="O-">O-</option>
            </select>

            <label>Purpose of Visit</label>
            <input type="text" name="purpose" required />

            <label>Preferred Doctor</label>
            <input type="text" name="preferredDoctor" required />
        </div>

        <button type="submit">Submit</button>
    </form>
</body>
</html>
