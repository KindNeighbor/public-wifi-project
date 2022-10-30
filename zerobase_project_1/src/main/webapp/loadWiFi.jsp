<%@ page import="com.example.zerobase_project_1.servlet.PublicWiFiAPI" %>
<%@ page import="com.example.zerobase_project_1.db.DbController" %>
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
    <title>공공와이파이 정보 저장 성공!</title>
</head>
<body>
    <%
        PublicWiFiAPI publicWiFiAPI = new PublicWiFiAPI();
        DbController dbController = new DbController();
        String startIdx = "1";
        String endIdx = "1000";
        for (int i = 0; i < 18; i++) {
            publicWiFiAPI.GetPublicWiFiOpenAPI(startIdx, endIdx);
            publicWiFiAPI.getItemList();

            for (RowList a : publicWiFiAPI.newList) {
                dbController.dbInsert(a.getX_SWIFI_MGR_NO(), a.getX_SWIFI_WRDOFC(), a.getX_SWIFI_ADRES1(),
                        a.getX_SWIFI_ADRES2(), a.getX_SWIFI_INSTL_FLOOR(), a.getX_SWIFI_INSTL_TY(), a.getX_SWIFI_INSTL_TY(),
                        a.getX_SWIFI_INSTL_MBY(), a.getX_SWIFI_SVC_SE(), a.getX_SWIFI_CMCWR(), a.getX_SWIFI_CNSTC_YEAR(),
                        a.getX_SWIFI_INOUT_DOOR(), a.getX_SWIFI_REMARS3(), a.getLAT(), a.getLNT(), a.getWORK_DTTM());
            }
            startIdx = String.valueOf(Integer.parseInt(startIdx) + 1000);
            endIdx = String.valueOf(Integer.parseInt(endIdx) + 1000);
        }

        out.write("와이파이 정보 " + publicWiFiAPI.count + "개를 DB에 저장했습니다.");
    %>
    <a href="hello.jsp">홈으로</a>
</body>
</html>
