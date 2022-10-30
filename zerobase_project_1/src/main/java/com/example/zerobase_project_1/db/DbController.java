package com.example.zerobase_project_1.db;

import com.example.zerobase_project_1.Test;
import com.example.zerobase_project_1.domain.ResultList;
import com.example.zerobase_project_1.servlet.PublicWiFiAPI;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DbController {

    PublicWiFiAPI publicWiFiAPI = new PublicWiFiAPI();
//    Test test = new Test();

    public void dbInsert(String X_SWIFI_MGR_NO, String X_SWIFI_WRDOFC, String X_SWIFI_MAIN_NM,
                         String X_SWIFI_ADRES1, String X_SWIFI_ADRES2, String X_SWIFI_INSTL_FLOOR,
                         String X_SWIFI_INSTL_TY, String X_SWIFI_INSTL_MBY, String X_SWIFI_SVC_SE,
                         String X_SWIFI_CMCWR, String X_SWIFI_CNSTC_YEAR, String X_SWIFI_INOUT_DOOR,
                         String X_SWIFI_REMARS3, String LAT, String LNT, String WORK_DTTM) {

        String url = "jdbc:sqlite:C:/Users/USER/testdb1.db";

        try {
            Class.forName("org.sqlite.JDBC");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        Connection con = null;
        PreparedStatement stmt = null;
        ResultList rs = null;

        try{

            con = DriverManager.getConnection(url);

            String insert_sql1 = "INSERT INTO PublicWiFiAPIInfo" +
                        "(" +
                        "X_SWIFI_MGR_NO, X_SWIFI_WRDOFC, X_SWIFI_MAIN_NM," +
                        "X_SWIFI_ADRES1, X_SWIFI_ADRES2, X_SWIFI_INSTL_FLOOR," +
                        "X_SWIFI_INSTL_TY, X_SWIFI_INSTL_MBY, X_SWIFI_SVC_SE," +
                        "X_SWIFI_CMCWR, X_SWIFI_CNSTC_YEAR, X_SWIFI_INOUT_DOOR," +
                        "X_SWIFI_REMARS3, LAT, LNT, WORK_DTTM" +
                        ")" +
                        "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            stmt = con.prepareStatement(insert_sql1);
            stmt.setString(1, X_SWIFI_MGR_NO);
            stmt.setString(2, X_SWIFI_WRDOFC);
            stmt.setString(3, X_SWIFI_MAIN_NM);
            stmt.setString(4, X_SWIFI_ADRES1);
            stmt.setString(5, X_SWIFI_ADRES2);
            stmt.setString(6, X_SWIFI_INSTL_FLOOR);
            stmt.setString(7, X_SWIFI_INSTL_TY);
            stmt.setString(8, X_SWIFI_INSTL_MBY);
            stmt.setString(9, X_SWIFI_SVC_SE);
            stmt.setString(10, X_SWIFI_CMCWR);
            stmt.setString(11, X_SWIFI_CNSTC_YEAR);
            stmt.setString(12, X_SWIFI_INOUT_DOOR);
            stmt.setString(13, X_SWIFI_REMARS3);
            stmt.setString(14, LAT);
            stmt.setString(15, LNT);
            stmt.setString(16, WORK_DTTM);
            stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void dbDelete(String X_SWIFI_MGR_NO, String X_SWIFI_WRDOFC, String X_SWIFI_MAIN_NM,
                         String X_SWIFI_ADRES1, String X_SWIFI_ADRES2, String X_SWIFI_INSTL_FLOOR,
                         String X_SWIFI_INSTL_TY, String X_SWIFI_INSTL_MBY, String X_SWIFI_SVC_SE,
                         String X_SWIFI_CMCWR, String X_SWIFI_CNSTC_YEAR, String X_SWIFI_INOUT_DOOR,
                         String X_SWIFI_REMARS3, String LAT, String LNT, String WORK_DTTM) {
        String url = "jdbc:sqlite:C:/Users/USER/testdb1.db";

        try {
            Class.forName("org.sqlite.JDBC");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        Connection con = null;
        PreparedStatement stmt = null;
        ResultList rs = null;

        try{

                con = DriverManager.getConnection(url);

                String delete_sql1 = "DELETE FROM PublicWiFiAPIInfo " +
                        "WHERE X_SWIFI_MGR_NO = ? and X_SWIFI_WRDOFC = ? and X_SWIFI_MAIN_NM = ? and " +
                        "X_SWIFI_ADRES1 = ? and X_SWIFI_ADRES2 = ? and X_SWIFI_INSTL_FLOOR = ? and " +
                        "X_SWIFI_INSTL_TY = ? and X_SWIFI_INSTL_MBY = ? and X_SWIFI_SVC_SE = ? and " +
                        "X_SWIFI_CMCWR = ? and X_SWIFI_CNSTC_YEAR = ? and X_SWIFI_INOUT_DOOR = ? and " +
                        "X_SWIFI_REMARS3 = ? and LAT = ? and LNT = ? and WORK_DTTM = ?";

                stmt = con.prepareStatement(delete_sql1);
                stmt.setString(1, X_SWIFI_MGR_NO);
                stmt.setString(2, X_SWIFI_WRDOFC);
                stmt.setString(3, X_SWIFI_MAIN_NM);
                stmt.setString(4, X_SWIFI_ADRES1);
                stmt.setString(5, X_SWIFI_ADRES2);
                stmt.setString(6, X_SWIFI_INSTL_FLOOR);
                stmt.setString(7, X_SWIFI_INSTL_TY);
                stmt.setString(8, X_SWIFI_INSTL_MBY);
                stmt.setString(9, X_SWIFI_SVC_SE);
                stmt.setString(10, X_SWIFI_CMCWR);
                stmt.setString(11, X_SWIFI_CNSTC_YEAR);
                stmt.setString(12, X_SWIFI_INOUT_DOOR);
                stmt.setString(13, X_SWIFI_REMARS3);
                stmt.setString(14, LAT);
                stmt.setString(15, LNT);
                stmt.setString(16, WORK_DTTM);
                stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}