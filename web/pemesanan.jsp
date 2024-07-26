<%@page import="Controller.ServiceDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.lang.ClassNotFoundException" %>
<%
HttpSession currentSession = request.getSession(false);
    if (currentSession == null || currentSession.getAttribute("login") == null || !(boolean) currentSession.getAttribute("login")) {
        response.sendRedirect("masuk.jsp"); // Redirect to your login page
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulir Layanan di Klinik</title>

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <link rel="stylesheet" href="editcss/bods.css">
</head>
<body>
    <header>
        <div class="header-content">
            <img src="imgrs/logo-ui-_horizontal_no_frame_lightbackground-1.png" alt="RSUI" class="logo">
            <a href="#" class="help-link">Butuh bantuan? <span>Hubungi Kami</span></a>
        </div>
    </header>
    <br>
    <br>
    <br>
    <br>
    
    <main>
        <div class="form-container">
            <h1>Formulir Layanan di RSUI</h1>
            <h2>KlINIK UNIVERSITAS INDONESIA</h2> <br>
            <hr>

            <form action="<%=request.getContextPath()%>/FormSubmitServlet" method="post">
                <section>
                    <h3>Layanan Dipilih</h3>
                    <br>
                    <label for="layanan">Layanan</label>
                    <select id="layanan" name="layanan">
                        <%
                        try {
                            ServiceDAO serviceDAO = new ServiceDAO();
                            List<String> services = serviceDAO.getServices();
                            for (String service : services) {
                                out.println("<option value=\"" + service + "\">" + service + "</option>");
                            }
                        } catch (ClassNotFoundException | SQLException e) {
                            e.printStackTrace();
                        }
                        %>
                    </select>
                </section>

                <section>
                    <h3>Data Diri</h3>
                    <label for="nama">Nama lengkap</label>
                    <input type="text" id="nama" name="nama" required>

                    <label for="tanggal-lahir">Tanggal lahir</label>
                    <input type="date" id="tanggal-lahir" name="tanggal_lahir" required>

                    <label for="telepon">Nomor Telepon</label>
                    <div class="phone-input">
                        <select id="kode-negara" name="kode-negara">
                            <option value="+62">+62</option>
                        </select>
                        <input type="tel" id="telepon" name="telepon" required>
                    </div>
                    


<!--                    <label for="jurusan">Jurusan</label>
                    <select id="jurusan" name="jurusan" required>
                        <option value="Teknik Informatika">Teknik Informatika</option>
                        <option value="Kedokteran">Kedokteran</option>
                        <option value="Hukum">Hukum</option>
                        <option value="Ekonomi">Ekonomi</option>
                        <option value="Psikologi">Psikologi</option>
                        <option value="Biologi">Biologi</option>
                        <option value="Fisika">Fisika</option>
                        <option value="Kimia">Kimia</option>
                        <option value="Matematika">Matematika</option>
                        <option value="Sastra Indonesia">Sastra Indonesia</option>
                        <option value="Sastra Inggris">Sastra Inggris</option>
                        <option value="Sastra Jepang">Sastra Jepang</option>
                        <option value="Ilmu Komputer">Ilmu Komputer</option>
                        <option value="Arsitektur">Arsitektur</option>
                        <!-- Add more options as needed -->
                    </select>
                    <BR>
                    <BR>
<!--                    <label for="fakultas">Fakultas</label>
                    <select id="fakultas" name="fakultas" required>
                        <option value="Fakultas Teknik">Fakultas Teknik</option>
                        <option value="Fakultas Kedokteran">Fakultas Kedokteran</option>
                        <option value="Fakultas Hukum">Fakultas Hukum</option>
                        <option value="Fakultas Ekonomi dan Bisnis">Fakultas Ekonomi dan Bisnis</option>
                        <option value="Fakultas Psikologi">Fakultas Psikologi</option>
                        <option value="Fakultas MIPA">Fakultas MIPA</option>
                        <option value="Fakultas Ilmu Pengetahuan Budaya">Fakultas Ilmu Pengetahuan Budaya</option>
                        <option value="Fakultas Ilmu Komputer">Fakultas Ilmu Komputer</option>
                        <option value="Fakultas Teknik Arsitektur">Fakultas Teknik Arsitektur</option>
                        <!-- Add more options as needed -->
                    </select>
                </section>

                <section>
                    <h3>Kode Voucher</h3>
                    <label for="voucher">Kode Voucher</label>
                    <input type="text" id="voucher" name="voucher">
                    <a href="#" class="paste-code" id="pasteCode">Tempel Kode</a>
                </section>

                <section>
                    <h3>Jadwal Kunjungan</h3>
                    <label for="tanggal-kunjungan">Tanggal</label>
                    <input type="date" id="tanggal-kunjungan" name="tanggal_kunjungan" required>

                    <p class="info-text">Pastikan kunjungan ke RSUI tidak melebihi 1×24 jam dari jadwal kedatangan yang telah dipilih.</p>

                    <label for="jam-kunjungan">Jam</label>
                    <input type="time" id="jam-kunjungan" name="jam_kunjungan" required>
                </section>

                <p class="agreement">Dengan mendaftar dan klik Lanjut, Anda menyetujui <a href="#">syarat dan ketentuan</a> dan <a href="#">kebijakan privasi</a> Rumah Sakit Universitas Indonesia.</p>

                <button type="submit" class="submit-btn">Lanjut</button>
            </form>
        </div>
    </main>

    <div id="confirmationModal" class="modal">
        <div class="modal-content">
            <span class="close-btn">&times;</span>
            <h2>Terimakasih sudah membuat pesanan di rumah sakit Universitas Indonesia</h2>
            <p id="confirmName"></p>
            <p id="confirmService"></p>
            <p id="confirmDate"></p>
            <p id="confirmTime"></p>
            <button id="confirmBtn" class="submit-btn">Konfirmasi</button>
        </div>
    </div>

    <!-- Modal for Unavailability -->
    <div id="unavailableModal" class="modal">
        <div class="modal-content">
            <span class="close-button">&times;</span>
            <p>This doctor is not available at the selected time.</p>
        </div>
    </div>
    
    <script>
        $(document).ready(function() {
            $('#layanan').select2({
                placeholder: 'Pilih layanan...',
                allowClear: true
            });
            $('#dorm').select2({
                placeholder: 'Pilih dormitory...',
                allowClear: true
            });
            $('#jurusan').select2({
                placeholder: 'Pilih jurusan...',
                allowClear: true
            });
            $('#fakultas').select2({
                placeholder: 'Pilih fakultas...',
                allowClear: true
            });
        });
    </script>

    <script src="jsqq/coba.js"></script>
</body>
</html>



