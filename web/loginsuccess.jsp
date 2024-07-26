<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width-device-width, initial-scale=1.0">
        <title>Wibunesia</title>
        <link rel="stylesheet" href="CSS/dada.css">
        <link rel="stylesheet" 
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    </head>
    <body>
        <center>
            <%
                String email = (String) request.getAttribute("eMail");
                if(email != null){
            %>
            <h1>Hi welcome <%=email%></h1><!-- comment -->
            <%
                }
            %>
        </center>        
        <div class="container">
            <div class="wrapper">
                <div class="title">
                <form>
                    <div><span><h3>Berhasil login!</h3></span></div>
                    <br>
                    <div><p> Selamat Datang Di Klinik UI<p></div>
                </form>
                </div>
            </div>
        </div>
        <script>
        // Redirect to home screen after 2 seconds
        setTimeout(function() {
            window.location.href = "index.jsp"; // Replace with your home screen URL
        }, 3500); // 2000 milliseconds = 2 seconds
    </script>
    </body>
</html>
