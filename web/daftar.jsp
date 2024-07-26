<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar - RSUI</title>
    <link rel="stylesheet" href="editcss/daftar.css">
</head>
<body>
    <header>
        <div class="navbar">
            <div class="container">
                <div class="box-navbar">
                    <div class="logo">
                        <a href="#" class="ui"><img src="imgrs/logo-ui-_horizontal_no_frame_lightbackground-1.png" alt=""></a>
                    </div>
                    
                    <ul class="menu">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="index.jsp">Service</a></li>
                        <li><a href="index.jsp">About</a></li>
                        <li><a href="doctor.jsp">Doctor</a></li>
                        <li><a href="index.jsp">Contact</a></li>
                    </ul>
                    <i class="fa-solid fa-bars menu-bar"></i>
                </div>
            </div>  
        </div> 
    </header>

    <main>
        <div class="daftar">
            <form id="registrationForm" action="register.jsp" method="post">
                <h2>Daftar</h2>
                <label for="fullName">Nama Lengkap:</label>
                <input type="text" id="fullName" name="fullName" required>
    
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
    
                <label for="phone">Nomor Telepon:</label>
                <input type="text" id="phone" name="phone" required>
    
                <label for="address">Alamat:</label>
                <input type="text" id="address" name="address" required>
    
                <label for="dob">Tanggal Lahir:</label>
                <input type="date" id="dob" name="dob" required>
    
                <label for="gender">Jenis Kelamin:</label>
                <select id="gender" name="gender" required>
                    <option value="">Pilih...</option>
                    <option value="male">Pria</option>
                    <option value="female">Wanita</option>
                </select>
    
                <label for="university">Apakah Anda dari Universitas Indonesia?</label>
                <select id="university" name="university" required>
                    <option value="">Pilih...</option>
                    <option value="yes">Ya</option>
                    <option value="no">Tidak</option>
                </select>
    
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
    
                <label for="confirmPassword">Konfirmasi Password:</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required>
    
                <button type="submit">Daftar</button>
            </form>
        </div>
    
        <div id="modal" class="mod">
            <div class="mod-content">
                <span class="close">&times;</span>
                <p>Anda telah berhasil signup!</p>
                <button id="okBtn">OK</button>
            </div>
        </div>
    </main>

    <footer>
        <p>&copy; 2023 Rumah Sakit Universitas Indonesia. All rights reserved.</p>
    </footer>

    <script src="daftar.js"></script>
</body>
</html>
