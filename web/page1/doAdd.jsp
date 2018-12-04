<%@ page import="com.JDBC.dao.imp.Company" %>
<%@ page import="com.JDBC.dao.CompanyDao" %>
<%@ page import="com.JDBC.dao.imp.CompanyDaoImp1" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/11/14
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String c_id = request.getParameter("c_id");
    int id = Integer.parseInt(c_id);
    String zwName = request.getParameter("职位名");
    String cName = request.getParameter("公司名");
    String place = request.getParameter("工作地点");
    String xingzhi = request.getParameter("公司性质");
    String guimo = request.getParameter("公司规模");
    String chanye = request.getParameter("产业");
    String low = request.getParameter("最低薪资");
    Double low1 = Double.parseDouble(low);
    String height = request.getParameter("最高薪资");
    Double hhh = Double.parseDouble(height);
    Company company = new Company(id, zwName, cName, place, xingzhi, guimo, chanye
            , low1, hhh);
    CompanyDao companyDao = new CompanyDaoImp1();
    companyDao.add(company);
    response.sendRedirect("CompanyList.jsp");

%>
