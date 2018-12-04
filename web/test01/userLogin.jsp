<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/11/6
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    String mess = (String) session.getAttribute("mess");//返回登录不正确
    if (mess != null) {
%>
<%=mess%>
<%
    }
%>
<%
    Integer number = (Integer) application.getAttribute("number");
    if (number == null) {
        number = 1;
        application.setAttribute("number", number);
    } else {
        number++;
        application.setAttribute("number", number);
    }
%>
您是第<%=number%>次登录的用户
<form action="dologin.jsp" method="post">
    <input type="text" name="username"/>
    <input type="password" name="password">
    <input type="submit" value="提交">
</form>


</body>
</html>
