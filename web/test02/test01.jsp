<%@ page import="com.JDBC.dao.imp.BassDaoImp1" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/11/20
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    System.out.println(new BassDaoImp1().getCon());
%>

</body>
</html>
