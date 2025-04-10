<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>部门管理-部门详情</title>
    <base href="http://${header.host}${pageContext.request.contextPath}/dep/">
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="../css/style.css">
    <script type="text/javascript" src="../js/jquery-3.6.0.js"></script>
</head>
<body>

<ol class="breadcrumb">
    <li><a href="../index" target="_parent">首页</a></li>
    <li><a href="query">部门管理</a></li>
    <li class="active">部门详情</li>
</ol>


<table class="table table-bordered table-hover">
    <caption>部门详情</caption>
    <tr>
        <th>ID</th>
        <th>编号</th>
        <th>名称</th>
    </tr>
    <tr>
        <td>${dep.id}</td>
        <td>${dep.number}</td>
        <td>${dep.name}</td>
    </tr>
</table>


<div id="container">

    <c:if test="${!empty dep.employees}">
    <table class="table table-bordered table-hover">
        <caption>本部门职员</caption>
        <tr>
            <th>ID</th>
            <th>编号</th>
            <th>姓名</th>
            <th>年龄</th>
            <th>性别</th>
        </tr>
        <c:forEach items="${dep.employees}" var="emp">
            <tr class="data" data-id="${emp.id}">
                <td>${emp.number}</td>
                <td>${emp.name}</td>
                <td>${emp.age}</td>
                <td>${emp.gender}</td>
            </tr>
        </c:forEach>
    </table>
    </c:if>
</div>

</body>
</html>
