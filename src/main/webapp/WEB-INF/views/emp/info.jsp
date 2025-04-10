<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>员工管理-员工详情</title>
    <base href="http://${header.host}${pageContext.request.contextPath}/emp/">
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
    <script type="text/javascript" src="../js/jquery-3.6.0.js"></script>
</head>

<ol class="breadcrumb">
    <li><a href="../index" target="_parent">首页</a></li>
    <li><a href="query">员工管理</a></li>
    <li class="active">员工详情</li>
</ol>

<table class="table table-bordered table-hover">
    <caption>员工详情</caption>
    <tr>
        <td>ID</td>
        <td>${emp.id}</td>
    </tr>
    <tr>
        <td>编号</td>
        <td>${emp.number}</td>
    </tr>
    <tr>
        <td>姓名</td>
        <td>${emp.name}</td>
    </tr>
    <tr>
        <td>年龄</td>
        <td>${emp.age}</td>
    </tr>
    <tr>
        <td>性别</td>
        <td>${emp.gender}</td>
    </tr>
    <tr>
        <td>所属部门</td>
        <td>${emp.dep.name}</td>
    </tr>
</table>

</body>
</html>
