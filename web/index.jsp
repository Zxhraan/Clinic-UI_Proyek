<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- link cdjn style font gugel -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <title>RSUI</title>
     <!-- box icon-->
     <link rel="stylesheet"
     href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
     <!--font.gugel poppins-->
     <link rel="preconnect" href="https://fonts.googleapis.com">
     <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
     <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;600;700&display=swap" rel="stylesheet">
     <link rel="" href="CSSSS/gaya1234.css">
</head>
<body>
    <header>
        <!-- navbar -->
        <%@include file="atas.jsp" %>
    <br><br>
    <br><br>   
    <br><br>
    <br><br>
    <br><br>   
    <br><br><br><br>
    <br><br>   
    <br><br><br><br>
    <br><br>   
    <br><br><br><br>
    <br><br>   
    <br><br>







    <div class="hero">
        <div class="container">
            <div class="box-hero">
                <div class="box">
                    <span>Selamat Datang</span>
                    <h1> KLINIK MAKARA <br>UNIVERSITAS INDONESIA</h1> <br>
                    <a href="https://rs.ui.ac.id/umum/" class="btn" >Selengkapnya <b>↩</b></a>
                    
                </div>                  
            </div>

            <div>
                
                <br>
                <br>    <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                
        
<hr>
<br>

        <!--Iklan-->
<div class="about">
    <div class="content">
        <h2>Cerita #BersamaKami</h2>
        <h1>Perjuangan Hendra Melawan Penyakit Ginjal Turunan.</h1>
        <div class="author">
            <img src="imgrs/uic.jpg" alt="Prof. Dr. dr. Endang Susalit">
            <div class="author-info">
                <h3>Prof. Dr. dr. Endang Susalit, SpPD-KGH</h3>
                <p>Spesialis Penyakit Dalam - Konsultan Ginjal dan Hipertensi</p>
            </div>
        </div>
        <p class="description">
            Penyakit ini pernah dialami oleh Hendra Johari (45). Setelah mengalami penurunan fungsi ginjal akibat ginjal polikistik, ia memutuskan untuk menjalani transplantasi ginjal di Siloam Hospitals Asri.
        </p>
        <a href="https://www.youtube.com/watch?v=1SJ6j3N6x4g" class="read-more">Lihat Selengkapnya <b>↩</b></a>
    </div>
    <div class="image-container">
        
    </div>
</div>
<br>
<br>
<div class="arah">
<div class="pemesanan" id="pp">
    <div class="left">
        <h2>Buat Janji Temu</h2>
        <h1>Sudah buat janji temu?</h1>
        <p>Hal yang bisa Anda lakukan agar kunjungan jadi lebih mudah.</p>
    </div>
    <div class="right">
        <div class="card" onclick="manageAppointment()">
            <img src="imgrs/canss.png" alt="Kelola Janji Temu">
            <div class="overlay">
                <div class="card-content">
                    <h3>Kelola Janji Temu</h3>
                    <a href="pemesanan.jsp" class="pemesanann"> >>Kelola Pemesanan</a>
                </div>
            </div>
        </div>
    </div>
    
</div>

<br>

    <!--Fasilitas Layanan 1-->
<div  class="sejarah" >
    <div class="kiri">
        <h2>Sejarah RSUI</h2>
        <h1>Sudah tau RSUI?</h1>
        <p>Hal yang bisa Anda lakukan agar Mengetahui Lebih Jauh lagi.</p>
    </div>
    <div class="kanan">
        <div class="kartu" onclick="manageAppointment()">
            <img src="imgrs/OIP (1).jpeg" alt="liat sejarah">
            <div class="belebih">
                <div class="kartu-content">
                    <h3>Sejarah RSUI</h3>
                    <a href="tentang.jsp" class="belija"> >>Tetang Kami</a>
                </div>
            </div>
        </div>
    </div>
    
</div>
</div>







    </header> <br>





<%@ include file="contact.jsp" %>
    

    <script src="jsqq/main.js"></script>
</body>
</html>

