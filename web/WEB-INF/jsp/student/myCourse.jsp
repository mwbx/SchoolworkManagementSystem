<%--
  Created by IntelliJ IDEA.
  User: 小健人
  Date: 2021/6/23
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>课程</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-8 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>课程号</th>
                    <th>课程名</th>
                    <th>学分</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="courses" items="${courses}">
                    <tr>
                        <td>${courses.courseId}</td>
                        <td>${courses.courseName}</td>
                        <td>${courses.credit}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/HomeworkInfo/getHomework?courseId=${courses.courseId}"/>写作业</a>
                            &nbsp;|&nbsp;
                            <a href=""/>查看历史作业</td>
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
