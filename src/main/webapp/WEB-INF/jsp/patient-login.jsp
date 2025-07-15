<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Patient Login</title>
</head>
<body>
<h2>Patient Login</h2>
<form action="patient-login" method="post">
    <label>Mobile Number:</label>
    <input type="text" name="mobile" required /><br/>

<!--     <label>Password:</label>
    <input type="password" name="password" required /><br/>
 -->
    <button type="submit">Login</button>
</form>

<c:if test="${not empty error}">
    <p style="color:red;">${error}</p>
</c:if>
</body>
</html>
