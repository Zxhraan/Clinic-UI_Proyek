/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import MODEL.Medicine;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MedicineDAO {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/wibu_2se1";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "";

    // Method to get all medicines
    public List<Medicine> getAllMedicines() {
        List<Medicine> medicines = new ArrayList<>();
        String sql = "SELECT * FROM medicines";
        
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                Medicine medicine = new Medicine();
                medicine.setId(resultSet.getInt("id"));
                medicine.setName(resultSet.getString("name"));
                medicine.setType(resultSet.getString("type"));
                medicine.setPrice(resultSet.getDouble("price"));
                medicine.setDescription(resultSet.getString("description"));
                medicine.setImageUrl(resultSet.getString("image_url"));
                medicines.add(medicine);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return medicines;
    }

    // Method to get a single medicine by ID
    public Medicine getMedicineById(int id) {
        Medicine medicine = null;
        String sql = "SELECT * FROM medicines WHERE id = ?";
        
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setInt(1, id);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    medicine = new Medicine();
                    medicine.setId(resultSet.getInt("id"));
                    medicine.setName(resultSet.getString("name"));
                    medicine.setType(resultSet.getString("type"));
                    medicine.setPrice(resultSet.getDouble("price"));
                    medicine.setDescription(resultSet.getString("description"));
                    medicine.setImageUrl(resultSet.getString("image_url"));
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return medicine;
    }

    // Method to add a new medicine
    public void addMedicine(Medicine medicine) {
        String sql = "INSERT INTO medicines (name, type, price, description, image_url) VALUES (?, ?, ?, ?, ?)";
        
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setString(1, medicine.getName());
            statement.setString(2, medicine.getType());
            statement.setDouble(3, medicine.getPrice());
            statement.setString(4, medicine.getDescription());
            statement.setString(5, medicine.getImageUrl());
            statement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Method to update an existing medicine
    public void updateMedicine(Medicine medicine) {
        String sql = "UPDATE medicines SET name = ?, type = ?, price = ?, description = ?, image_url = ? WHERE id = ?";
        
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setString(1, medicine.getName());
            statement.setString(2, medicine.getType());
            statement.setDouble(3, medicine.getPrice());
            statement.setString(4, medicine.getDescription());
            statement.setString(5, medicine.getImageUrl());
            statement.setInt(6, medicine.getId());
            statement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Method to delete a medicine by ID
    public void deleteMedicine(int id) {
        String sql = "DELETE FROM medicines WHERE id = ?";
        
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setInt(1, id);
            statement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

