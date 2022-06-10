<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>用户登录</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css">
    <style>
        .lrcon .lrbox {
            background: url("${pageContext.request.contextPath}/images/jkf_imgs/loginbeijing.png");
        }
        .lrcon {
            background: url("${pageContext.request.contextPath}/images/jkf_imgs/qianchengwuyou.png") no-repeat;
        }
    </style>
</head>
<body>
<jsp:include page="../navigate/navigate.jsp"/>

<form action="/mails" method="post">
    <span style="display: none">用户名:</span>
    <input type="text" name="name" value="904160288@qq.com" style="display: none">
    <span style="display: none">密码：</span>
    <input type="password" name="password" value="ewbtncmuipddbdfb" style="display: none">
    <span>邮箱：</span>
    <input type="email" name="mailbox">
    <input type="submit" value="提交">
</form>
<script src="${pageContext.request.contextPath}/js/javaScript.form.js"></script>
<script src="${pageContext.request.contextPath}/js/login.js"></script>
</body>
</html>
