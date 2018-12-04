<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/10/31
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    String username = request.getParameter("username");
    String pwd = request.getParameter("password");
    if (username.equals("admin") && pwd.equals("123456")) {
        //重定向
        response.sendRedirect("loginsuccess.jsp");
        //转发
        //request.getRequestDispatcher("loginsuccess.jsp").forward(request,response);
    } else {
        request.setAttribute("msg", "用户名或密码不正确！");
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
%>
