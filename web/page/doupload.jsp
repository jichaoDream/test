<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@ page import="org.apache.commons.fileupload.FileItemFactory" %>
<%@ page import="org.apache.commons.fileupload.FileItem" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.File" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/11/21
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //判断表单是否是post  和  enctype="multipart/form-data"
    boolean multipartContent = ServletFileUpload.isMultipartContent(request);
    if (multipartContent) {
        //声明对象
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        //解析请求
        List<FileItem> fileItems = upload.parseRequest(request);
        System.out.println("表单元素：" + fileItems.size());
        for (FileItem fileItem : fileItems) {
            System.out.println(fileItem.getFieldName());
            if (!fileItem.isFormField()) {
                File file = new File("H:/" + fileItem.getName());
                fileItem.write(file);
            }
        }

    }


%>
