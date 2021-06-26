<%--
  Created by IntelliJ IDEA.
  User: 小健人
  Date: 2021/6/21
  Time: 21:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=utf-8"
         pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <!-- 引入样式文件和动态控制 -->
    <link href="<%=path %>/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="<%=path %>/bootstrap/js/jquery.min.js"></script>
    <!--主要样式控制-->
    <link href="<%=path %>/bootstrap/css/main.css" rel="stylesheet">

    <title>作业管理系统</title>
</head>
<body>
<!--顶部导航栏部分-->
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" title="logoTitle">作业管理系统</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li role="presentation">
                    <a href="#">当前用户：<span class="badge">${sessionScope.Login.loginAccount }</span></a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/Login/outLogin">
                        <%--<span class="glyphicon glyphicon-lock"></span>--%>退出登录</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- 中间主体内容部分 -->
<div class="pageContainer">
    <!-- 左侧导航栏 -->
    <div class="pageSidebar">
        <ul class="nav nav-stacked nav-pills">
            <li role="presentation">
                <a href="${pageContext.request.contextPath}/Course/StudentOwnCourse?studentAccount=${sessionScope.Login.loginAccount}" target="mainFrame">我的课程</a>
            </li>
            <li role="presentation">
                <a href="/Login/toUpdatePassword" target="mainFrame">修改密码</a>
            </li>
        </ul>
    </div>

    <!-- 左侧导航和正文内容的分隔线 -->
    <div class="splitter"></div>
    <!-- 正文内容部分 -->
    <div class="pageContent">
        <iframe src="${pageContext.request.contextPath}/Course/StudentOwnCourse?studentAccount=${sessionScope.Login.loginAccount}" id="mainFrame" name="mainFrame"
                frameborder="0" width="100%"  height="100%" frameBorder="0">
        </iframe>
    </div>

</div>
<!-- 底部页脚部分 -->
<div class="footer">
    <p class="text-center">
    </p>
</div>

<script type="text/javascript">
    $(".nav li").button(function() { /*click*/
        $(".active").removeClass('active');
        $(this).addClass("active");
    });
</script>
</body>
</html>
