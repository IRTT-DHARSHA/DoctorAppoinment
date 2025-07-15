<!-- File: src/main/webapp/WEB-INF/jsp/doctor-login.jsp -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Doctor Login</title>
    <style>
        body { font-family: Arial; background: #f0f8ff; padding: 30px; }
        form { max-width: 400px; margin: auto; background: white; padding: 20px; border-radius: 10px; }
        input, button { width: 100%; padding: 10px; margin-top: 10px; }
        h2 { text-align: center; }
    </style>
</head>
<body>
    <h2>Doctor Login</h2>
    <form action="validate" method="post">
        <input type="text" name="username" placeholder="Enter Username" required />
        <input type="password" name="password" placeholder="Enter Password" required />
        <button type="submit">Login</button>
    </form>
    <c:if test="${not empty error}">
        <p style="color:red; text-align:center;">${error}</p>
    </c:if>
</body>
</html>
