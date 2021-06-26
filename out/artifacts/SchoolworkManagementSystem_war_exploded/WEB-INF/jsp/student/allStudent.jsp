
<%--
  Created by IntelliJ IDEA.
  User: 小健人
  Date: 2021/6/20
  Time: 19:14
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生展示页面</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
   <div class="container">
       <div class="row clearfix">
           <div class="col-md-12 column">
               <div class="page-header">
               <h1>
                   <small>学生</small>
               </h1>
               </div>
           </div>
           <div class="row">
               <div class="col-md-4 column">
                   <a class="btn btn-primary" href="${pageContext.request.contextPath}/Student/toAddStudentPage">新增学生</a>
               </div>
               <div class="col-md-4 column">
<%--                    查询框--%>
                   <form action="${pageContext.request.contextPath}/Student/selectStudent" method="post">
                       <div class="col-md-8 column">
                        <input type="text" name="queryStudentName" class="form-control" placeholder="请输入要查询的名字" >
                       </div>
                       <div class="col-md-4 column">
                        <input type="submit" value="查询" class="btn btn-primary">
                       </div>
                   </form>
               </div>
           </div>
       </div>
       <div class="row clearfix">
           <div class="col-md-12 column">
               <table class="table table-hover table-striped">
                   <thead>
                        <tr>
                        <th>学生编号</th>
                        <th>学生账号</th>
                        <th>学生名字</th>
                        <th>学生性别</th>
                        <th>学生年龄</th>
                        <th>学生学院</th>
                        <th>学生专业</th>
                        <th>学生班级</th>
                        <th>学生电话</th>
                        <th>操作</th>
                        </tr>
                   </thead>
                   <tbody>
                    <c:forEach var="student" items="${list}">
                        <tr>
                            <td>${student.studentId}</td>
                            <td>${student.studentAccount}</td>
                            <td>${student.studentName}</td>
                            <td>${student.studentSex}</td>
                            <td>${student.studentAge}</td>
                            <td>${student.studentInstitute}</td>
                            <td>${student.major}</td>
                            <td>${student.studentClass}</td>
                            <td>${student.studentPhone}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/Student/toUpdateStudentPage?studentId=${student.studentId}"/>修改</a>
                                &nbsp;|&nbsp;
                                <a onclick="javascript:return confirm('您确定要删除吗？')" href="${pageContext.request.contextPath}/Student/deleteStudent?studentId=${student.studentId}">删除</a>
                            </td>
                        </tr>

                    </c:forEach>
                   </tbody>
               </table>
           </div>
       </div>
   </div>
</body>
</html>
