<%@ page import="com.example.zerobase_project_1.openAPI.PublicWiFiAPI" %>
<%@ page import="com.example.zerobase_project_1.db.DbController" %>
<%@ page import="com.example.zerobase_project_1.domain.RowList" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta content="text/html; charset=UTF-8" />
    <title>와이파이 정보 구하기</title>
</head>
<body>
    <%
        PublicWiFiAPI publicWiFiAPI = new PublicWiFiAPI();
        DbController dbController = new DbController();
        dbController.dbDeleteAll(); // 데이터가 중복해서 쌓이는 것 방지
        String startIdx = "1";
        String endIdx = "1000";
        publicWiFiAPI.GetPublicWiFiOpenAPI("1", "1");
        publicWiFiAPI.getItemList(); // 전체 갯수 정보 불러오기 위해서 한개만 일단 호출
        int cnt = Integer.parseInt(publicWiFiAPI.count) / 1000; // 한번에 1000개 초과해서 요청 불가능
        for (int i = 0; i < cnt + 1; i++) {
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

        %>
    <div style="font-size: 30px; text-align: center">
        <% out.write(publicWiFiAPI.count + "개의 WIFI 정보를 정상적으로 저장하였습니다."); %>
    </div> <br>
    <div style="font-size: 20px; text-align: center">
        <a href="hello.jsp">홈으로</a>
    </div>
</body>
</html>
