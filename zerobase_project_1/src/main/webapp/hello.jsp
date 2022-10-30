<%@ page import="com.example.zerobase_project_1.servlet.PublicWiFiAPI" %>
<%@ page import="com.example.zerobase_project_1.domain.RowList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>와이파이 정보 구하기</title>
</head>
<body>
<h1>
    <%
        out.write("와이파이 정보 구하기");
    %>
<a href="loadWiFi.jsp">Open API 와이파이 정보 가져오기</a>
<a href="deleteInfo.jsp">와이파이 정보 모두 지우기</a>
    <%
//        PublicWiFiAPI publicWiFiAPI = new PublicWiFiAPI();
//        publicWiFiAPI.GetPublicWiFiOpenAPI();
//        publicWiFiAPI.getItemList();
//        for (RowList rowList : publicWiFiAPI.newList) {
//            out.write("<p>" + rowList.getX_SWIFI_MGR_NO() + "</p>");
//            out.write("<p>" + rowList.getX_SWIFI_WRDOFC() + "</p>");
//            out.write("<p>" + rowList.getX_SWIFI_MAIN_NM() + "</p>");
//            out.write("<p>" + rowList.getX_SWIFI_ADRES1() + "</p>");
//            out.write("<p>" + rowList.getX_SWIFI_ADRES2() + "</p>");
//            out.write("<p>" + rowList.getX_SWIFI_INSTL_FLOOR() + "</p>");
//            out.write("<p>" + rowList.getX_SWIFI_INSTL_TY() + "</p>");
//            out.write("<p>" + rowList.getX_SWIFI_INSTL_MBY() + "</p>");
//            out.write("<p>" + rowList.getX_SWIFI_SVC_SE() + "</p>");
//            out.write("<p>" + rowList.getX_SWIFI_CMCWR() + "</p>");
//            out.write("<p>" + rowList.getX_SWIFI_CNSTC_YEAR() + "</p>");
//            out.write("<p>" + rowList.getX_SWIFI_INOUT_DOOR() + "</p>");
//            out.write("<p>" + rowList.getX_SWIFI_REMARS3() + "</p>");
//            out.write("<p>" + rowList.getLAT() + "</p>");
//            out.write("<p>" + rowList.getLNT() + "</p>");
//            out.write("<p>" + rowList.getWORK_DTTM() + "</p>");
//        }
    %>
</h1>
<br/>
</body>
</html>