<%--
  Created by IntelliJ IDEA.
  User: 86132
  Date: 2020/3/17
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/companyInfo.css">
</head>
<jsp:include page="../navigate/navigate.jsp"/>
<body>
<div id="subjectDiv">
    <div id="companyInfo">
        <h2>${company.companyName}</h2>
        <div id="spanDiv">
            <span>${company.companyStage}</span><span class="spans">|</span><span class="spans">${company.companyIndustury}</span>
        </div>
    </div>
    <div id="companySituation"><!--公司介绍-->
        <h3>公司介绍：</h3>
        <span>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp苏州捷研芯为国家高新技术企业，坐落于苏州工业园区，注册资金1258.4万元,由著名半导体公司的专家和中科院菁英人才创办，拥有独立知识产权的封装、测试、模块化技术及边缘计算技术，致力于为Fabless设计公司、终端方案商以及工业、汽车、消费电子产业的制造商提供MEMS传感器、系统集成微模块从设计到批量生产的封装与集成解决方案（OEM+ODM）;提供智能传感器产品与行业应用方案。
        </span>
    </div>
    <div id="companyJobInfo">
        <h3 class="listHead"><span style="display:inline-block;margin-left: 15px">该公司的所有职位</span></h3>
        <div id="jobList">
            <c:forEach items="${companyJobList}" var="job">
                <div class="job">
                    <p class="j1"><a href="${pageContext.request.contextPath}/job/${job.jobId}">${job.jobName}</a></p>
                    <span class="j2">${job.jobDegree}|${job.jobNeedNumber}</span>
                    <span class="j3">${job.jobCity}</span>
                    <span class="j4"></span>
                    <span class="j5">${job.jobPublishTime}</span>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>
