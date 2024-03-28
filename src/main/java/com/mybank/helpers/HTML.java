package com.mybank.helpers;

public class HTML {
    public static  String htmlEmailTemplate(String token,String code){
        //verify Account Url;
        String url="http://127.0.0.1:5050/verify?token="+token+"&code="+code;
        String emailTemplate="<%--\n" +
                "  Created by IntelliJ IDEA.\n" +
                "  User: anant\n" +
                "  Date: 26-03-2024\n" +
                "  Time: 13:37\n" +
                "  To change this template use File | Settings | File Templates.\n" +
                "--%>\n" +
                "<!DOCTYPE html>\n" +
                "<%@ page contentType='text/html;charset=UTF-8' language='java' %>\n" +
                "<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>\n" +
                "<%@ taglib prefix='form' uri='http://www.springframework.org/tags/form' %>\n" +
                "<%@ taglib prefix = 'fn' uri = 'http://java.sun.com/jsp/jstl/functions' %>\n" +
                "\n" +
                "<html lang='en'>\n" +
                "<head>\n" +
                "    <meta charset='UTF-8'>\n" +
                "    <meta name='viewport' content='width=device-width, initial-scale=1.0'>\n" +
                "<%--    <meta http-equiv='X-UA_compatible' content='IE=edge'>--%>\n" +
                "    <c:url value=\"../css/email.css\" var=\"jstllCss\"/>\n" +
                "    <link href=\"${jstllCss}\" rel=\"stylesheet\">\n" +
                "    <title>Document</title>\n" +
                "</head>\n" +
                "<body>\n" +
                "<!-- wrapper start -->\n" +
                "<div class='wrapper'>\n" +
                "    <!-- email  MSG Header -->\n" +
                "    <h2 class='email-msg-header'>\n" +
                "        Welcome And Thank You For Choosing\n" +
                "    </h2>\n" +
                "    <!--  end of email  MSG Header -->\n" +
                "    <!-- company name -->\n" +
                "\n" +
                "    <div class='company'>ARGENTARii</div>\n" +
                "    <hr>\n" +
                "    <p class='welcome-text'>\n" +
                "        You Have Been Successfully Registered , please click below to verify and Enjoy !\n" +
                "    </p>\n" +
                "    <br>\n" +
                "    <br>\n" +
                "    <!-- verify acc button -->\n" +
                "    <center>\n" +
                "        <a href='"+ url +"' class='verify-account-btn' role='button'>Verify Account</a>\n" +
                "    </center>\n" +
                "    <!-- verify acc button -->\n" +
                "\n" +
                "    <!-- Copy right wrapper start -->\n" +
                "\n" +
                "    <div class='copy-right'>\n" +
                "        &copy; ARGENTARii | All rights Reserved.\n" +
                "    </div>\n" +
                "    <!-- Copy right wrapper end -->\n" +
                "\n" +
                "</div>\n" +
                "<!-- wrapper end -->\n" +
                "\n" +
                "</body>\n" +
                "</html>";
        return "";

    }
}
