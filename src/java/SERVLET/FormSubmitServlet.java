/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SERVLET;


import Controller.AppointmentDAO;
import MODEL.Appointment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/FormSubmitServlet")
public class FormSubmitServlet extends HttpServlet {
    private AppointmentDAO appointmentDAO;

    @Override
    public void init() throws ServletException {
        appointmentDAO = new AppointmentDAO(); // Inisialisasi AppointmentDAO saat servlet diinisialisasi
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String layanan = request.getParameter("layanan");
        String nama = request.getParameter("nama");
        String tanggalLahir = request.getParameter("tanggal_lahir");
        String telepon = request.getParameter("telepon");
        String voucher = request.getParameter("voucher");
        String tanggalKunjungan = request.getParameter("tanggal_kunjungan");
        String jamKunjungan = request.getParameter("jam_kunjungan");

        Appointment appointment = new Appointment(layanan, nama, tanggalLahir, telepon, voucher, tanggalKunjungan, jamKunjungan);

        try {
            appointmentDAO.saveAppointment(appointment); // Panggil metode saveAppointment dari AppointmentDAO
            // Redirect ke halaman sukses atau tampilkan pesan sukses
            response.sendRedirect(request.getContextPath() + "/index.jsp");
        } catch (SQLException e) {
            e.printStackTrace(); // Handle error jika terjadi kesalahan SQL
            // Redirect atau tampilkan pesan error
            response.sendRedirect(request.getContextPath() + "/error.jsp");
        }
    }
}


