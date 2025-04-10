<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <base href="http://${header.host}${pageContext.request.contextPath}/dep/">
    <title>部门管理-修改部门信息</title>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
    <script type="text/javascript" src="../js/jquery-3.6.0.js"></script>
</head>
<body>

<ol class="breadcrumb">
    <li><a href="../index" target="_parent">首页</a></li>
    <li><a href="query">部门管理</a></li>
    <li class="active">修改部门信息</li>
</ol>

<form action="mod" method="post" class="form-horizontal">
    <input type="hidden" name="id" value="${dep.id}"/>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="depNumber">编号</label>
        <div class="col-sm-10">
            <input class="form-control" type="text" id="depNumber" name="number"
                   placeholder="编号" value="${dep.number}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="depName">名称</label>
        <div class="col-sm-10">
            <input class="form-control" type="text" id="depName" name="name"
                   placeholder="名称" value="${dep.name}">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-primary">保 存</button>
        </div>
    </div>

</form>


</body>
</html>
