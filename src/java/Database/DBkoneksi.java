/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBCON;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBkoneksi {
    private Connection connection;
    public Connection setConnection (){
        try {
            String url ="jdbc:mysql://localhost:3306/wibu_2se1";
            String user = "root";
            String pass = "";
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException e) {
        }
        return connection;
    }
}
