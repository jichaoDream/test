<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/11/14
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>请输入信息！</h1>
<form action="doAdd.jsp">
    <table border="1px" cellspacing="0" width="100%">
        <tr>
            <td>c_id</td>
            <td><input type="text" name="c_id"/></td>
        </tr>
        <tr>
            <td>职位名</td>
            <td><input type="text" name="职位名"/></td>
        </tr>
        <tr>
            <td>公司名</td>
            <td><input type="text" name="公司名"/></td>
        </tr>
        <tr>
            <td>工作地点</td>
            <td><input type="text" name="工作地点"/></td>
        </tr>
        <tr>
            <td>公司性质</td>
            <td><input type="text" name="公司性质"/></td>
        </tr>
        <tr>
            <td>公司规模</td>
            <td><input type="text" name="公司规模"/></td>
        </tr>
        <tr>
            <td>产业</td>
            <td><input type="text" name="产业"/></td>
        </tr>
        <tr>
            <td>最低薪资</td>
            <td><input type="text" name="最低薪资"/></td>
        </tr>
        <tr>
            <td>最高薪资</td>
            <td><input type="text" name="最高薪资"/></td>
        </tr>
        <tr>
            <td><input type="reset"/></td>
            <td><input type="submit"/></td>
        </tr>

    </table>
</form>
</body>
</html>
