<%--
  Created by IntelliJ IDEA.
  User: 小健人
  Date: 2021/6/23
  Time: 13:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>
<div>
    作业详情
    <div>
        <div >
            <table>
                <c:forEach var="list" items="${list}">
                    <tr>
                        <th>题目:${list.saqSubject}</th>
                        Account=${sessionScope.Login.loginAccount}&courseId=${list.saqCourseId}&saqId=${list.saqId}
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                        <th><div>
                            <form action="${pageContext.request.contextPath}/HomeworkInfo/doShortHomework?studentAccount=${sessionScope.Login.loginAccount}&courseId=${list.saqCourseId}&saqId=${list.saqId}">
                                <input name="courseId" value="${list.saqCourseId}" hidden/>
                                <input name="studentAccount" value="${sessionScope.Login.loginAccount}" hidden/>
                                <input name="saqId" value="${list.saqId}" hidden/>
                                <textarea name="questionAnswer" style="width:200px; height:200px">

                                </textarea>
                                <input type="submit" class="form-control">
                            </form>
                        </div></th>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>
