<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Spring Web App</title>
</head>
<body>
    <h1>Welcome to Spring Web App!</h1>
    <p>${message}</p>
    <p>This is a traditional Spring MVC application.</p>
    <p><a href="${pageContext.request.contextPath}/greet">Greet Me</a></p>
</body>
</html>