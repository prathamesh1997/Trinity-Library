<%-- 
    Document   : admin
    Created on : Jun 25, 2018, 12:41:12 PM
    Author     : vinay sawant
--%>
<%@page import="javax.persistence.Table"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trinity Library</title>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css">
    </head>
    <body>
        <jsp:include page="a_header.jsp"></jsp:include><br>
        <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <h3 style="text-align: center;font-family: times new roman">Upload Image Here :</h3>
                <div class="form-group">
                    <form action="book_controller.jsp" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="file">(Resolution 350x260 ) :</label>
                             <input type="file" name="file" required placeholder="Upload Image here" class="form-control">
                        </div>
                        <div class="form-group">
                            <button type="submit" name="Ok" class="btn btn-success">Submit Image</button>
                        </div>   
                    </form>
                    <br>
                    <h4 style="text-align: center;font-family: times new roman">Copy Video URL here:</h4>
                    <form action="kids_url.jsp" method="post">
                        <div class="form-group">
                            <label for="text">Kids Section:(set width:100% && height:300)</label>
                            <textarea class="form-control" name="kids"></textarea>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">Submit URL</button> 
                        </div>
                    </form>
                </div>
                
            </div>
            <div class="col-sm-4">
                <h3 style="text-align: center;font-family: times new roman">Insert Book Info Here:</h3>
                <form  action="b_info.jsp" method="post">
                    <div class="form-group">
                        <label for="text">Book Id.</label>
                        <input type="text" class="form-control" required placeholder="Enter Book Id." name="id">    
                    </div>
                    
                    <div class="form-group">
                        <label for="text">Book Name.</label>
                        <input type="text" class="form-control" name="name" required placeholder="Enter Book Name.">    
                    </div>
                     <div class="form-group">
                        <label for="text">Book Price.</label>
                        <input type="text" class="form-control" name="price" required placeholder="Enter Book Price.">    
                    </div>
                     <div class="form-group">
                        <label for="text">Book Type.</label>
                        <input type="text" class="form-control" name="type" required placeholder="Enter Book Type.">    
                    </div>
                    
                    <div class="form-group">
                        <button type="submit" class="btn btn-success">Submit.</button>
                        <button type="reset" class="btn btn-danger">Reset.</button>
                    </div>
                </form>
            </div>
            <div class="col-sm-4">
                <img src="images/7.jpg" style="width: 100%;">
            </div>
        </div>
        </div> 
        <hr>
        <div class="container">
            <h3 style="text-align: center;font-family: times new roman;color:#A52A2A" >Edit or Delete the Information.</h3>
            <table class="table">
                <tr>
                    <td><b>ID</b></td>
                    <td><b>Image Path</b></td>
                    <td><b>Book Info</b></td>
                    <td><b>Book Price</b></td>
                    <td><b>Book ID</b></td>
                    <td><b>Book Type</b></td>
                    <td><b>Edit</b></td>
                    <td><b>Delete</b></td>
                </tr>
                 <%
            try{
            
                Connection conn=null;
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn =  DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=library","sa","ISHWARi123");
                Statement stmt=conn.createStatement();
                String sql="SELECT *FROM image_upload INNER JOIN book_info ON image_upload.L_id = book_info.L_id;";
               ResultSet resultSet=stmt.executeQuery(sql);
                
              while(resultSet.next()== true){
                    
                   %>
                   <tr>
        <td><%= resultSet.getString("L_id")%></td>
        <td><%= resultSet.getString("Image_p")%></td>
        <td><%= resultSet.getString("Book_Info")%></td>
        <td><%= resultSet.getString("Book_Price") %></td>
        <td><%= resultSet.getString("Book_ID") %></td>
        <td><%= resultSet.getString("Type") %></td>
          
        <td>
            <a href='A_Edit.jsp?u=<%=resultSet.getString("Book_ID") %>' class="btn btn-warning">Edit</a>
        </td>
        <td><a href='delete.jsp?d=<%= resultSet.getString("Book_ID")  %>' class="btn btn-danger">Delete</a></td>
      </tr>
              <%
               }
                
                
                
}
            catch(Exception e)
            {
                out.println(e);
            }
            %>      
                   
            </table>
            
            
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
