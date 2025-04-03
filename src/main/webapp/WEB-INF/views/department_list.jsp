<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>职员管理</title>
</head>
<body>

<h3>职员列表</h3>
<table>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${departmentList}">
        <tr>
            <td>${departmentList.id}</td>
            <td>${departmentList.name}</td>
            <td>${departmentList.age}</td>
            <td>${departmentList.gender}</td>
<%--            <td>--%>
<%--                <a href="mod?id=${emp.id}">修改</a>--%>
<%--                <a href="del?id=${emp.id}">删除</a>--%>
<%--            </td>--%>
        </tr>
    </c:forEach>

</table>


</body>
</html>
