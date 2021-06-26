<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 小健人
  Date: 2021/6/22
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
                <%--                    查询框--%>
                <form action="" method="post">
                    <div class="col-md-8 column">
                        <input type="text" name="queryTeacherName" class="form-control" placeholder="请输入要查询的题目" >
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
                    <th>题目id</th>
                    <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                    <th>科目id</th>
                    <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                    <th>题目</th>
                    <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                    <th>答案</th>
                    <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="list" items="${list}">
                    <tr>
                        <td>${list.saqId}</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>${list.saqCourseId}</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>${list.saqSubject}</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>${list.saqAnswer}</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/HomeworkInfo/addSAQ?courseId=${list.saqCourseId}
                            &teacherAccount=${sessionScope.Login.loginAccount}&questionType=1&questionId=${list.saqId}"/>发布</a>
                            &nbsp;|&nbsp;
                            <a href="${pageContext.request.contextPath}">选择</a>
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
