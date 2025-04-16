<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>管理员登录</title>
    <style>
        body {
            font-family: "Helvetica Neue", sans-serif;
            background-color: #f2f2f2;
        }
        .login-container {
            width: 360px;
            margin: 100px auto;
            padding: 40px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 0 10px #ccc;
        }
        .login-container h2 {
            text-align: center;
            margin-bottom: 30px;
        }
        .form-group {
            margin: 20px 0;
        }
        label {
            display: block;
            margin-bottom: 6px;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
        }
        .btn {
            width: 100%;
            background-color: #3498db;
            border: none;
            color: white;
            padding: 12px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 4px;
        }
        .error {
            color: red;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="login-container">
    <h2>管理员登录</h2>

    <!-- 错误提示 -->
    <c:if test="${not empty error}">
        <div class="error">${error}</div>
    </c:if>

    <form action="${pageContext.request.contextPath}/admin/login" method="post">
        <div class="form-group">
            <label for="username">用户名：</label>
            <input type="text" name="username" id="username" required />
        </div>
        <div class="form-group">
            <label for="password">密码：</label>
            <input type="password" name="password" id="password" required />
        </div>
        <input type="submit" class="btn" value="登录" />
    </form>
</div>
</body>
</html>
