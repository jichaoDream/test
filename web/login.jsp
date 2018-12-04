<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/10/31
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
</head>
<body>

<style type="text/css">
    span {
        color: red;
    }
</style>

<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    String msg = (String) request.getAttribute("msg");
    if (msg != null && !"".equals(msg)) {
%>
<span><%=msg%></span>
<%
    }
%>

<form action="dologin.jsp" method="post">
    用户名：<input type="text" name="username"><br/>
    密码：<input type="password" name="password"><br/>
    <input type="checkbox" name="subject" value="javaee"> javaee<br/>
    <input type="checkbox" name="subject" value="javaweb"> javaweb<br/>
    <input type="checkbox" name="subject" value="big date"> big data<br/>
    <input type="checkbox" name="subject" value="Html"> Html<br/>
    <input type="submit" value="提交">


</form>

</body>
</html>
