<%--
  Created by IntelliJ IDEA.
  User: anant
  Date: 26-03-2024
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType='text/html;charset=UTF-8' language='java' %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<%@ taglib prefix='form' uri='http://www.springframework.org/tags/form' %>
<%@ taglib prefix = 'fn' uri = 'http://java.sun.com/jsp/jstl/functions' %>

<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
<%--    <meta http-equiv='X-UA_compatible' content='IE=edge'>--%>
    <c:url value="../css/email.css" var="jstllCss"/>
    <link href="${jstllCss}" rel="stylesheet">
    <title>Document</title>
</head>
<body>
<!-- wrapper start -->
<div class='wrapper'>
    <!-- email  MSG Header -->
    <h2 class='email-msg-header'>
        Welcome And Thank You For Choosing
    </h2>
    <!--  end of email  MSG Header -->
    <!-- company name -->

    <div class='company'>ARGENTARii</div>
    <hr>
    <p class='welcome-text'>
        You Have Been Successfully Registered , please click below to verify and Enjoy !
    </p>
    <br>
    <br>
    <!-- verify acc button -->
    <center>
        <a href='' class='verify-account-btn' role='button'>Verify Account</a>
    </center>
    <!-- verify acc button -->

    <!-- Copy right wrapper start -->

    <div class='copy-right'>
        &copy; ARGENTARii | All rights Reserved.
    </div>
    <!-- Copy right wrapper end -->

</div>
<!-- wrapper end -->

</body>
</html>