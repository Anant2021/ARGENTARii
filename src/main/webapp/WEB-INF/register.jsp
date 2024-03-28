<%--
  Created by IntelliJ IDEA.
  User: anant
  Date: 26-03-2024
  Time: 13:26
  To change this template use File | Settings | File Templates.
--%>    


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<%--    <c:url value="/css/register.css" var="jstlCss"/>--%>
<%--    <link href="${jstlCss}" rel="stylesheet">--%>
    <link  rel="stylesheet" href="css/register.css">
    <title>Registration Form</title>
</head>
<body>
<div class="container">
    <h1>Registration Form</h1>
    <form>
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" name="username" id="username" required>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" name="email" id="email" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" name="password" id="password" required>
        </div>
        <div class="form-group">
            <label for="confirm_password">Confirm Password:</label>
            <input type="password" name="confirm_password" id="confirm_password" required>
        </div>
        <button type="submit">Register</button>
    </form>
</div>
</body>
</html>
