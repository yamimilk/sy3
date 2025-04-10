<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>部门管理-添加部门</title>
    <base href="http://${header.host}${pageContext.request.contextPath}/dep/">
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
    <script type="text/javascript" src="../js/jquery-3.6.0.js"></script>
</head>
<body>

<ol class="breadcrumb">
    <li><a href="../index" target="_parent">首页</a></li>
    <li><a href="query">部门管理</a></li>
    <li class="active">新增部门</li>
</ol>

<form action="add" method="post" class="form-horizontal">
    <div class="form-group">
        <label class="col-sm-2 control-label" for="depNumber">编号</label>
        <div class="col-sm-10">
            <input class="form-control" type="text" id="depNumber" name="number"
                   placeholder="编号">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="depName">名称</label>
        <div class="col-sm-10">
            <input class="form-control" type="text" id="depName" name="name"
                   placeholder="名称">
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
