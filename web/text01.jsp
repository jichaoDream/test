<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/10/30
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //定义变量及调用方式
    String title = "丰县精神";
    out.println(title);
%>
<%=title%>
<%
    Date date = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
    String format = sdf.format(date);
    out.println(format);
%>
<br/>
<%--局部变量--%>
<%
    int num = 10;
%>
<%--全局变量--%>
<%!
    int num = 11;
%>
<%=num%>
<%--取全局变量--%>
<%=this.num%>
<% out.println();
%>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/test01.js">

</script>
</html>
