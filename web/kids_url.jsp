<%-- 
    Document   : kids_url
    Created on : Jul 15, 2018, 9:16:17 AM
    Author     : vinay sawant
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trinity Library</title>
    </head>
    <body>
       <%
           String kids=request.getParameter("kids");
           
           String sql="insert into kids (url) values(?) ";
           
           try{
                          
                              Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                              
                                Connection conn=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=library","sa","ISHWARi123");
                               PreparedStatement ps=conn.prepareStatement(sql);
                                
                                ps.setString(1, kids);
                                
                               
                               ps.executeUpdate();
                               %>
       <div class="alert alert-success alert-dismissible">
                                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                                <strong>URL uploaded successfully.</strong> 
                               </div>
                               <jsp:include page="admin.jsp"></jsp:include>
                                
                               <%
                               
                               
                          }
                          catch(Exception e){
                             out.print(e);
                          }
        %>
        
    </body>
</html>
