<%-- 
    Document   : dynamic_grid
    Created on : Jun 26, 2018, 9:50:35 AM
    Author     : vinay sawant
--%>
<%@page import="java.sql.*,java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=ABeeZee">
     <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Adamina">
    <link rel="stylesheet" href="css/styles.min.css">
    <link rel="stylesheet" type="text/css" href="css/admin.css">
</head>
    </head>
    <body>
        <jsp:include page="c_header.jsp"></jsp:include>
        <%-- New Arrivals--%>
        
        <br>
        <h3 style="font-family:Adamina, serif;text-align:center "><b>History.</b></h3>
        <br>
        <%
             Connection con;
             Statement stm;
             ResultSet rs;
             String imgpath;
             
             try{
                 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=library","sa","ISHWARi123");
                
                 String query="SELECT *FROM image_upload INNER JOIN book_info ON image_upload.L_id = book_info.L_id where Type='History';";
                stm=con.createStatement();
                rs=stm.executeQuery(query);
                
                 while(rs.next()){
                    String Id=rs.getString("L_id");
                    imgpath=rs.getString("Image_p");
                    String p_Name=rs.getString("Book_Info");
                    String p_Price=rs.getString("Book_Price");
                    String p_ID=rs.getString("Book_ID");
                   %>
                   
                   <div class="container">
                       
                   <div class="">
                       <div class="card col-md-3 text-center" style="float: left"  >
                           <img src="Books_Images/<%= imgpath %>" style="width: 100%" alt="">
                           <div class="card-body">
                               <%--<h4 class="card-title" style="font-family: times new roman"><%= p_Name %></h4>--%>
                               <p class="card-text" ><span class="fa fa-inr" style="font-size:24px"> <%= p_Price %> /-</span></p>
                              <%-- <a class="btn btn-primary" href="Request.jsp?r=<%= rs.getString("p_ID")%>">Request Book.</a>--%>
                               <a href='Request.jsp?u=<%=rs.getString("Book_ID") %>' class="btn btn-primary">Request Book</a>
                           </div>
                       </div>
                       
                   </div>
                   </div>
                     
       <%
                
                 }
             }
             catch(Exception e){
                 out.print(e);
             }
        
        %>
       
    </body>
</html>
