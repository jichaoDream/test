<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/11/6
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    //用户名：季超   密码：123456  可以登录  否则跳回登录页面
    if (username.equals("季超") && password.equals("123456")) {
        //转发     到loginSuccess页面
        request.getRequestDispatcher("loginSuccess.jsp").forward(request, response);
        //重定向     用session保存用户名
        session.setAttribute("name", username);
        session.setAttribute("pwd", password);
        response.sendRedirect("loginSuccess.jsp");


    } else {
        session.setAttribute("mess", "您的密码或用户名错误");
        //重定向  session保存
        response.sendRedirect("userLogin.jsp");
    }


%>
</body>
</html>
