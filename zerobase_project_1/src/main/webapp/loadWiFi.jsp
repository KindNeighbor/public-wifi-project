<%@ page import="com.example.zerobase_project_1.controller.PublicWiFiAPI" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-10-30
  Time: 오전 2:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    PublicWiFiAPI publicWiFiAPI = new PublicWiFiAPI();
    out.print(publicWiFiAPI.json);
%>
</body>
</html>
