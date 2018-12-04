<%@ page import="com.jichao.Person" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/11/27
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@  taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
===============out标签================<<br />
    <c:out value="123" ></c:out>
<br />
    <c:out value="${1+9}"></c:out>
    <%
        Person person = new Person(9,"张六");
        request.setAttribute("person",person);
    %>
    <c:out value="${person}"></c:out>

    <c:out value="${per}" default="不存在"></c:out>

<br />
<c:out value="<a href='https://www.baidu.com/'>百度</a>" default="bucunzai" escapeXml="false"></c:out>
===============set标签================<<br />
<c:set var="name" value="123455677" scope="session"></c:set>
${name}
<br />
<c:set target="${person}" property="name" value="CHAO"></c:set>
${person}
<br />===============forEach标签================<<br />
<c:forEach begin="1" end="10" step="1" var="i">
    ${i}
</c:forEach>
<%
    List<String>  heroList = new ArrayList<String>();
    heroList.add("米莱狄");
    heroList.add("后裔");
    heroList.add("锐雯");
    heroList.add("韩信");
    heroList.add("大小姐");
    request.setAttribute("heroList",heroList);
%>
    <c:forEach items="${heroList}" var="hero" varStatus="status">
        英雄的名字：${hero}
        序列：${status.index}<br />
    </c:forEach>
    <br />

<br><br>
变色表格<<br>
<table border="1px">
    <c:forEach items="${heroList}" var="hero" varStatus="status">
        <tr bgcolor="${status.index % 2 == 0 ? 'red' : 'blue'}">
            <td>${hero}</td>
        </tr>
    </c:forEach>

</table>


<br/>
九九乘法表<<br />
<c:forEach var="i" begin="1" end="9">
    <c:forEach var="j" begin="1" end="${i}">
        ${i}*${j}=${i*j}&nbsp;&nbsp;&nbsp;&nbsp;
    </c:forEach>
    <br />
</c:forEach>
<br>
=========================if标签===================================================
<c:if test="${2>1}">

</c:if>
<c:set var="pm" value="99"></c:set>
<c:choose >
    <c:when test="${pm>100}">
        <c:out value="获取到了！！"></c:out>
    </c:when>
    <c:when test="${pm>90}">
        <c:out value="youllllllllllllllllllllllllll"></c:out>
    </c:when>
    <c:otherwise>
        buaaaaaaaaaaaaaaaaa
    </c:otherwise>
</c:choose>

<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
<br />=======================URL=======================<br />
<c:url value="https://www.baidu.com" var="baidu"></c:url>
<a href="${baidu}">baidu</a>
<br />=======================formatDate=======================<br />
<fmt:formatDate value="<%=new Date()%>" dateStyle="short"></fmt:formatDate>
<br />
<fmt:formatDate value="<%=new Date()%>" dateStyle="long"></fmt:formatDate>
<br />
<fmt:formatDate value="<%=new Date()%>" pattern="yyyy-MM-dd"></fmt:formatDate>
<br />
<br />=======================formatNumber=======================<br />
<fmt:formatNumber value="8989898" type="currency"></fmt:formatNumber>



</body>
</html>
