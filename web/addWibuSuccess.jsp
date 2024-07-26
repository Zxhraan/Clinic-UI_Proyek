
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Wibunesia</title>
        <link rel="stylesheet" href="CSS/login.css">
        <link rel="stylesheet" 
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    </head>
    <body>
    <center>
        <%
            String email = (String) request.getAttribute("eMail");
            if (email != null) {
        %>
            <h1>Hi welcome <%=email%> </h1>
        <%
            }
        %>
    </center>
    <div class="container">
        <div class="wrapper">
            <div class="title"><span>Data Added Sucessfully!</span></div>
            <form action="masuk.jsp" method="post">
                <div class="row button">
                    <input type="submit" value="Back to Login">
                    
                </div>
            </form>
        </div>
    </div>
</body>
</html>
<%@include file="footer.jsp" %>