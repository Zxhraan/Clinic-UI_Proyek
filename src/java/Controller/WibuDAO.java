package Controller;

import Database.DBConnection;
import MODEL.WibuBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class WibuDAO {
   static Connection conn;
   static PreparedStatement ps;
   static String sql;

    public static int simpan(WibuBean wb) {
        int status = 0;
        try{
            DBConnection db = new DBConnection();
             conn = db.setConnection();
             sql = "INSERT INTO tbl_wibu (nama_wibu, nama_asli, email, username, password, status) values(?,?,?,?,?,?)";
             ps = conn.prepareStatement(sql);
             System.out.println("SINYAL" + ps.toString());

            ps.setString(1, wb.getNama_wibu());
            ps.setString(2, wb.getNama_asli());
            ps.setString(3, wb.getEmail());
            ps.setString(4, wb.getUsername());
            ps.setString(5, wb.getPassword()); // Ini sebaiknya dienkripsi sebelum disimpan
            ps.setString(6, wb.getStatus());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.err.println("SQL Exception: " + e.getMessage());
        } 
        return status;
    }
}


