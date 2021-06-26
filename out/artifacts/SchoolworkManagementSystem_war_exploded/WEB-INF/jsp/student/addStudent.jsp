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
    <title>学生添加页面</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增学生</small>
                </h1>
            </div>
        </div>
        <form action="${pageContext.request.contextPath}/Student/addStudent" method="post">
            <div class="form-group">
                <label>学生账号</label>
                <input type="text" name="studentAccount" class="form-control" required>
            </div>
            <div class="form-group">
                <label>学生姓名</label>
                <input type="text" name="studentName" class="form-control" required>
            </div>
            <div class="form-group">
                <label>学生性别</label>
                <input type="text" name="studentSex" class="form-control" required>
            </div>
            <div class="form-group">
                <label>学生年龄</label>
                <input type="text" name="studentAge" class="form-control" required>
            </div>
            <div class="form-group">
                <label>学生学院</label>
                <input type="text" name="studentInstitute" class="form-control" required>
            </div>
            <div class="form-group">
                <label>学生专业</label>
                <input type="text" name="major" class="form-control" required>
            </div>
            <div class="form-group">
                <label>学生班级</label>
                <input type="text" name="studentClass" class="form-control" required>
            </div>
            <div class="form-group">
                <label>学生电话</label>
                <input type="text" name="studentPhone" class="form-control" required>
            </div>
            <div class="form-group">
                <label>学生状态</label>
                <input type="text" name="studentAuthenticationStatus" class="form-control" required>
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
