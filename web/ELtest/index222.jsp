<%@ page import="com.jichao.Person" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/11/26
  Time: 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Person person1 = new Person(1,"张三");
    request.setAttribute("myPerson",person1);
    List<Person> arr = new ArrayList<Person>();
    Person person2 = new Person(2,"李四");
    Person person3 = new Person(3,"王五");
    arr.add(person1);
    arr.add(person2);
    arr.add(person3);
    pageContext.setAttribute("arr",arr);
    int num1 = 888 ;
    int num2 = 999 ;
    request.setAttribute("num1",num1);
    request.setAttribute("num2",num2);

%>
===========基本运算=================<<br/>
1+1=${1+1}<br>
num1+num2=${num1+num2}<br>
${2>9?"duidui":"buduidhui"}<br>
${cookie}



<br>
==========获取对象的值==============<br>
${myPerson.name}<br>
${arr[0]}



<%--<%=person1%>--%>

</body>
</html>
