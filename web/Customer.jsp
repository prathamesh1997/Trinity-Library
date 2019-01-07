<%-- 
    Document   : Customer
    Created on : Jun 25, 2018, 12:41:35 PM
    Author     : vinay sawant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trinity Library</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css">
    </head>
    <body style="background-color:#e6e6e6">
        <jsp:include page="c_header.jsp"></jsp:include>
        <!--    Carousel Starts here-->
        <div >
  <div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
    <li data-target="#demo" data-slide-to="3"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
        <img src="images\3.jpg"  width="100%">
    </div>
    <div class="carousel-item">
      <img src="images\4.jpg"  width="100%" >
    </div>
    <div class="carousel-item">
      <img src="images\5.jpg" a width="100%" >
    </div>
      <div class="carousel-item">
      <img src="images\6.jpg" a width="100%" >
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div> 
</div>
        <br>
        
        <jsp:include page="dynamic_grid.jsp"></jsp:include>
        
        <%--<jsp:include page="footer.jsp"></jsp:include>--%>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
