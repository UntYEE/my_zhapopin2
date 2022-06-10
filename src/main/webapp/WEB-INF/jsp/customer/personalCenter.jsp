<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/personalCenter.css">
</head>
<body>
<jsp:include page="../navigate/navigate.jsp"/>

<div class="content">
    <!--个人中心-->
    <div class="directory">
        <c:if test="${requestScope.type != 0}">
            <a class="more_1"
               href="${pageContext.request.contextPath}/customer/center/0">个人中心</a>
        </c:if>
        <c:if test="${requestScope.type == 0}">
            <span class="more_1 choose">个人中心</span>
            <div class="absContent">
                <div class="header">
                    <ul class="leftLabel">
                        <li class="">个人中心</li>
                    </ul>
                </div>
                <table border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                    <tr>
                        <td class="labelForMyself">
                            <img src="${pageContext.request.contextPath}/images/job/s1.svg" alt="">
                            用户名
                        </td>
                        <td>${sessionScope.loginCustomer.custName}</td>
                        <td>
                            <a href="">修改</a>
                            |
                            <a href="">注销</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelForMyself">
                            <img src="${pageContext.request.contextPath}/images/job/s2.svg" alt="">
                            登录密码
                        </td>
                        <td>互联网帐号存在被盗风险，建议你定期更改密码以保护账户安全</td>
                        <td>
                            <a href="">修改</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelForMyself">
                            <img src="${pageContext.request.contextPath}/images/job/s3.svg" alt="">
                            手机号码
                        </td>
                        <td>${sessionScope.loginCustomer.custTelno}</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="labelForMyself">
                            <img src="${pageContext.request.contextPath}/images/job/s4.svg" alt="">
                            邮箱
                        </td>
                        <td>${sessionScope.loginCustomer.custEmail}</td>
                        <td>修改</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </c:if>
    </div>
    <!--简历中心-->
    <div class="directory">
        <c:if test="${requestScope.type != 1}">
            <a class="more_1"
               href="${pageContext.request.contextPath}/customer/center/1">简历中心</a>
        </c:if>
        <c:if test="${requestScope.type == 1}">
            <span class="more_1 choose">简历中心</span>
            <div class="absContent">
                <div class="header">
                    <ul class="leftLabel">
                        <li class="">简历中心</li>
                    </ul>
                    <ul class="rightLabel">
                        <li>
                            <a href="${pageContext.request.contextPath}/resume/add" style="display: none">创建简历</a>
                        </li>
                    </ul>
                </div>
                <table border="0" cellspacing="0" cellpadding="0">
                    <thead>
                    <tr>
                        <td>简历名称</td>
                        <td>简历创建时间</td>
                        <td>简历修改时间</td>
                        <td>操作</td>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="resume" items="${requestScope.resumeList}">
                        <tr>
                            <td>
                                <a href="${pageContext.request.contextPath}/resume/${resume.resumeId}/prev">${resume.resumeName}</a>
                            </td>
                            <td>
                                <fmt:formatDate value="${resume.resumeCreateTime}" pattern="yyyy-MM-dd"/>
                            </td>
                            <td>
                                <fmt:formatDate value="${resume.resumeUpdateTime}" pattern="yyyy-MM-dd"/>
                            </td>
                            <td>
                                <a href="${pageContext.request.contextPath}/resume/${resume.resumeId}/edit">编辑</a>
                                |
                                <a href="#" onclick="deleteResume(this,${resume.resumeId})">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="describe">
                        <%--<h4>公开程度说明:</h4>--%>
                        <%--<p>对所有公开：允许51job的招聘人员及所有通过51job审核的公司查看你的简历（注意：只允许有1份简历可以选择对所有公开）。</p>--%>
                        <%--<p>对无忧公开：只允许51job的招聘人员及认证猎头人士查看你的简历。</p>--%>
                        <%--<p>完全保密：不允许任何人员或公司查看您的简历，个人信息完全保密，除非你主动投递职位。</p>--%>
                        <%--<h4>快速投递说明:</h4>--%>
                        <%--<p>简历设置为快速投递，申请职位时，直接发送设置快速投递的简历，不再提示选择简历。知己知彼竞争力分析会默认使用快速投递简历进行分析。</p>--%>
                </div>
            </div>
        </c:if>
    </div>
    <!--投递记录-->
    <div class="directory">
        <c:if test="${requestScope.type != 2}">
            <a class="more_1"
               href="${pageContext.request.contextPath}/customer/center/2">投递记录</a>
        </c:if>
        <c:if test="${requestScope.type == 2}">
            <span class="more_1 choose">投递记录</span>
            <div class="absContent">
                <div class="header">
                    <ul class="leftLabel">
                        <li class="">投递记录</li>
                    </ul>
                </div>
                <table border="0" cellspacing="0" cellpadding="0">
                    <thead>
                    <tr>
                        <td>投递的简历</td>
                        <td>投递岗位</td>
                        <td>薪资</td>
                        <td>投递时间</td>
                        <td>企业名称</td>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="rdrList" items="${requestScope.rdrList}">
                        <tr>
                            <td>
                                <a href="${pageContext.request.contextPath}/resume/${rdrList.resume.resumeId}/prev">${rdrList.resume.resumeName}</a>
                            </td>
                            <td>${rdrList.job.jobName}</td>
                            <td>${rdrList.job.jobMinSalary}-${rdrList.job.jobMaxSalary}元/月</td>
                            <td>
                                <fmt:formatDate value="${rdrList.resumeDeliveryRecord.deliveryTime}" pattern="yyyy-MM-dd"/>
                            </td>
                            <td>${rdrList.company.companyName}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:if>
    </div>
</div>
<script src="${pageContext.request.contextPath}/js/personalCenter.js"></script>
</body>
</html>
