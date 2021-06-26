<%--
  Created by IntelliJ IDEA.
  User: 小健人
  Date: 2021/6/22
  Time: 9:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
选择题目
<a href="${pageContext.request.contextPath}/getHomework/selectShortQuestion?saqCourseId=${sessionScope.courseId}">简答题</a>
</body>
</html>
