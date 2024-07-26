<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>atas</title>
    <link rel="stylesheet" type="text/css" href="CSSSS/gaya1234.css">
    <link rel="icon" type="image/png" href="imgrs/logo-ui-_horizontal_no_frame_lightbackground-1.png">
    <style>
        .navbar {
            padding: 20px 0;
            position: fixed;
            width: 100%;
            z-index: 1000;
            transition: all 0.3s ease;
        }
        
        .navbar.scrolling-active {
            background-color: white;
            padding: 30px 0;
            z-index: 1000;
            color: black;
        }
        
        .navbar .box-navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .navbar .box-navbar .menu {
            display: flex;
            column-gap: 50px;
        }
        
        .navbar .box-navbar .menu li {
            list-style-type: none;
        }
        
        .navbar .box-navbar .menu li a {
            text-decoration: none;
            color: black;
            padding: 10px 15px;
            transition: color 0.3s ease, background-color 0.3s ease;
        }
        
        .navbar.scrolling-active .box-navbar .menu li a {
            color: black;
        }
        
        .navbar .box-navbar .menu .active a {
            background-color: green;
        }
        
        .navbar .box-navbar .menu li a:hover {
            background-color: green;
        }
        
        .logo {
            display: flex;
            align-items: center;
        }
        
        .ui img {
            width: 30%;
        }

        .user-info {
            position: relative; /* For relative positioning so dropdown can be absolute */
        }

        .dropdown {
            display: none;
            position: absolute;
            top: 100%;
            right: 0;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 10px;
            z-index: 1;
        }

        .dropdown a {
            display: block;
            padding: 5px 10px;
            color: #333;
            text-decoration: none;
            font-size: 14px;
        }

        .dropdown a:hover {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <div class="container">
            <div class="box-navbar">
                <div class="logo">
                    <a href="#" class="ui"><img src="imgrs/logo-ui-_horizontal_no_frame_lightbackground-1.png" alt=""></a>
                </div>
                <ul class="menu">
                    <li><a href="index.jsp">Utama</a></li>
                    <li><a href="bodym.jsp">Layanan</a></li>
                    <li><a href="index.jsp">Tentang</a></li>
                    <li><a href="doctor.jsp">Doktor</a></li>
                    <li><a href="listobat.jsp">Store</a></li>
                    <li><a href="cart.jsp">Keranjang</a></li>
                    <li class="active">
                        <% 
                            HttpSession sess = request.getSession(false);
                            if (sess != null && sess.getAttribute("login") != null && (Boolean) sess.getAttribute("login")) {
                        %>
                            <div class="user-info" id="userDropdown">
                                <%= sess.getAttribute("user") %> 
                                <div class="dropdown" id="dropdownContent">
                                    <a href="logout.jsp">Log Out</a>
                                </div>
                            </div>
                        <% 
                            } else {
                        %>
                        <a href="masuk.jsp" id="loginBtn">Masuk</a>
                        <% } %>
                    </li>
                </ul>
                <i class="fa-solid fa-bars menu-bar"></i>
            </div>
        </div>
    </div>

    <script>
        // Script to show dropdown on hover
        var userDropdown = document.getElementById("userDropdown");
        var dropdownContent = document.getElementById("dropdownContent");

        if (userDropdown) {
            userDropdown.addEventListener("mouseenter", function() {
                dropdownContent.style.display = "block";
            });

            userDropdown.addEventListener("mouseleave", function() {
                dropdownContent.style.display = "none";
            });
        }
    </script>
</body>
</html>
