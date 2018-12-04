<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/10/31
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功</title>
</head>
<body>
<%
    //处理post  中文字符乱码
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    String username = request.getParameter("username");
    String[] subs = request.getParameterValues("subject");
%>
欢迎<%=username%>登录
所选课程：
<%--<%--%>
<%--for(int i=0;i<subs.length;i++){--%>
<%--%>--%>
<%--<%=subs[i]%><br/>--%>
<%--<%--%>
<%--}--%>
<%--%>--%>
</body>
</html>
