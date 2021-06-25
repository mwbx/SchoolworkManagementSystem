<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 小健人
  Date: 2021/6/20
  Time: 19:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>老师展示页面</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
   <div class="container">
       <div class="row clearfix">
           <div class="col-md-12 column">
               <div class="page-header">
               <h1>
                   <small>老师</small>
               </h1>
               </div>
           </div>
           <div class="row">
               <div class="col-md-4 column">
                   <a class="btn btn-primary" href="${pageContext.request.contextPath}/Teacher/toAddTeacherPage">新增老师</a>
               </div>
               <div class="col-md-4 column">
<%--                    查询框--%>
                   <form action="${pageContext.request.contextPath}/Teacher/selectTeacher" method="post">
                       <div class="col-md-8 column">
                        <input type="text" name="queryTeacherName" class="form-control" placeholder="请输入要查询的名字" >
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
                        <th>老师编号</th>
                        <th>老师账号</th>
                        <th>老师名字</th>
                        <th>老师性别</th>
                        <th>老师年龄</th>
                        <th>老师职位</th>
                        <th>老师电话</th>
                        <th>老师邮箱</th>
                        <th>操作</th>
                        </tr>
                   </thead>
                   <tbody>
                    <c:forEach var="teacher" items="${list}">
                        <tr>
                            <td>${teacher.teacherId}</td>
                            <td>${teacher.teacherAccount}</td>
                            <td>${teacher.teacherName}</td>
                            <td>${teacher.teacherSex}</td>
                            <td>${teacher.teacherAge}</td>
                            <td>${teacher.teacherPosition}</td>
                            <td>${teacher.teacherPhone}</td>
                            <td>${teacher.teacherEmail}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/Teacher/toUpdateTeacherPage?teacherId=${teacher.teacherId}"/>修改</a>
                                &nbsp;|&nbsp;
                                <a onclick="javascript:return confirm('您确定要删除吗？')" href="${pageContext.request.contextPath}/Teacher/deleteTeacher?teacherId=${teacher.teacherId}">删除</a>
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
