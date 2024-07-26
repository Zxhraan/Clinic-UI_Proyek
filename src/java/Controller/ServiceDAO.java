/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Database.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class ServiceDAO {
    public List<String> getServices() throws ClassNotFoundException, SQLException {
        List<String> services = new ArrayList<>();
        
        // Mengambil koneksi
        Connection con = DatabaseConnection.initializeDatabase();
        
        // Query untuk mengambil nama dokter dan spesialisasi
        String query = "SELECT NAME, specialty FROM doctors";
        
        PreparedStatement stmt = con.prepareStatement(query);
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {
            String serviceName = rs.getString("NAME") + ": " + rs.getString("specialty");
            services.add(serviceName);
        }
        
        // Menutup koneksi
        rs.close();
        stmt.close();
        con.close();
        
        return services;
    }
}
