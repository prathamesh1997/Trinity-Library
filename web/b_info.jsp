<%-- 
    Document   : b_info
    Created on : Jun 25, 2018, 6:56:37 PM
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
        <%
            int id=Integer.parseInt(request.getParameter("id"));
            String name=request.getParameter("name");
            String price=request.getParameter("price");
            String type=request.getParameter("type");
            String sql="insert into book_info (L_id,Book_Info,Book_Price,Type) values(?,?,?,?) ";
                
             try
                {
                  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                  Connection conn=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=library","sa","ISHWARi123");
                  PreparedStatement ps=conn.prepareStatement(sql);
                  ps.setInt(1, id);
                  ps.setString(2, name);
                  ps.setString(3, price);
                 ps.setString(4, type);
                 
                   
                  ps.executeUpdate();

        %>
         
                    <div class="alert alert-success alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Book Information inserted successfully.</strong> 
                   </div>
                   <jsp:include page="admin.jsp"></jsp:include>
                <%
                }
                catch(Exception e)
                {
                   out.print(e);
                }
                
            
        %>
    </body>
</html>
