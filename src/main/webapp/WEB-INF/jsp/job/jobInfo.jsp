<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>搜索职位</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jobInfo.css">
</head>

<body>
<jsp:include page="../navigate/navigate.jsp"/>

<%--搜索框--%>
<div id="search_div">
    <div id="search_input">
        <input type="text" placeholder="搜索您感兴趣的职位/公司" id="searchContent">
        <button id="searchBtn" type="button">点击搜索</button>
    </div>
    <div id="search_hot">
        <span>热门职位: </span>
        <a href="${pageContext.request.contextPath}/job/jobInfo?keywords=java">Java</a>
        <a href="${pageContext.request.contextPath}/job/jobInfo?keywords=python">python</a>
        <a href="${pageContext.request.contextPath}/job/jobInfo?keywords=html">HTML</a>
        <a href="${pageContext.request.contextPath}/job/jobInfo?keywords=php">PHP</a>
        <a href="${pageContext.request.contextPath}/job/jobInfo?keywords=游戏测试">游戏测试</a>
        <a href="${pageContext.request.contextPath}/job/jobInfo?keywords=管理">管理</a>
        <a href="${pageContext.request.contextPath}/job/jobInfo?keywords=前端">web前端</a>
        <a href="${pageContext.request.contextPath}/job/jobInfo?keywords=人工智能">人工智能</a>
        <a href="${pageContext.request.contextPath}/job/jobInfo?keywords=C++">C++</a>
        <a href="${pageContext.request.contextPath}/job/jobInfo?keywords=C">C</a>

    </div>
</div>
<%--条件筛选--%>
<div class="contentElement">
    <ul id="selectRows">
        <li>
            <ul class="selectCols">
                <li>发布日期:</li>
                <li class="choose">所有</li>
                <li>24小时内</li>
                <li>近三天</li>
                <li>近一周</li>
                <li>近一月</li>
                <li>其他</li>
            </ul>
        </li>
        <li>
            <ul class="selectCols">
                <li>月薪范围:</li>
                <li class="choose">所有</li>
                <li>2千以下</li>
                <li>2-3千</li>
                <li>3-4.5千</li>
                <li>4.5-6千</li>
                <li>6-8千</li>
            </ul>
        </li>
        <li>
            <ul class="selectCols">
                <li>公司性质:</li>
                <li class="choose">所有</li>
                <li>国企</li>
                <li>外资(欧美)</li>
                <li>外资(非欧美)</li>
                <li>上市公司</li>
                <li>合资</li>
            </ul>
        </li>
        <li>
            <ul class="selectCols">
                <li>工作年限:</li>
                <li class="choose">所有</li>
                <li>无经验</li>
                <li>1-3年</li>
                <li>3-5年</li>
                <li>5-10年</li>
                <li>10年以上</li>
            </ul>
        </li>
        <li>
            <ul class="selectCols">
                <li>学历要求:</li>
                <li class="choose">所有</li>
                <li>初中及以下</li>
                <li>高中/中技/中专</li>
                <li>大专</li>
                <li>本科</li>
                <li>硕士</li>
            </ul>
        </li>
        <li>
            <ul class="selectCols" id="showSelectLab">
                <li>已选条件:</li>
            </ul>
        </li>
    </ul>
</div>
<%--搜索内容区--%>
<div class="contentElement">
    <%--表头--%>
    <div class="btnBox">
        <label for="selectAll">
            <input type="checkbox" id="selectAll">全选
        </label>
        <div class="btn green">
            <img class="icon" src="${pageContext.request.contextPath}/images/zw_images/arrow_icon.svg" alt="">
            申请职位
        </div>
        <div class="btn">
            <img class="icon" src="${pageContext.request.contextPath}/images/zw_images/collect.svg" alt="">
            收藏职位
        </div>
        <div class="btn">
            <img class="icon" src="${pageContext.request.contextPath}/images/zw_images/lightbulb.svg" alt="">
            智能排序
        </div>
        <div class="btn">
            <img class="icon" src="${pageContext.request.contextPath}/images/zw_images/time.svg" alt="">
            发布时间
        </div>
        <div id="total">
            <%--共14条数据--%>
        </div>
    </div>
    <%--表格--%>
    <table>
        <thead>
        <tr>
            <td></td>
            <td>职位名</td>
            <td>公司名</td>
            <td>工作地点</td>
            <td>薪资</td>
            <td>发布时间</td>
        </tr>
        <tr>
            <td></td>
            <td>测试工程师</td>
            <td>Ten</td>
            <td>北京</td>
            <td>10—20k</td>
            <td>2024.5.1</td>
        </tr>
        <tr>
            <td></td>
            <td>研发工程师</td>
            <td>Ali</td>
            <td>杭州</td>
            <td>15—25k</td>
            <td>2024.5.2</td>
        </tr>
        <tr>
            <td></td>
            <td>大数据分析工程师</td>
            <td>Byte</td>
            <td>北京</td>
            <td>10—20k</td>
            <td>2024.5.3</td>
        </tr>
        </thead>
        <tbody id="jsContent">
        <tr>
        <td>
        <label>
        <input type="checkbox" class="select">
        </label>
        </td>
        <td>装配工</td>
        <td>北京金绅商贸有限公司</td>
        <td>杭州-江干区</td>
        <td>0.6-1万/月</td>
        <td>01-13</td>
        </tr>
        </tbody>
    </table>
    <%--分页--%>
    <nav aria-label="Page navigation" class="center">
        <ul class="pagination" id="pageInfo">
            <%--<li id="previousPageId"><a href="javascript:void 0">&laquo;</a></li>--%>
        </ul>
    </nav>
</div>


<script>
    let keywords = "${requestScope.keywords}";
</script>
<script src="${pageContext.request.contextPath}/js/jobInfo.js"></script>
</body>
</html>
