<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>员工管理-新增员工</title>
    <base href="http://${header.host}${pageContext.request.contextPath}/emp/">
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
    <script type="text/javascript" src="../js/jquery-3.6.0.js"></script>
</head>
<body>

<ol class="breadcrumb">
    <li><a href="../index" target="_parent">首页</a></li>
    <li><a href="query">员工管理</a></li>
    <li class="active">新增员工</li>
</ol>

<form action="add" method="post" class="form-horizontal">
    <div class="form-group">
        <label class="col-sm-2 control-label" for="empNumber">编号</label>
        <div class="col-sm-10">
            <input class="form-control" type="text" id="empNumber"
                   name="number" placeholder="编号">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="empName">姓名</label>
        <div class="col-sm-10">
            <input class="form-control" type="text" id="empName" name="name"
                   placeholder="姓名">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="empGenderM">性别</label>
        <div class="col-sm-10">
            <label class="radio-inline">
                <input type="radio" name="gender" id="empGenderM" value="男"
                       checked> 男
            </label>
            <label class="radio-inline">
                <input type="radio" name="gender" id="empGenderF" value="女">
                女
            </label>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="empAge">年龄</label>
        <div class="col-sm-10">
            <input class="form-control" type="text" id="empAge" name="age"
                   placeholder="年龄">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">部门</label>
        <div class="col-sm-10">
            <select name="dep.id" class="form-control">
                <c:forEach items="${deps}" var="dep">
                    <option value="${dep.id}">${dep.name}</option>
                </c:forEach>
            </select>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-primary">保 存</button>
            <button type="reset" class="btn btn-primary">重 置</button>
        </div>
    </div>

</form>


</body>
</html>