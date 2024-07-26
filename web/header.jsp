<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Wibunesia</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="CSS/bootstrap.min.css" rel="stylesheet" />
    </head>
    
    <body>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-targets="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span> 
                    </button>
                    <a class="navbar-brand" href="#">Unversitas Indonesia</a>
                </div>
                
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                      <li class="active"><a href="index.jsp">Home<span class="sr-only">(current)</span></a></li>
                        <li><a href="#">Home</a></li>
                            <li><a href="#">Kontak</a></li>
                                 <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></a>
                                    <ul class="dropdown-menu">

                                </ul>
                            </li>
                        </ul>
                    <ul>
                      <li class="btn navbar-right">
                        <button type="submit" class="btn btn-success">Logout</button>
                      </li>
                  </ul>
                </div>
            </div>
        </nav>
    </body>
</html>
