<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/11/21
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="/ckeditor/ckeditor.js" ></script>
<body>
<form action="doupload.jsp" method="post" enctype="multipart/form-data">
    <input type="file" name="file"/><br>
    <input type="text" name="username">
    <input type="password" name="password">
    <input type="submit" value="提交"/>
    <textarea   name="newscontent" class="ckeditor" ></textarea>
</form>


</body>

</html>
