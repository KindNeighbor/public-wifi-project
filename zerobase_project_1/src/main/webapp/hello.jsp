<%@ page import="com.example.zerobase_project_1.servlet.PublicWiFiAPI" %>
<%@ page import="com.example.zerobase_project_1.domain.RowList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>JSP - Hello World</title>
</head>
<body>
<h1>
    <%
        out.write("Hello");
        out.write("안녕하세요");
    %>
</h1>
<br/>
<a href="loadWiFi.jsp">Open API 와이파이 정보 가져오기</a>
</body>
</html>