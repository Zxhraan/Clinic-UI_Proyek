<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*, java.util.ArrayList, java.util.List, MODEL.Appointment, Controller.AppointmentDAO" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Admin Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #FF7D29;">
        <span class="navbar-text mr-3">
            <span class="welcome-text">Welcome</span>
            <span class="username-text"><%= session.getAttribute("user") %></span>
        </span>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
            aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle custom-dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Menu
                    </a>
                    <div class="dropdown-menu dropdown-menu-right custom-dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <!-- Menu items here -->
                    </div>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container mt-4">
        <h2>Daftar Janji Temu</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Layanan</th>
                    <th>Nama</th>
                    <th>Tanggal Lahir</th>
                    <th>Telepon</th>
                    <th>Kode Voucher</th>
                    <th>Tanggal Kunjungan</th>
                    <th>Jam Kunjungan</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <%
                    // Retrieve appointments from the database using AppointmentDAO
                    List<Appointment> appointments = new ArrayList<>();
                    try {
                        AppointmentDAO appointmentDAO = new AppointmentDAO();
                        appointments = appointmentDAO.getAllAppointments();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                
                    if (appointments != null && !appointments.isEmpty()) {
                        for (Appointment appointment : appointments) {
                %>
                    <tr>
                        <td><%= appointment.getLayanan() %></td>
                        <td><%= appointment.getNama() %></td>
                        <td><%= appointment.getTanggalLahir() %></td>
                        <td><%= appointment.getTelepon() %></td>
                        <td><%= appointment.getKodeVoucher() %></td>
                        <td><%= appointment.getTanggalKunjungan() %></td>
                        <td><%= appointment.getJamKunjungan() %></td>
                        <td>
                            <form action="deleteAppointment.jsp" method="post" onsubmit="return confirm('Are you sure you want to delete this appointment?');">
                                <input type="hidden" name="appointmentId" value="<%= appointment.getId() %>">
                                <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                            </form>
                        </td>
                    </tr>
                <%
                        }
                    } else {
                %>
                    <tr><td colspan="8">No appointments found.</td></tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>

