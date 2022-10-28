<%@ page import="com.example.zerobase_project_1.controller.ApiController" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>
    <%
        out.write("Hello");
        ApiController apiController = new ApiController();
        out.write()
    %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>