<%-- 
    Document   : Kids
    Created on : Jul 15, 2018, 8:15:32 AM
    Author     : vinay sawant
--%>
<%@page import="java.sql.*,java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trinity Library</title>
    </head>
    <body>
        <jsp:include page="c_header.jsp"></jsp:include>
        <br>
        <h3 style="font-family: Adamina, serif;text-align: center">Explore New Things</h3>
        <br>
        <%
             Connection con;
             Statement stm;
             ResultSet rs;
             String imgpath;
             
             try{
                 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=library","sa","ISHWARi123");
                
                 String query="SELECT * FROM kids;";
                stm=con.createStatement();
                rs=stm.executeQuery(query);
                
                 while(rs.next()){
                    String url=rs.getString("url");
                   
                   %>
        <div class="container">
            <div style="float: left">
                <%= url %>
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
