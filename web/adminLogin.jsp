<%@include file="atas.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width-device-width, initial-scale=1.0">
        <title>Admin Login</title>
        <link rel="stylesheet" href="CSS/login.css">
        <link rel="stylesheet" 
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    </head>
<body>
    <div class="container">
        <div class="wrapper">
            <div class="title"><span>Admin Login</span></div>
            <form action="<%=request.getContextPath()%>/AdminLoginServlet" method="post">
                <div class="row">
                    <i class="fas fa-user"></i>
                    <input type="text" placeholder="Username" name="adminUser" required>
                </div>
                <div class="row">
                    <i class="fas fa-lock"></i>
                    <input type="password" placeholder="Password" name="adminPass" required>
                </div>
                <div class="row button">
                    <input type="submit" value="Login">
                </div>
            </form>
        </div>
    </div>
</body>
</html>
<%@include file="footer.jsp" %>

