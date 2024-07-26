package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    public static Connection initializeDatabase() throws SQLException, ClassNotFoundException {
        // Inisialisasi driver MySQL
        Class.forName("com.mysql.cj.jdbc.Driver");
        
        // URL koneksi ke database
        String url = "jdbc:mysql://localhost:3306/wibu_2se1"; // ganti dengan nama database Anda
        String username = "root"; // ganti dengan username database Anda
        String password = ""; // ganti dengan password database Anda
        
        // Membuat koneksi
        Connection con = DriverManager.getConnection(url, username, password);
        
        return con;
    }
}
