<%@ page import="com.JDBC.dao.CompanyDao" %>
<%@ page import="com.JDBC.dao.imp.CompanyDaoImp1" %>
<%@ page import="com.JDBC.dao.imp.Company" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/11/13
  Time: 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>公司详情</title>
    <%
        String cid = request.getParameter("cid");
        int id = Integer.parseInt(cid);
        CompanyDao companyService = new CompanyDaoImp1();
        Company company = companyService.getCompanyBycid(id);
    %>
    <style type="text/css">
        tr {
            text-align: center;
        }
    </style>
</head>
<body>

<table border="1px">
    <tr>
        <td>公司编号</td>
        <td><%=company.getCid()%>
        </td>
    </tr>
    <tr>
        <td>职位名</td>
        <td><%=company.getZwName()%>
        </td>
    <tr>
        <td>公司名</td>
        <td><%=company.getCname()%>
        </td>
    </tr>
    <tr>
        <td>工作地点</td>
        <td><%=company.getPlace()%>
        </td>
    </tr>
    <tr>
        <td>产业</td>
        <td><%=company.getCcy()%>
        </td>
    </tr>
    <tr>
        <td>公司名</td>
        <td><%=company.getCname()%>
        </td>
    </tr>
    <tr>
        <td>最低薪资</td>
        <td><%=company.getLsalary()%>
        </td>
    </tr>

    <tr>
        <td>最低薪资</td>
        <td><%=company.getHsalary()%>
        </td>
    </tr>
</table>


</body>
</html>

