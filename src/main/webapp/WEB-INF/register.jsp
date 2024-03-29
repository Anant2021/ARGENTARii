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
    <c:url value="/css/register.css" var="jstlCss"/>
    <link href="${jstlCss}" rel="stylesheet">
    <style
    >body {
        font-family: sans-serif;
        margin: 0;
        padding: 20px;
        background-image: url("../images/bank-background-ip8nfi9oj3rxoh2b.jpg");
        background-repeat: no-repeat ;
        background-size: cover;
    }

    .container {

        margin-top: 100px;
        width: 400px;
        margin: auto ;
        border: 1px solid #ccc;
        padding: 20px 20px;
        border-radius: 15px;
        background-color: aliceblue;
    }

    h1 {
        margin-top: 10%;
        text-align: center;
        margin-bottom: 20px;
        margin-right: auto;
    }

    .form-group {
        margin-bottom: 15px;
        margin-left: 15px;
        margin-right: 15px;
    }

    label {
        display: block;
        margin-bottom: 5px;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
        width: 90%;
        padding: 10px 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
        margin-left: auto;
        margin-right: auto;
    }

    button[type="submit"] {
        background-color: tomato;
        color: white;
        align-self: center;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        align-items: center;
        margin-left: 60px;
    }

    button[type="submit"]:hover {
        background-color: #45a049;
        letter-spacing: 0.75em;
    }
    #b2{background-color: tomato;
        color: white;
        align-self: center;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        align-items: center;
        margin-left: 90px;
    }
    #b2:hover{
        background-color: blue;

        letter-spacing: 0.75em;
    }</style>
    <title>Registration Form</title>
</head>

<body>
<div class="container">
    <h1>Registration </h1>
    <form:form action="/register" modelAttribute="registerUser">
        <div class="form-group">
            <label>First Name:</label>
            <input type="text" path="firstName" name="firstName" id="firstName"  placeholder="Enter First Name" required>
            <form:errors path="firstName"/>
        </div>
        <div class="form-group">
            <label>Last Name:</label>
            <input type="text" path="lastName" name="lastName" id="lastName"  placeholder="Enter Last Name"required>
            <form:errors path="lastName"/>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" name="email" id="email"  placeholder="Enter Email"required>
            <form:errors path="email"/>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" name="password" id="password" required>
            <form:errors path="password"/>
        </div>
        <div class="form-group">
            <label for="confirm_password">Confirm Password:</label>
            <input type="password" name="confirm_password" id="confirm_password"required>
            <small>${conformPassword}</small>
        </div>
        <button type="submit">Register</button>
        <button  id="b2" type="button" href="http://127.0.0.1:5050/">Back</button>
        <label id="l1"><a href="http://127.0.0.1:5050/login">Already have an account</a> </label>
    </form:form>
</div>
</body>

</html>
