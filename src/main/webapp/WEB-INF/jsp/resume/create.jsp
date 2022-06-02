<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>创建简历</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/createResume.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/bootstrap/css/bootstrap.css">
</head>
<body>
<jsp:include page="../navigate/navigate.jsp"/>

<div class="main">
    <!--左侧固定定位模块-->
    <div class="container" id="nav_bar">
        <div class="row">
            <div class="col-md-3 col-lg-3 hidden-sm hidden-xs">
                <div class="left_brief" id="other1Content">
                    <%--<h3>我的简历</h3>--%>
                    <%--<div>更新<span>2020-01-01</span></div>--%>
                    <%--<div>公开<span>对无忧公开</span></div>--%>
                    <%--<div class="stars"></div>--%>
                    <%--<div class="btn_box">--%>
                        <%--<button id="refresh_btn">刷新</button>--%>
                        <%--<button id="preview_btn">预览</button>--%>
                    <%--</div>--%>
                    <%--<div id="editNameBtn"></div>--%>
                </div>
                <div class="left_body" id="left_content">
                    <a href="#basic">
                        <img alt="" src="${pageContext.request.contextPath}/images/createResume/basic.svg" class="icon">
                        <span>基本信息</span>
                    </a>
                    <a href="#work">
                        <img alt="" src="${pageContext.request.contextPath}/images/createResume/work.svg" class="icon">
                        <span>工作经验</span>
                    </a>
                    <a href="#project">
                        <img alt="" src="${pageContext.request.contextPath}/images/createResume/project.svg"
                             class="icon">
                        <span>项目经验</span>
                    </a>
                    <a href="#skills">
                        <img alt="" src="${pageContext.request.contextPath}/images/createResume/skills.svg"
                             class="icon">
                        <span>专业技能</span>
                    </a>
                    <a href="#schoolHonor">
                        <img alt="" src="${pageContext.request.contextPath}/images/createResume/schoolHonor.svg"
                             class="icon">
                        <span>在校荣誉</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!--右侧内容区-->
    <div class="container right_body">
        <div class="row">
            <div class="col-md-9 col-md-offset-3 col-lg-9 col-lg-offset-3 col-sm-12 col-xs-12">
                <!--基本信息-->
                <div id="basic"></div>
                <!--工作经验-->
                <div id="work">
                    <h4 class="tag_title">
                        <img alt="" src="${pageContext.request.contextPath}/images/createResume/work.svg" class="icon">
                        <strong>工作经验</strong>
                        <span class="add_content" onclick="addClick(this)">+添加</span>
                    </h4>
                </div>
                <!--项目经验-->
                <div id="project">
                    <h4 class="tag_title">
                        <img alt="" src="${pageContext.request.contextPath}/images/createResume/project.svg"
                             class="icon">
                        <strong>项目经验</strong>
                        <span class="add_content" onclick="addClick(this)">+添加</span>
                    </h4>
                </div>
                <!--专业技能-->
                <div id="skills">
                    <h4 class="tag_title">
                        <img alt="" src="${pageContext.request.contextPath}/images/createResume/skills.svg"
                             class="icon">
                        <strong>专业技能</strong>
                        <span class="add_content" onclick="addClick(this)">+添加</span>
                    </h4>
                </div>
                <!--在校荣誉-->
                <div id="schoolHonor">
                    <h4 class="tag_title">
                        <img alt="" src="${pageContext.request.contextPath}/images/createResume/schoolHonor.svg"
                             class="icon">
                        <strong>在校荣誉</strong>
                        <span class="add_content" onclick="addClick(this)">+添加</span>
                    </h4>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    let resumeId = "${requestScope.resumeId}";
</script>
<script src="${pageContext.request.contextPath}/js/javaScript.form.js"></script>
<script src="${pageContext.request.contextPath}/js/createResume.js"></script>
</body>
</html>
