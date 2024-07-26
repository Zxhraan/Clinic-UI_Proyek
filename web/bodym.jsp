<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>

<html class="jsp" lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Klinik Pintar</title>
    <link rel="stylesheet" href="CSS//stylee.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
</head>

<body>
    
    <main>
        <section class="hero">
            <div class="hero-carousel">
                <div class="hero-slide" style="background-image: url('imgrs/IMG_0419-3.jpg');">
                    <div class="overlay"></div>
                    <div class="hero-content">
                        <h1>Selamat Datang</h1>
                        <p>Di Layanan Klinik Kami</p>
                    </div>
                </div>
                <div class="hero-slide" style="background-image: url('imgrs/DSC_0183.jpg');">
                    <div class="overlay"></div>
                    <div class="hero-content">
                        <h1>Kami Menyediakan Dokter</h1>
                        <p>#KeepEmployeesHealthy</p>
                    </div>
                </div>
                <div class="hero-slide" style="background-image: url('imgrs/featured.jpg');">
                    <div class="overlay"></div>
                    <div class="hero-content">
                        <h1>Trusted Corporate Partner</h1>
                        <p>Ensure Your Team's Wellbeing</p>
                    </div>
                </div>
            </div>
        </section>
        <section class="services" data-aos="fade-up">
            <h2>Our Services</h2>
            <div class="service-card" data-aos="zoom-in">
                <img src="path/to/service1.jpg" alt="Blue Card">
                <h3>Pemesanan</h3>
                <p>Menyediakan banyak Doktor Yang tersedia</p>
                <a href="pemesanan.jsp" class="pemesanann"> >>Kelola Pemesanan</a>
            </div>
            <div class="service-card" data-aos="zoom-in" data-aos-delay="100">
                <img src="path/to/service2.jpg" alt="Layanan Kesehatan Umum">
                <h3>JIka Ingin silahkan login</h3>
                <p>LOgin Jika anda Mau menuju Klinik</p>
                <a href="masuk.jsp" class="pemesanann"> >>ayo login</a>
                
            </div>
            <div class="service-card" data-aos="zoom-in" data-aos-delay="200">
                <img src="path/to/service3.jpg" alt="In-House Clinic">
                <h3>In-House Clinic</h3>
                <p>Reliable Partner for Managing Corporate Clinics</p>
                <a href="index.jsp" class="pemesanann"> >>Mari ke menu utama kami</a>
            </div>
        </section>
        <section class="testimonials" data-aos="fade-up">
            <h2>Testimonials</h2>
            <div class="testimonial-carousel">
                <div class="testimonial">
                    <p>"Our company has become more productive without any obstacles thanks to Klinik Pintar's services."</p>
                    <h3>- Client Name</h3>
                </div>
                <div class="testimonial">
                    <p>"Highly professional and efficient health services."</p>
                    <h3>- Client Name</h3>
                </div>
                <div class="testimonial">
                    <p>"Klinik Pintar is our trusted partner in maintaining employee health."</p>
                    <h3>- Client Name</h3>
                </div>
            </div>
        </section>
        <section class="cta" data-aos="fade-up">
            <div class="cta-content">
                <h2>Ready to Transform Your Corporate Healthcare?</h2>
                <p>Contact us today to learn more about our services and how we can help your business.</p>
                <button class="cta-button">Get in Touch</button>
            </div>
        </section>
    </main>
    <button class="scroll-up">Up</button>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
    <script src="jsqq//edits.js"></script>
</body>
</html>

