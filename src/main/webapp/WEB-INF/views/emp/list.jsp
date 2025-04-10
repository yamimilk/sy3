<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>职员管理</title>
    <base href="http://${header.host}${pageContext.request.contextPath}/emp/">
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="../css/style.css">
    <script type="text/javascript" src="../js/jquery-3.6.0.js"></script>

    <script>
        $(document).ready(function () {
            $("#add").click(function () {
                location.href = "add";
            })

            var id = -1;
            $(".data").click(function () {
                $(".data").removeClass("selected");
                $(this).addClass("selected");
                id = $(this).data("id");
            })

            $("#mod").click(function () {
                if (id > -1) {
                    location.href = "mod?id=" + id;
                } else {
                    alert("未选中数据");
                }
            })

            $("#del").click(function () {
                if (id > -1) {
                    location.href = "del?id=" + id;
                } else {
                    alert("未选中数据");
                }
            })

        })

    </script>
</head>
<body>


<ol class="breadcrumb">
    <li><a href="../index" target="_parent">首页</a></li>
    <li class="active">员工管理</li>
</ol>


<form id="query" action="query" method="post" class="form-inline">
    <div class="form-group">
        <label class="sr-only" for="inputName"></label>
        <input type="text" id="inputName" name="name" placeholder="姓名"
               value="${c.name}" class="form-control"/>
    </div>
    <div class="form-group">
        <label class="sr-only" for="inputNumber">编号</label>
        <input type="text" id="inputNumber" name="number" placeholder="编号"
               value="${c.number}" class="form-control"/>
    </div>
    <div class="form-group">
        <label class="sr-only" for="inputNumber">性别</label>
        <select name="gender" class="form-control">
            <option value=""></option>
            <option value="男">男</option>
            <option value="女">女</option>
        </select>
    </div>
    <div class="form-group">
        <label class="sr-only" for="inputNumber">部门</label>
        <select name="dep.id"  class="form-control">
            <option value=""></option>
            <c:forEach items="${deps }" var="dep">
                <option value="${dep.id }">${dep.name }</option>
            </c:forEach>
        </select>
    </div>
    <button type="submit" class="btn btn-primary">搜索</button>
    <button type="reset" class="btn btn-primary" onclick="location.href='query'">重置</button>
</form>


<div id="container">

    <table class="table table-bordered table-hover">
        <tr>
            <th>编号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>年龄</th>
            <th>部门</th>
        </tr>
        <c:forEach items="${emps }" var="emp">
            <tr class="data" data-id="${emp.id}">
                <td>${emp.number}</td>
                <td>${emp.name}</td>
                <td>${emp.gender}</td>
                <td>${emp.age}</td>
                <td>${emp.dep.name}</td>
            </tr>
        </c:forEach>
    </table>
    <c:if test="${pageInfo.hasPreviousPage}">
        <a href="query?pageNum=${pageInfo.prePage}" class="btn btn-default">上一页</a>
    </c:if>
    <c:if test="${pageInfo.hasNextPage}">
        <a href="query?pageNum=${pageInfo.nextPage}" class="btn btn-default">下一页</a>
    </c:if>

    <button type="button" id="add" class="btn btn-info">新增</button>
    <button type="button" id="mod" class="btn btn-info">修改</button>
    <button type="button" id="del" class="btn btn-info">删除</button>

</div>

</body>
</html>
