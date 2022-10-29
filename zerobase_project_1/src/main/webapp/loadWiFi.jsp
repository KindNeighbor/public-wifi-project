<%@ page import="com.example.zerobase_project_1.servlet.PublicWiFiAPI" %>
<%@ page import="com.example.zerobase_project_1.domain.RowList" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-10-30
  Time: 오전 2:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta content="text/html; charset=UTF-8" />
    <title>Title</title>
</head>
<body>
    <%
        PublicWiFiAPI publicWiFiAPI = new PublicWiFiAPI();
        publicWiFiAPI.GetPublicWiFiOpenAPI();

        publicWiFiAPI.getItemList();
        for (RowList rowList : publicWiFiAPI.newList) {
            out.write("<p>" + rowList.getX_SWIFI_MGR_NO() + "</p>");
            out.write("<p>" + rowList.getX_SWIFI_WRDOFC() + "</p>");
            out.write("<p>" + rowList.getX_SWIFI_MAIN_NM() + "</p>");
            out.write("<p>" + rowList.getX_SWIFI_ADRES1() + "</p>");
            out.write("<p>" + rowList.getX_SWIFI_ADRES2() + "</p>");
            out.write("<p>" + rowList.getX_SWIFI_INSTL_FLOOR() + "</p>");
            out.write("<p>" + rowList.getX_SWIFI_INSTL_TY() + "</p>");
            out.write("<p>" + rowList.getX_SWIFI_INSTL_MBY() + "</p>");
            out.write("<p>" + rowList.getX_SWIFI_SVC_SE() + "</p>");
            out.write("<p>" + rowList.getX_SWIFI_CMCWR() + "</p>");
            out.write("<p>" + rowList.getX_SWIFI_CNSTC_YEAR() + "</p>");
            out.write("<p>" + rowList.getX_SWIFI_INOUT_DOOR() + "</p>");
            out.write("<p>" + rowList.getX_SWIFI_REMARS3() + "</p>");
            out.write("<p>" + rowList.getLAT() + "</p>");
            out.write("<p>" + rowList.getLNT() + "</p>");
            out.write("<p>" + rowList.getWORK_DTTM() + "</p>");
        }
    %>
</body>
</html>
