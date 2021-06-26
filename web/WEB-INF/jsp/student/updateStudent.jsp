<%--
  Created by IntelliJ IDEA.
  User: 小健人
  Date: 2021/6/21
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改学生信息</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改学生信息</small>
                </h1>
            </div>
        </div>
        <form action="${pageContext.request.contextPath}/Student/updateStudent" method="post">
            <input name="studentId"  type="hidden" value="${QStudent.studentId}"/>
            <div class="form-group">
                <label>学生账号</label>
                <input type="text" name="studentAccount" class="form-control" value="${QStudent.studentAccount}" required>
            </div>
            <div class="form-group">
                <label>学生姓名</label>
                <input type="text" name="studentName" class="form-control" value="${QStudent.studentName}" required>
            </div>
            <div class="form-group">
                <label>学生性别</label>
                <input type="text" name="studentSex" class="form-control" value="${QStudent.studentSex}" required>
            </div>
            <div class="form-group">
                <label>学生年龄</label>
                <input type="text" name="studentAge" class="form-control" value="${QStudent.studentAge}" required>
            </div>
            <div class="form-group">
                <label>学生学院</label>
                <input type="text" name="studentInstitute" class="form-control" value="${QStudent.studentInstitute}" required>
            </div>
            <div class="form-group">
                <label>学生专业</label>
                <input type="text" name="major" class="form-control" value="${QStudent.major}" required>
            </div>
            <div class="form-group">
                <label>学生班级</label>
                <input type="text" name="studentClass" class="form-control" value="${QStudent.studentClass}" required>
            </div>
            <div class="form-group">
                <label>学生电话</label>
                <input type="text" name="studentPhone" class="form-control" value="${QStudent.studentPhone}" required>
            </div>
            <div class="form-group">
                <label>学生状态</label>
                <input type="text" name="studentAuthenticationStatus" class="form-control" value="${QStudent.studentAuthenticationStatus}" required>
            </div>
            <div class="form-group">
                <label>修改</label>
                <input type="submit" class="form-control">
            </div>
        </form>
    </div>
</div>
</body>
</html>
