<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>员工管理-修改员工信息</title>
    <base href="http://${header.host}${pageContext.request.contextPath}/emp/">
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
    <script type="text/javascript" src="../js/jquery-3.6.0.js"></script>
</head>
<body>

<div id="container">

    <ol class="breadcrumb">
        <li><a href="../index" target="_parent">首页</a></li>
        <li><a href="query">员工管理</a></li>
        <li class="active">修改员工信息</li>
    </ol>


    <form action="mod" method="post" class="form-horizontal">
        <input type="hidden" name="id" value="${emp.id}"/>
        <div class="form-group">
            <label class="col-sm-2 control-label" for="empNumber">编号</label>
            <div class="col-sm-10">
                <input class="form-control" type="text" id="empNumber"
                       name="number" placeholder="编号" value="${emp.number}">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" for="empName">姓名</label>
            <div class="col-sm-10">
                <input class="form-control" type="text" id="empName" name="name"
                       placeholder="姓名" value="${emp.name}">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" for="empNumber">性别</label>
            <div class="col-sm-10">
                <label class="radio-inline">
                    <input type="radio" name="gender" id="empGenderM"
                           value="男" ${emp.gender=="男"?"checked":""}> 男
                </label>
                <label class="radio-inline">
                    <input type="radio" name="gender" id="empGenderF"
                           value="女" ${emp.gender=="女"?"checked":""}> 女
                </label>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" for="empAge">年龄</label>
            <div class="col-sm-10">
                <input class="form-control" type="text" id="empAge" name="age"
                       placeholder="年龄" value="${emp.age}">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" for="empNumber">部门</label>
            <div class="col-sm-10">
                <select name="dep.id" class="form-control">
                    <c:forEach items="${deps}" var="dep">
                        <option value="${dep.id}" ${emp.dep.id==dep.id?"selected":""}>${dep.name}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-primary">保 存</button>
            </div>
        </div>

    </form>

</div>

</body>
</html>
