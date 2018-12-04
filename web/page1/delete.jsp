<%@ page import="com.JDBC.dao.CompanyDao" %>
<%@ page import="com.JDBC.dao.imp.CompanyDaoImp1" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/11/13
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //获取参数
    String cid = request.getParameter("cid");
    int id = Integer.parseInt(cid);
    CompanyDao companyDao = new CompanyDaoImp1();
    companyDao.deleteByCid(id);
    response.sendRedirect("CompanyList.jsp");
//    request.getRequestDispatcher("CompanyList.jsp").forward(request,response);
%>




