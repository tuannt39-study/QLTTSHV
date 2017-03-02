<%--
  Created by IntelliJ IDEA.
  User: buibichngoc
  Date: 1/19/2017
  Time: 12:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Đăng nhập | HackademicsHanoi</title>
    <style>
        @import url(http://fonts.googleapis.com/css?family=Open+Sans);

        .btn {
            display: inline-block;
            *display: inline;
            *zoom: 1;
            padding: 4px 10px 4px;
            margin-bottom: 0;
            font-size: 13px;
            line-height: 18px;
            color: #333333;
            text-align: center;
            text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
            vertical-align: middle;
            background-color: #f5f5f5;
            background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6);
            background-image: -ms-linear-gradient(top, #ffffff, #e6e6e6);
            background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#e6e6e6));
            background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6);
            background-image: -o-linear-gradient(top, #ffffff, #e6e6e6);
            background-image: linear-gradient(top, #ffffff, #e6e6e6);
            background-repeat: repeat-x;
            filter: progid:dximagetransform.microsoft.gradient(startColorstr=#ffffff, endColorstr=#e6e6e6, GradientType=0);
            border-color: #e6e6e6 #e6e6e6 #e6e6e6;
            border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
            border: 1px solid #e6e6e6;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
            -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
            box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
            cursor: pointer;
            *margin-left: .3em;
        }

        .btn:hover, .btn:active, .btn.active, .btn.disabled, .btn[disabled] {
            background-color: #e6e6e6;
        }

        .btn-large {
            padding: 9px 14px;
            font-size: 15px;
            line-height: normal;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
        }

        .btn:hover {
            color: #333333;
            text-decoration: none;
            background-color: #e6e6e6;
            background-position: 0 -15px;
            -webkit-transition: background-position 0.1s linear;
            -moz-transition: background-position 0.1s linear;
            -ms-transition: background-position 0.1s linear;
            -o-transition: background-position 0.1s linear;
            transition: background-position 0.1s linear;
        }

        .btn-primary, .btn-primary:hover {
            text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
            color: #ffffff;
        }

        .btn-primary.active {
            color: rgba(255, 255, 255, 0.75);
        }

        .btn-primary {
            background-color: #2baae2;
            background-image: -moz-linear-gradient(top, #6eb6de, #4a77d4);
            background-image: -ms-linear-gradient(top, #6eb6de, #4a77d4);
            background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#38c4ff), to(#00b1ff));
            background-image: -webkit-linear-gradient(top, #43c7ff, #2baae2);
            background-image: -o-linear-gradient(top, #6eb6de, #4a77d4);
            background-image: linear-gradient(top, #6eb6de, #4a77d4);
            background-repeat: repeat-x;
            filter: progid:dximagetransform.microsoft.gradient(startColorstr=#6eb6de, endColorstr=#4a77d4, GradientType=0);
            border: 1px solid #0078ff;
            text-shadow: 1px 1px 1px rgb(255, 255, 255);
            box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.5);
        }

        .btn-primary:hover, .btn-primary:active, .btn-primary.active, .btn-primary.disabled, .btn-primary[disabled] {
            filter: none;
            background-color: #4a77d4;
        }

        .btn-block {
            width: 30%;
            display: block;
            position: absolute;
            left: 70%;
        }

        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            -ms-box-sizing: border-box;
            -o-box-sizing: border-box;
            box-sizing: border-box;
        }

        html {
            width: 100%;
            height: 100%;
            overflow: hidden;
        }

        body {
            width: 100%;
            height: 100%;
            font-family: 'Open Sans', sans-serif;
            background: #ffffff;
            background: -moz-radial-gradient(0% 100%, ellipse cover, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%), -moz-linear-gradient(top, rgb(255, 255, 255) 0%, rgb(0, 179, 255) 0%, #00b3ff 100%), -moz-linear-gradient(135deg, #ffffff 0%, #38c4ff 100%);
            background: -webkit-radial-gradient(0% 100%, ellipse cover, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%), -webkit-linear-gradient(top, rgb(255, 255, 255) 0%, rgb(0, 179, 255) 0%, #00b3ff 100%), -webkit-linear-gradient(135deg, #ffffff 0%, #38c4ff 100%);
            background: -o-radial-gradient(0% 100%, ellipse cover, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%), -o-linear-gradient(top, rgb(255, 255, 255) 0%, rgb(0, 179, 255) 0%, #00b3ff 100%), -o-linear-gradient(135deg, #ffffff 0%, #38c4ff 100%);
            background: -ms-radial-gradient(0% 100%, ellipse cover, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%), -ms-linear-gradient(top, rgb(255, 255, 255) 0%, rgb(0, 179, 255) 0%, #00b3ff 100%), -ms-linear-gradient(135deg, #ffffff 0%, #38c4ff 100%);
            background: -webkit-radial-gradient(0% 100%, ellipse cover, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%), linear-gradient(to bottom, rgb(255, 255, 255) 0%, #00b3ff 100%), linear-gradient(135deg, #ffffff 0%, #38c4ff 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#3E1D6D', endColorstr='#092756', GradientType=1);
        }

        .login {
            position: absolute;
            top: 52%;
            left: 72%;
            margin: -150px 0 0 -150px;
            width: 385px;
            height: 150px;
        }

        .login h1 {
            color: #fff;
            text-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            letter-spacing: 1px;
            text-align: center;
        }

        input {
            width: 100%;
            margin-bottom: 10px;
            background: rgba(255, 255, 255, 0.3);
            outline: none;
            padding: 10px;
            font-size: 13px;
            color: #48b5e6;
            text-shadow: 1px 1px 1px #bdbdbd;
            border: 1px solid #2baae2;
            border-radius: 4px;
            box-shadow: inset 0 -5px 45px rgba(255, 255, 255, 0.2), 0 1px 1px rgba(255, 255, 255, 0.2);
            -webkit-transition: box-shadow .5s ease;
            -moz-transition: box-shadow .5s ease;
            -o-transition: box-shadow .5s ease;
            -ms-transition: box-shadow .5s ease;
            transition: box-shadow .5s ease;
        }

        input:focus {
            box-shadow: inset 0 -5px 45px rgba(100, 100, 100, 0.4), 0 1px 1px rgba(255, 255, 255, 0.2);
        }

        .logo img {
            position: absolute;
            height: 27%;
            width: 43%;
            top: 20%;
            left: 11%;
        }
        .inline {
            overflow: hidden;
        }
        .login-inline {
            float: right;
            width: 117px;
            height: 39px;
        }
        .remember-me {
            overflow: hidden;
            height: 19px;
            margin-top: 19px;
            font-size: 15px;
        }
        .forgot-passwd {
            font-style: italic;
            text-decoration: underline;
            width: 123px;
            margin-left: 15px;
        }
    </style>
</head>
<body>
<div class="login">
    <%--<h1>Login</h1>--%>
    <c:if test="${not empty error}">
        <div class="alert alert-danger">
            <p>Sai tài khoản hoặc mật khẩu!</p>
        </div>
    </c:if>
    <c:if test="${param.logout != null}">
        <div class="alert alert-success">
            <p>Hẹn gặp lại!</p>
        </div>
    </c:if>
    <c:url var="loginUrl" value="/login"/>
    <form action="${loginUrl}" method="post">
        <input id="username" type="text" name="ssoId" placeholder="Tài khoản"/><br>
        <input id="password" type="password" name="password" placeholder="Mật khẩu"/><br>
        <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}"/>
        <div class="inline">
            <div class="login-inline"><input type="submit" value="Đăng nhập" class="btn btn-primary btn-block btn-large"/></div>
            <div class="remember-me"><label><input type="checkbox" value="" style="width: 8%;">Ghi nhớ</label>
                <span class="forgot-passwd"><a href="#">Quên mật khẩu?</a></span>
            </div>

        </div>

    </form>
</div>
<div class="logo">
    <img src="../static/img/logo_hackademicsvn.png">
</div>
</body>
</html>