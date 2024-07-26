<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width-device-width, initial-scale=1.0">
        <title>Wibunesia</title>
        <link rel="stylesheet"href="CSS/dada.css">
        <link rel="stylesheet" 
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    </head>
<body>
    <div class="container">
        <div class="wrapper">
            <div class="title"><span>Login Klinik!</span></div>
            <form action="<%=request.getContextPath()%>/LoginServlet" method="post" >
                <div class="row">
                    <i class="fas fa-user"></i>
                    <input type="text" placeholder="Email" name="eMail" required>
                </div>
                <div class="row">
                    <i class="fas fa-lock"></i>
                    <input type="password" placeholder="Password" name="pWord" required>    
                </div>
<!--                <div class="pass"><a href="forPword.jsp">Forget Password?</a></div>-->
                <div class="row button">
                    <input type="submit" value="Login"  href="loginsuccess.jsp> 
                </div>
                

                <div class="signup-link">Belum punya akun? <a href="addwibu.html">Signup Now!</a></div>
            </form>
        </div>
    </div>
</body>
</html>
<%@include file="footer.jsp" %>