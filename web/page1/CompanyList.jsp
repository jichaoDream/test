<%@ page import="com.JDBC.dao.CompanyDao" %>
<%@ page import="com.JDBC.dao.imp.CompanyDaoImp1" %>
<%@ page import="java.util.List" %>
<%@ page import="com.JDBC.dao.imp.Company" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/11/13
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>数据展示</title>
    <%
        CompanyDao companyDao = new CompanyDaoImp1();

        String index = request.getParameter("pageIndex");
        Integer pageIndex  ;
        if (index==null){
            pageIndex = 1;
        }else {
            pageIndex = Integer.parseInt(index.trim()) ;
        }
        Integer pageSize =10;
        List<Company> list = companyDao.getPages(pageIndex,pageSize);
        request.setAttribute("list",list);
        int sum = companyDao.getCount();
        int pageCount = sum%pageSize==0?sum/pageSize:sum/pageSize+1;
    %>
    <style type="text/css">
        tr {
            text-align: center;
        }
    </style>
</head>
<body>
<table border="1px" width="100%" cellspacing="0">
    <caption>公司信息表</caption>
    <tr align="center">
        <td>公司编号</td>
        <td>职位名</td>
        <td>公司名</td>
        <td>工作地点</td>
        <td>其他功能</td>
        <%--<td>公司性质</td>--%>
        <%--<td>公司规模</td>--%>
        <%--<td>产业</td>--%>
        <%--<td>最低工资</td>--%>
        <%--<td>最高工资</td>--%>
    </tr>
    <tr>
        <td colspan="5"><a href="add.jsp">增加</a></td>
    </tr>
    <c:forEach items="${list}" var="list1" varStatus="status">
        <tr align="center">
            <td>${list1.cid}</td>
            <td>${list1.zwName}</td>
            <td>${list1.cname}</td>
            <td>${list1.place}</td>
        <td><a href="CompanyNew.jsp?cid=${list1.cid}">修改</a>
        | <a href="CompanyNew.jsp?cid=${list1.cid}">详细信息</a>
        | <a href="delete.jsp?cid=${list1.cid}">删除</a></td>
    </tr>
</c:forEach>

<%--<%--%>
        <%--for (int i = 0; i < list.size(); i++) {--%>
    <%--%>--%>
    <%--<tr align="center">--%>
        <%--<td><%=list.get(i).getCid()%>--%>
        <%--</td>--%>
        <%--<td><%=list.get(i).getZwName()%>--%>
        <%--</td>--%>
        <%--<td><%=list.get(i).getCname()%>--%>
        <%--</td>--%>
        <%--<td><%=list.get(i).getPlace()%>--%>
        <%--</td>--%>
        <%--<td><a href="CompanyNew.jsp?cid=<%=list.get(i).getCid()%>">修改</a>--%>

            <%--| <a href="CompanyNew.jsp?cid=<%=list.get(i).getCid()%>">详细信息</a>--%>
            <%--| <a href="delete.jsp?cid=<%=list.get(i).getCid()%>">删除</a></td>--%>


        <%--&lt;%&ndash;<td><%=list.get(i).getCid()%></td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td><%=list.get(i).getCid()%></td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td><%=list.get(i).getCid()%></td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td><%=list.get(i).getCid()%></td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td><%=list.get(i).getCid()%></td>&ndash;%&gt;--%>
    <%--</tr>--%>

    <%--<%--%>
        <%--}--%>
    <%--%>--%>

</table>
   共有<%=sum%>条记录， <%=pageCount%>页
<a href="CompanyList.jsp?pageIndex=1">首页</a>
<%
    if (pageIndex>1){
        %>
        <a href="CompanyList.jsp?pageIndex=<%=pageIndex-1%>">上一页</a>
        <%
    }
%>
<%
    if (pageIndex<pageCount){
%>
<a href="CompanyList.jsp?pageIndex=<%=pageIndex+1%>">下一页</a>
<%
    }
%>
<a href="CompanyList.jsp?pageIndex=<%=pageCount%>">最后一页</a>
<form action="CompanyList.jsp" method="post">
    <input type="text" name="pageIndex">
    <input type="submit">
</form>

</body>
</html>
