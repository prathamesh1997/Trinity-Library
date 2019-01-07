<%-- 
    Document   : index
    Created on : Jun 24, 2018, 2:27:00 PM
    Author     : vinay sawant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
         <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trinity Library</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Abril+Fatface">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Adamina">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alfa+Slab+One">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Almendra+SC">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Amita">
    <link rel="stylesheet" href="css/dh-navbar-inverse.css">
    <link rel="stylesheet" href="css/Login-Form-Clean.css">
    <link rel="stylesheet" href="css/MUSA_navbar.css">
    <link rel="stylesheet" href="css/MUSA_navbar1.css">
    <link rel="stylesheet" href="css/Navigation-Clean.css">
    <link rel="stylesheet" href="css/Registration-Form-with-Photo.css">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    </head>
    <body>
         <div>
        <nav class="navbar navbar-dark navbar-expand-md bg-dark navigation-clean" style="font-family:Adamina, serif;font-size:16px;">
            <div class="container"><a class="navbar-brand text-white" href="index.jsp" style="font-size:25px;">Trinity Library</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div
                    class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav ml-auto">
                        
                        <li class="nav-item " role="presentation" data-toggle="modal" data-target="#mod1"><a class="nav-link" href="#" >Sign In</a></li>
                        <li class="nav-item" role="presentation" data-toggle="modal" data-target="#mod2"><a class="nav-link" href="#">Sign Up</a></li>
                       
                    </ul>
            </div>
    </div>
    </nav>
             <div class="container-fluid">
                 <div class="row">
                     <img  src="images/bookclub.jpg" width="100%" height="auto">
                 </div>
                 <hr>
                 
             </div>
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
    
<br>

      
</div>
        <div class="modal" id="mod1">
            <div class="modal-dialog  modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Enter Your Login Details.</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <form action="Login.jsp" method="post">
                            <div class="form-group">
                                <label for="text">Enter Email :</label>
                                <input type="email" name="email" class="form-control" required placeholder="Enter Username." >
                            </div>
                            <div class="form-group">
                                <label for="password">Enter Password :</label>
                                <input type="password" name="pswd" class="form-control" required placeholder="Enter Password." >
                            </div>
                            <div class="form-check">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="r1" value="Customer">User Login.
                            </label>
                          </div>
                          <div class="form-check">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="r1" value="Admin">Administrator.
                            </label>
                          </div>
                            <button type="submit" name="Ok"  class="btn btn-primary">Submit</button>
                        </form>
                        </div>
                    </div>
                </div>
            </div>
       
        <div class="modal" id="mod2">
            <div class="modal-dialog  modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                         <h4 class="modal-title">Register Yourself.</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <form action="Registration.jsp" method="post">
                        <div class="form-group">
                            <label for="text"> Enter Username.</label>
                            <input type="text" class="form-control" name="name" required placeholder="Enter Username">
                        </div>
                        <div class="form-group">
                            <label for="email"> Enter Email id.</label>
                            <input type="email" class="form-control" name="email" required placeholder="Enter Email">
                        </div>
                        <div class="form-group">
                            <label for="text"> Enter Mobile No.</label>
                            <input type="text" class="form-control" name="mob" required placeholder="Enter Mobile Number">
                        </div>
                            <div class="form-group">
                            <label for="text"> Enter Address.</label>
                            <textarea class="form-control" name="address"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="password"> Enter Password.</label>
                            <input type="password" class="form-control" name="pswd" required placeholder="Enter Password">
                        </div>     
                            
                            
                            <button type="submit" class="btn btn-primary">Submit</button> 
                            <button type="reset" class="btn btn-danger">Resets</button>
                        </form>
                    </div>
                </div>
                    
            </div>
        </div>
        
        <jsp:include page="footer.jsp"></jsp:include>  
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
