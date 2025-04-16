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
<style>
    #top {
        position: relative;
        height: 60px;
        background-color: #f5f5f5;
        padding: 10px 20px;
    }

    #logo {
        font-size: 24px;
        font-weight: bold;
        float: left;
    }

    #logout-btn {
        position: absolute;
        right: 20px;
        top: 50%;
        transform: translateY(-50%);
    }

    #logout-btn a {
        color: #333;
        text-decoration: none;
        font-size: 16px;
        border: 1px solid #ccc;
        padding: 5px 10px;
        border-radius: 4px;
        background-color: #eee;
    }

    #logout-btn a:hover {
        background-color: #ddd;
    }
</style>

<div id="container">
    <div id="top">
        <div id="logo">人事管理系统</div>
        <div id="logout-btn">
            <a href="admin/logout">退出登录</a>
        </div>
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
