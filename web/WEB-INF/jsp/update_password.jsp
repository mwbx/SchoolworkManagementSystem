<%--
  Created by IntelliJ IDEA.
  User: 小健人
  Date: 2020/11/29
  Time: 22:32
  To change this template use File | Settings | File Templates.
--%>
<%@page pageEncoding="UTF-8" contentType="text/html;utf-8" import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta charset="utf-8">
    <title>Bootstrap </title>
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <script type="text/javascript">
        function beforeSubmit(form){
            if(form.oldPassword.value==''){
                alert('旧不能为空！');
                form.oldPassword.focus();
                return false;
            }
            if(form.newPassword.value==''){
                alert('新不能为空！');
                form.newPassword.focus();
                return false;
            }
            if (form.newPassword.value==form.oldPassword.value)
            {
                alert('新旧密码不应该相等！');
                form.newPassword.focus();
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="${pageContext.request.contextPath}/bootstrap/js/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>

<form action="/Login/UpdatePassword" method="post" class="form-control" onSubmit="return beforeSubmit(this);">
    <div style="text-align: center; font-size: 20px; color: black;font-family: 华文楷体;">更新密码</div><br>
    <div style="text-align: center;">
    <input name="loginAccount" type="hidden" id="loginAccount" value=${sessionScope.Login.loginAccount} />
        <input name="oldPassword" size="60"  type="password"  id="oldPassword" placeholder="旧密码"/><br><br>
        <input name="newPassword"  size="60" type="password" id="newPassword" placeholder="新密码"/><br><br>
    <div class="form-group">
        <button value="update password" type="submit" class="btn btn-info">修改</button>
    </div>
    </div>
</form>
</body>
</html>
