<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <base href="http://${header.host}${pageContext.request.contextPath}/">
    <title>人事管理系统</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    <script src="js/jquery-3.6.0.js"></script>
    <script>
        $().ready(function () {
            $(".yi").click(function () {
                $(this).next().slideToggle(500);
            })
        })
    </script>
</head>
<body>

<div id="container">
    <div id="top">
        <div id="logo">人事管理系统</div>
    </div>
    <div id="main">
        <div id="left">
            <div class="yi">员工管理</div>
            <ul class="er">
                <li><a href="emp/query" target="right">员工管理</a></li>
                <li><a href="emp/add" target="right">员工添加</a></li>
            </ul>
            <div class="yi">部门管理</div>
            <ul class="er">
                <li><a href="dep/query" target="right">部门管理</a></li>
                <li><a href="dep/add" target="right">部门添加</a></li>
            </ul>
        </div>
        <iframe id="right" name="right" scrolling="no" frameborder="0"
                src="emp/query"></iframe>
    </div>
    <div id="bottom"></div>

</div>


</body>
</html>
