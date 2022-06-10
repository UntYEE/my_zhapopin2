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

<div class="lrcon">
    <div class="lrbox">
        <!--左边栏-->
        <div class="describes">
            <div class="des-c" id="des-c-1">
                <img src="${pageContext.request.contextPath}/images/jkf_imgs/pen.svg" alt="">
                <div class="des-cn">
                    <p class="des-cn-p">便捷的简历填写</p>
                    <div class="des-cn-div">一份简历开启未来</div>
                </div>
            </div>
            <div class="des-c">
                <img src="${pageContext.request.contextPath}/images/jkf_imgs/search.svg" alt="">
                <div class="des-cn">
                    <p class="des-cn-p">海量的职位优选</p>
                    <div class="des-cn-div">360行任你挑选</div>
                </div>
            </div>
            <div class="des-c">
                <img src="${pageContext.request.contextPath}/images/jkf_imgs/lightning.svg" alt="">
                <div class="des-cn">
                    <p class="des-cn-p">快速的只为投递</p>
                    <div class="des-cn-div">分秒必争直达HR</div>
                </div>
            </div>
            <div class="des-c">
                <img src="${pageContext.request.contextPath}/images/jkf_imgs/letter.svg" alt="">
                <div class="des-cn">
                    <p class="des-cn-p">高效的投递反馈</p>
                    <div class="des-cn-div">谁看我的简历早知道</div>
                </div>
            </div>
        </div>
        <!--右边栏-->
        <div class="listInfo">
            <div class="lr-h">
                <a class="choose" id="loginByPassword">密码登录</a>
                <a class="" id="loginByCode" style="display: none">验证码登录</a>
            </div>
            <form id="signup"></form>
        </div>
    </div>
    <img class="lr-bm" src="${pageContext.request.contextPath}/images/jkf_imgs/bm.png" alt="">
</div>


<script src="${pageContext.request.contextPath}/js/javaScript.form.js"></script>
<script src="${pageContext.request.contextPath}/js/login.js"></script>
</body>
