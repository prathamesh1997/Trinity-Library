<%-- 
    Document   : about
    Created on : Jun 25, 2018, 9:37:51 PM
    Author     : vinay sawant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trinity Library</title>
        <link rel="stylesheet" href="css/Testimonials.css">
    </head>
    <body>
        <jsp:include page="c_header.jsp"></jsp:include>
        <br>
        <div class="container">
                     <div class="row text-center">
                         <div class="col-sm-6 ">
                             <h2 style="font-family: times new roman">Our Services</h2>
                             <br>
                             <h6 style="font-family: times new roman">Lorem Ipsum is simply dummy text of the printing 
                                 and typesetting industry. Lorem Ipsum has been the industry's s
                                 tandard dummy text ever since the 1500s, when an unknown printer 
                                 took a galley of type and scrambled it to make a type specimen book.
                                 It has survived not only five centuries, but also the leap into electronic typesetting, remaining 
                                 essentially unchanged. It was popularised in the 1960s with the release.
                             
                             </h6>
                         </div>
                         <div class="col-sm-6 ">
                             <img src="images/9.jpg" width="80%" alt="decorative">
                         </div>
                     </div>
                 <br><br>
                 <div class="row text-center">
                     <div class="col-sm-6">
                         <img src="images/10.jpg" width="80%" alt="Who we are.">
                     </div>
                     <div class="col-sm-6">
                         <h2 style="font-family: times new roman">
                             Who we are ?
                         </h2>
                         <h6 style="font-family: times new roman">Lorem Ipsum is simply dummy text of the printing 
                                 and typesetting industry. Lorem Ipsum has been the industry's s
                                 tandard dummy text ever since the 1500s, when an unknown printer 
                                 took a galley of type and scrambled it to make a type specimen book.
                                 It has survived not only five centuries, but also the leap into electronic typesetting, remaining 
                                 essentially unchanged. It was popularised in the 1960s with the release.
                                 took a galley of type and scrambled it to make a type specimen book.
                                 It has survived not only five centuries, but also the leap into electronic typesetting, remaining 
                                 essentially unchanged. It was popularised in the 1960s with the release.
                             </h6>
                     </div>
                 </div>
                 </div>
        <br>
        <div class="container">
         <div class="testimonials-clean">
        <div class="container">
            <div class="intro">
                <h2 class="text-center" style="font-family: times new roman">Testimonials </h2>
              
            </div>
            <div class="row people">
                <div class="col-md-6 col-lg-4 item">
                    <div class="box">
                        <p class="description">Its been great experience being the part of the classes.Teachers are great learnt a new art.. helped alot in health and also in studies..</p>
                    </div>
                    <div class="author"><img class="rounded-circle" src="Books_Images/8.jpg">
                        <h5 class="name">Prathamesh Sawabt.</h5>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 item">
                    <div class="box">
                        <p class="description">It was a very great experience..masters here are great..earn self confidence and learnt self defence techniques..got courage to walk alone on raod even at night..</p>
                    </div>
                    <div class="author"><img class="rounded-circle" src="Books_Images/8.jpg">
                        <h5 class="name">Joel Fernandis.</h5>
                        
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 item">
                    <div class="box">
                        <p class="description">Aliquam varius finibus est, sadj asdjak dask asdj asdjet interdum justo suscipit. Vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu.</p>
                    </div>
                    <div class="author"><img class="rounded-circle" src="Books_Images/8.jpg">
                        <h5 class="name">Emilia Clark</h5>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
        <div class="row">
            <div class="col-sm-6"><br><br>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3770.222432341567!2d72.84890701415068!3d19.097895487075377!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c9b3324206b7%3A0x3497b5207d37e8d6!2sDubashi+Ground!5e0!3m2!1sen!2sin!4v1518689841059" 
    width="100%"  height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
            <div class="col-sm-6">
                <h3 style="text-align: center;font-family: times new roman">Contact Us:</h3>
                
                    <form action="#" method="post">
                        <div class="form-group">
                            <label for="text">Name :</label>
                            <input type="text" name="name" required placeholder="Enter Name." class="form-control"> 
                        </div>
                        <div class="form-group">
                            <label for="email">Email :</label>
                            <input type="email" name="email" required placeholder="Enter Email." class="form-control"> 
                        </div>
                        <div class="form-group">
                            <label for="area">Message :</label>
                            <textarea class="form-control" name="area"></textarea>
                        </div>
                        <div class="form-group">
                            <input type="submit" class="btn btn-primary">
                            <input type="reset" class="btn btn-danger">
                            
                        </div>
                    </form>
                </div>
            
        </div>
        </div>         
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
