<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/11/6
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome！</title>
</head>
<body>
<%
    String username = (String) session.getAttribute("name");//通过name获取表单中的数据
    String password = (String) session.getAttribute("pwd");
%>
欢迎<%=username%>登录
<br/>
您的密码是：<%=password%>
<input type="button" value="注销" onclick="">


</body>
</html>
