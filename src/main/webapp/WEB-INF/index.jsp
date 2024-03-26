<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <c:url value="/css/landingPage.css" var="jstlCss"/>
    <link href="${jstlCss}" rel="stylesheet">
    <title>${PageTitle}</title>
</head>
<body>
<div id="sample-text-card" class="card">
    <div class="card-body">
        <h1>
            ARGENTARii..
        </h1>
        <h5 class="card-title">
            Flexible Banking Solution
        </h5>
    </div>
</div>
<div id="buttons" class="button">
    <button  id="b1"><a href="/register">Register</a></button>
    <button id="b2"> <a href="/login">Login</a></button>
</div>
</body>
</html>
