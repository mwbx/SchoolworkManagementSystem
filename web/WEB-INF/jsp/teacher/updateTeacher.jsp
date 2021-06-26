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
        <form action="${pageContext.request.contextPath}/Teacher/updateTeacher" method="post">
            <input name="teacherId"  type="hidden" value="${QTeacher.teacherId}"/>
            <div class="form-group">
                <label>老师账号</label>
                <input type="text" name="teacherAccount" class="form-control" value="${QTeacher.teacherAccount}" required>
            </div>
            <div class="form-group">
                <label>老师姓名</label>
                <input type="text" name="teacherName" class="form-control" value="${QTeacher.teacherName}" required>
            </div>
            <div class="form-group">
                <label>老师性别</label>
                <input type="text" name="teacherSex" class="form-control" value="${QTeacher.teacherSex}" required>
            </div>
            <div class="form-group">
                <label>老师年龄</label>
                <input type="text" name="teacherAge" class="form-control" value="${QTeacher.teacherAge}" required>
            </div>
            <div class="form-group">
                <label>老师职位</label>
                <input type="text" name="teacherPosition" class="form-control" value="${QTeacher.teacherPosition}" required>
            </div>
            <div class="form-group">
                <label>老师电话</label>
                <input type="text" name="teacherPhone" class="form-control" value="${QTeacher.teacherPhone}" required>
            </div>
            <div class="form-group">
                <label>老师电子邮件</label>
                <input type="text" name="teacherEmail" class="form-control" value="${QTeacher.teacherEmail}" required>
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
