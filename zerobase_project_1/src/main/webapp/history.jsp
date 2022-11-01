<%@ page import="com.example.zerobase_project_1.db.DbController" %>
<%@ page import="com.example.zerobase_project_1.domain.SearchHistory" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-10-31
  Time: 오전 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>와이파이 정보 구하기</title>

    <%
        DbController dbController = new DbController();
    %>


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
        out.write("위치 히스토리 목록");
    %>
</h1>
<h1 style="font-size: 15px">
    <a href="hello.jsp">홈 |</a>
    <a href="history.jsp">위치 히스토리 목록 |</a>
    <a href="loadWiFi.jsp">Open API 와이파이 정보 가져오기</a>
</h1>

<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>X좌표</th>
        <th>Y좌표</th>
        <th>조회일자</th>
        <th>비고</th>

    </tr>
    </thead>
    <tbody>
    <tr>
        <% dbController.dbSelectHistory(); %>

            <% for (SearchHistory rowList : dbController.historyList) { %>
                <tr>
                    <td>
                        <% out.write(rowList.getID()); %>
                    </td>
                    <td>
                        <% out.write(rowList.getLAT1()); %>
                    </td>
                    <td>
                        <% out.write(rowList.getLNT1()); %>
                    </td>
                    <td>
                        <% out.write(rowList.getSearch_date()); %>
                    </td>
                    <td>
                        <form action="deleteInfo.jsp">
                            <input type="hidden" name="id" value="<%=rowList.getID()%>">
                            <input type="hidden" name="lat1" value="<%=rowList.getLAT1()%>">
                            <input type="hidden" name="lnt1" value="<%=rowList.getLNT1()%>">
                            <input type="hidden" name="time" value="<%=rowList.getSearch_date()%>">
                            <input type="submit" value="삭제" onclick="getParameter()">
                        </form>
                    </td>
            <%}%>
        </tr>
    </tr>
    </tbody>
</table>
</body>
</html>
