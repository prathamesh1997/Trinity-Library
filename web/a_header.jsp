<%-- 
    Document   : a_header
    Created on : Jun 25, 2018, 1:59:55 PM
    Author     : vinay sawant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/MUSA_navbar.css">
    <link rel="stylesheet" href="css/MUSA_navbar1.css">
    <link rel="stylesheet" href="css/Navigation-Clean.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Adamina">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    </head>
    <body>
        <nav class="navbar navbar-dark navbar-expand-md bg-dark navigation-clean" style="font-family:Adamina, serif;font-size:16px;">
            <div class="container"><a class="navbar-brand text-white" href="admin.jsp" style="font-size:25px;">Admin Panel</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div
                    class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav ml-auto">
                        <li class="nav-item" role="presentation"><a class="nav-link active" href="users.jsp">Users.</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="a_track_request.jsp">Track Request.</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="#">Feedback.</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="index.jsp">Log Out</a></li>
                    </ul>
            </div>
    </div>
    </nav>
        
        
    </body>
</html>
