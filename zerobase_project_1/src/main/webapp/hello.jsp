<%@ page import="com.example.zerobase_project_1.db.DbController" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>와이파이 정보 구하기</title>

    <%
        DbController dbController = new DbController();
    %>

    <script type="text/javascript">

        function getPosition() {
        navigator.geolocation.getCurrentPosition(function(pos) {
            var latitude = pos.coords.latitude;
            var longitude = pos.coords.longitude;
            document.getElementById("lat").value = latitude;
            document.getElementById("lnt").value = longitude;
        }); }

    </script>

    <style>
        table {
            width: 100%;
        }
        th {
            border: solid 1px #000;
            text-align: center;
            background-color: #04AA6D;
            color: white;
        }
        tr:nth-child(even) {background-color: #f2f2f2;}
        td {
            border: solid 1px #000;
            text-align: center;
            height: 50px;
        }
    </style>

</head>
<body>
<h1>
    <%
        out.write("와이파이 정보 구하기");
    %>
</h1>
<h1 style="font-size: 15px">
    <a href="hello.jsp">홈 |</a>
    <a href="history.jsp">위치 히스토리 목록 |</a>
    <a href="loadWiFi.jsp">Open API 와이파이 정보 가져오기</a>
</h1>

<form action="getInfo.jsp">
    <label for="lat">LAT:</label>
    <input type="text" id="lat" name="lat" value="0.0">
    <label for="lnt">, LNT:</label>
    <input type="text" id="lnt" name="lnt" value="0.0">
    <input type="button" value="내 위치 가져오기" onclick="getPosition()">
    <input type="submit" value="근처 WIFI 정보 보기"> <br><br>
</form>

<table>
    <thead>
        <tr>
            <th>거리(Km)</th>
            <th>관리번호</th>
            <th>자치구</th>
            <th>와이파이명</th>
            <th>도로명주소</th>
            <th>상세주소</th>
            <th>설치위치(층)</th>
            <th>설치유형</th>
            <th>설치기관</th>
            <th>서비스구분</th>
            <th>망종류</th>
            <th>설치년도</th>
            <th>실내외구분</th>
            <th>WIFI접속환경</th>
            <th>X좌표</th>
            <th>Y좌표</th>
            <th>작업일자</th>
        </tr>
    </thead>
    <tbody>
    <tr>
        <%
            out.write("<td colspan='17'>" + "위치 정보를 입력한 후에 조회해 주세요." + "</td>");
        %>
    </tr>
    </tbody>
</table>
<br/>
</body>
</html>