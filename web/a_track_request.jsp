<%-- 
    Document   : a_track_request
    Created on : Jul 6, 2018, 10:28:11 AM
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
    </head>
    <body>
        <jsp:include page="a_header.jsp"></jsp:include>
            <br>
            <div class="container">
                <h3 style="text-align: center;font-family: times new roman;color:#A52A2A" >Track Request & Reply.</h3>
                <table class="table">
                    <tr>
                    <td style="font-family: times new roman"><b> ID</b></td>
                    <td style="font-family: times new roman"><b>Name</b></td>
                    <td style="font-family: times new roman"><b>Book Name</b></td>
                    <td style="font-family: times new roman"><b>Book Price</b></td>
                    <td style="font-family: times new roman"><b>Type</b></td>
                    <td style="font-family: times new roman"><b>Qty</b></td>
                     <td style="font-family: times new roman"><b>Send Email</b></td>
                     <td style="font-family: times new roman"><b>Issue Book.</b></td>
                </tr>
                <%
            try{
            
                Connection conn=null;
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn =  DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=library","sa","ISHWARi123");
                Statement stmt=conn.createStatement();
                String sql="SELECT *FROM request";
               ResultSet resultSet=stmt.executeQuery(sql);
                
              while(resultSet.next()== true){
                    
                   %>
                   
                    <tr>
        <td><%= resultSet.getString("r_id")%></td>
        <td><%= resultSet.getString("Name")%></td>
        <td><%= resultSet.getString("Book_name")%></td>
        <td><%= resultSet.getString("Book_price") %></td>
        <td><%= resultSet.getString("Type") %></td>
        <td><%= resultSet.getString("qty") %></td>
          
        <td>
            <a href='#.jsp?u=<%=resultSet.getString("r_id") %>' class="btn btn-success">Email</a>
        </td>
         <td>
            <a href='#.jsp?u=<%=resultSet.getString("r_id") %>' class="btn btn-primary">Issue Book</a>
        </td>
        
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
            <br>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
