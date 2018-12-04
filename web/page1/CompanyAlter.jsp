<%@ page import="com.JDBC.dao.CompanyDao" %>
<%@ page import="com.JDBC.dao.imp.CompanyDaoImp1" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/11/14
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String cid = request.getParameter("cid");
    CompanyDao companyDao = new CompanyDaoImp1();

%>

<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
