<%--
  Created by IntelliJ IDEA.
  User: 小健人
  Date: 2021/6/21
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <title>老师添加页面</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增老师</small>
                </h1>
            </div>
        </div>
        <form action="${pageContext.request.contextPath}/Teacher/addTeacher" method="post">
            <div class="form-group">
                <label>老师账号</label>
                <input type="text" name="teacherAccount" class="form-control" required>
            </div>
            <div class="form-group">
                <label>老师姓名</label>
                <input type="text" name="teacherName" class="form-control" required>
            </div>
            <div class="form-group">
                <label>老师性别</label>
                <input type="text" name="teacherSex" class="form-control" required>
            </div>
            <div class="form-group">
                <label>老师年龄</label>
                <input type="text" name="teacherAge" class="form-control" required>
            </div>
            <div class="form-group">
                <label>老师电话</label>
                <input type="text" name="teacherPhone" class="form-control" required>
            </div>
            <div class="form-group">
                <label>老师邮箱</label>
                <input type="text" name="teacherEmail" class="form-control" required>
            </div>
            <div class="form-group">
                <label>提交</label>
                <input type="submit" class="form-control">
            </div>
        </form>
    </div>
</div>
</body>
</html>
