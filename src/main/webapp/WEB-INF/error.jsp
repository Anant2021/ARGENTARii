<%--
  Created by IntelliJ IDEA.
  User: anant
  Date: 26-03-2024
  Time: 13:31
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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="css/fontawesome/css/all.css">
    <style>
        * {
            box-sizing: border-box;
            font-family: Comfortaa;
        }

        body {
            height: 100vh;
            background-image: url("../resources/static/images/bank-background-ip8nfi9oj3rxoh2b.jpg");
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
        }

        .card {
            box-shadow: 0px 3px 6px rgb(0, 14, 53);
        }

        .card .card-text {
            font-size: 16px;
        }
    </style>
    <title>Errors</title>
</head>

<body class="d-flex align-items-center justify-content-center">

<!-- Card: Error Card -->
<div class="card col-4 alert alert-danger border border-danger text-danger">
    <!-- Card Title -->
    <h3 class="card-title">
        <i class="fa fa-window-close me-2"></i>Errors:
    </h3>
    <!-- End Of Card Title -->
    <hr>
    <!-- Card Body -->
    <div class="card-body">
        <!-- Card Text -->
        <p class="card-text">
            <!-- Display Message -->
            <c:if test="${requestScope.error != null}">
        <div class="alert alert-danger text-center border border-danger">
            <b>${requestScope.error}</b>
        </div>
        </c:if>
        <!-- End Of Display Message -->
        </p>
        <!-- End Of Card Text -->
        <hr>
        <!-- Back To Login Page -->
        <a href="/login" class="btn btn-sm btn-danger">
            <i class="fa fa-arrow-alt-circle-left me-1"></i> Back
        </a>
        <!-- End Of Back To Login Page -->
    </div>
    <!-- End Of Card Body -->
</div>
<!-- End Of Card: Error Card -->
</body>

</html>
