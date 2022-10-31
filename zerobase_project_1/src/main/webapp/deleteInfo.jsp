<%@ page import="com.example.zerobase_project_1.openAPI.PublicWiFiAPI" %>
<%@ page import="com.example.zerobase_project_1.db.DbController" %>
<%@ page import="com.example.zerobase_project_1.domain.RowList" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-10-30
  Time: 오후 7:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>공공와이파이 정보 삭제</title>
</head>
<body>
    <%
        PublicWiFiAPI publicWiFiAPI = new PublicWiFiAPI();
        publicWiFiAPI.GetPublicWiFiOpenAPI();
        publicWiFiAPI.getItemList();
        DbController dbController = new DbController();

        for (RowList a : publicWiFiAPI.newList) {
            dbController.dbDelete(a.getX_SWIFI_MGR_NO(), a.getX_SWIFI_WRDOFC(), a.getX_SWIFI_ADRES1(),
                    a.getX_SWIFI_ADRES2(), a.getX_SWIFI_INSTL_FLOOR(), a.getX_SWIFI_INSTL_TY(), a.getX_SWIFI_INSTL_TY(),
                    a.getX_SWIFI_INSTL_MBY(), a.getX_SWIFI_SVC_SE(), a.getX_SWIFI_CMCWR(), a.getX_SWIFI_CNSTC_YEAR(),
                    a.getX_SWIFI_INOUT_DOOR(), a.getX_SWIFI_REMARS3(), a.getLAT(), a.getLNT(), a.getWORK_DTTM());
        }

        out.write("와이파이 정보를 DB에서 전부 삭제했습니다.");
    %>
    <a href="hello.jsp">홈으로</a>
</body>
</html>
