<%--
  Created by IntelliJ IDEA.
  User: 小健人
  Date: 2021/6/20
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path=request.getContextPath();
  String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+'/';
%>
<base href="<%=basePath%>">
<html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title></title>
  <link rel="stylesheet" href="EasyUI/css/reset.css" />
  <link rel="stylesheet" href="EasyUI/css/login.css" />
  <script type="text/javascript" src="EasyUI/js/jquery.min.js"></script>
  <%--<script type="text/javascript" src="EasyUI/js/login.js"></script>--%>
  <script type="text/javascript">
    function check_login() {
      const loginId = document.getElementById("loginId");
      const password = document.getElementById("password");
      if (loginId.value == "") {
        window.alert("登录ID不为空");
        loginId.focus();
        return false;
      }
      if (password.value == "") {
        window.alert("登录密码不为空");
        password.focus();
        return false;
      }
    }
  </script>

</head>
<body>
<div class="page">
  <div class="loginwarrp">
    <div class="logo">登录</div>
    <div class="login_form">
      <form id="Login" name="Login" method="post" onsubmit="return check_login()" action="/Login/checkUser" >
        <input name="duty" type="hidden" value="staff">
        <li class="login-item">
          <span>用户名：</span>
          <input type="text" id="loginId" name="loginAccount" class="login_input" oninput = "value=value.replace(/[^\d]/g,'')">
          <span id="count-msg" class="error"></span>
        </li>
        <li class="login-item">
          <span>密　码：</span>
          <input type="password" id="password" name="loginPwd" class="login_input" >
          <span id="password-msg" class="error"></span>
        </li>
        <br>
        <br>
        <li class="login-sub">
          <input type="submit" name="Submit" value="登录"/>
          <input type="reset" name="Reset" value="重置" />
        </li>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript">
  window.onload = function() {
    const config = {
      vx: 4,
      vy: 4,
      height: 2,
      width: 2,
      count: 100,
      color: "121, 162, 185",
      stroke: "100, 200, 180",
      dist: 6000,
      e_dist: 20000,
      max_conn: 10
    };
    CanvasParticle(config);
  }
</script>
<script type="text/javascript" src="EasyUI/js/canvas-particle.js"></script>
</body>
</html>
