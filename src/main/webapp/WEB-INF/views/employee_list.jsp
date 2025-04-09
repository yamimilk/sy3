<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>职员管理</title>
</head>
<body>
<h3>职员列表</h3>
<table>
    <tr>
        <th>number</th>
        <th>name</th>
        <th>gender</th>
        <th>age</th>
<%--        <th>操作</th>--%>
    </tr>
    <c:forEach var="emp" items="${employeeList}">
        <tr>
            <<td>${emp.number}</td>
            <td>${emp.name}</td>
            <td>${emp.gender}</td>
            <td>${emp.age}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
