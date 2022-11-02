package com.example.zerobase_project_1.openAPI;

import com.example.zerobase_project_1.domain.Item;
import com.example.zerobase_project_1.domain.RowList;
import com.google.gson.Gson;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;

public class PublicWiFiAPI {

    public String json;
    public ArrayList<RowList> newList;
    public String count;

    public void GetPublicWiFiOpenAPI(String startIdx, String endIdx) throws IOException {

        StringBuilder urlBuilder = new StringBuilder("http://openapi.seoul.go.kr:8088");
        urlBuilder.append("/" +  URLEncoder.encode("6d50594c597a6572353466536c6361","UTF-8") );
        urlBuilder.append("/" +  URLEncoder.encode("json","UTF-8") );
        urlBuilder.append("/" + URLEncoder.encode("TbPublicWifiInfo","UTF-8"));
        urlBuilder.append("/" + URLEncoder.encode(startIdx,"UTF-8"));
        urlBuilder.append("/" + URLEncoder.encode(endIdx,"UTF-8"));

        urlBuilder.append("/" + URLEncoder.encode("20220301","UTF-8"));

        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        System.out.println("Response code: " + conn.getResponseCode()); /* 연결 자체에 대한 확인이 필요하므로 추가합니다.*/
        BufferedReader rd;

        // 서비스코드가 정상이면 200~300사이의 숫자가 나옵니다.
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream(), "utf-8"));
        }

        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        json = sb.toString();

    }

    public void getItemList() {

        Gson gson = new Gson();
        Item item = gson.fromJson(json, Item.class);

        count = item.getTbPublicWifiInfo().getList_total_count();

        newList = new ArrayList<>();
        for (RowList a : item.getTbPublicWifiInfo().getRow()) {
            RowList rowList = new RowList();
            rowList.setX_SWIFI_MGR_NO(a.getX_SWIFI_MGR_NO());
            rowList.setX_SWIFI_WRDOFC(a.getX_SWIFI_WRDOFC());
            rowList.setX_SWIFI_MAIN_NM(a.getX_SWIFI_MAIN_NM());
            rowList.setX_SWIFI_ADRES1(a.getX_SWIFI_ADRES1());
            rowList.setX_SWIFI_ADRES2(a.getX_SWIFI_ADRES2());
            rowList.setX_SWIFI_INSTL_FLOOR(a.getX_SWIFI_INSTL_FLOOR());
            rowList.setX_SWIFI_INSTL_TY(a.getX_SWIFI_INSTL_TY());
            rowList.setX_SWIFI_INSTL_MBY(a.getX_SWIFI_INSTL_MBY());
            rowList.setX_SWIFI_SVC_SE(a.getX_SWIFI_SVC_SE());
            rowList.setX_SWIFI_CMCWR(a.getX_SWIFI_CMCWR());
            rowList.setX_SWIFI_CNSTC_YEAR(a.getX_SWIFI_CNSTC_YEAR());
            rowList.setX_SWIFI_INOUT_DOOR(a.getX_SWIFI_INOUT_DOOR());
            rowList.setX_SWIFI_REMARS3(a.getX_SWIFI_REMARS3());
            rowList.setLAT(a.getLAT());
            rowList.setLNT(a.getLNT());
            rowList.setWORK_DTTM(a.getWORK_DTTM());

            newList.add(rowList);
        }
    }
}
