<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/10/30
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新闻标题</title>
</head>
<body>
<!--前端注释-->
<%--JSP注释--%>
<%
    for (int i = 1; i < 10; i++) {
        for (int j = 1; j <= i; j++) {
%>
<%=j + "*" + i + "=" + (i * j)%>
<% }
%>
<br/>

<%
    }
%>


</body>
</html>
