package Controller;

import MODEL.Appointment;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AppointmentDAO {
    private String dbURL = "jdbc:mysql://localhost:3306/wibu_2se1";
    private String dbUser = "root";
    private String dbPassword = "";

    public void saveAppointment(Appointment appointment) throws SQLException {
        String sql = "INSERT INTO appointments (layanan, nama, tanggal_lahir, telepon, kode_voucher, tanggal_kunjungan, jam_kunjungan) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, appointment.getLayanan());
            stmt.setString(2, appointment.getNama());
            stmt.setString(3, appointment.getTanggalLahir());
            stmt.setString(4, appointment.getTelepon());
            stmt.setString(5, appointment.getKodeVoucher());
            stmt.setString(6, appointment.getTanggalKunjungan());
            stmt.setString(7, appointment.getJamKunjungan());

            stmt.executeUpdate();
        }
    }

    public List<Appointment> getAllAppointments() throws SQLException {
        List<Appointment> appointments = new ArrayList<>();
        String sql = "SELECT * FROM appointments";
        
        try (Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Appointment appointment = new Appointment(
                    rs.getString("layanan"),
                    rs.getString("nama"),
                    rs.getString("tanggal_lahir"),
                    rs.getString("telepon"),
                    rs.getString("kode_voucher"),
                    rs.getString("tanggal_kunjungan"),
                    rs.getString("jam_kunjungan")
                );
                appointments.add(appointment);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            // Handle exception appropriately (e.g., logging)
        }
        
        return appointments;
    }

    public void deleteAppointment(int id) throws SQLException {
        String sql = "DELETE FROM appointments WHERE id = ?";
        try (Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle exception appropriately (e.g., logging)
        }
    }

    public void updateAppointment(Appointment appointment) throws SQLException {
        String sql = "UPDATE appointments SET layanan = ?, nama = ?, tanggal_lahir = ?, telepon = ?, kode_voucher = ?, tanggal_kunjungan = ?, jam_kunjungan = ? WHERE id = ?";
        try (Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, appointment.getLayanan());
            stmt.setString(2, appointment.getNama());
            stmt.setString(3, appointment.getTanggalLahir());
            stmt.setString(4, appointment.getTelepon());
            stmt.setString(5, appointment.getKodeVoucher());
            stmt.setString(6, appointment.getTanggalKunjungan());
            stmt.setString(7, appointment.getJamKunjungan());
            stmt.setInt(8, appointment.getId()); // Assuming there's an ID field in the Appointment class

            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle exception appropriately (e.g., logging)
        }
    }
}
