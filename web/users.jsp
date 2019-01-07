<%-- 
    Document   : users
    Created on : Jul 6, 2018, 9:23:13 AM
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

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <jsp:include page="a_header.jsp"></jsp:include>
        <br>
        <div class="container">
            <h3 style="text-align: center;font-family: times new roman;color:#A52A2A" >Users Registered.</h3>
            <table class="table">
                <tr>
                    <td><b>Cust_ID</b></td>
                    <td><b>Name</b></td>
                    <td><b>Email _ID</b></td>
                    <td><b>Address</b></td>
                    <td><b>Contact</b></td>
                    
                </tr>
                <%
            try{
            
                Connection conn=null;
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn =  DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=library","sa","ISHWARi123");
                Statement stmt=conn.createStatement();
                String sql="SELECT *FROM register where Role='Customer';";
               ResultSet resultSet=stmt.executeQuery(sql);
                
              while(resultSet.next()== true){
                    
                   %>
                   <tr>
                        <td><%= resultSet.getString("Cust_ID")%></td>
                        <td><%= resultSet.getString("C_name")%></td>
                        <td><%= resultSet.getString("C_Email_Id")%></td>
                        <td><%= resultSet.getString("C_address") %></td>     
                          <td><%= resultSet.getString("C_phoneno") %></td>
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
         <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
