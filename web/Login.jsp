<%-- 
    Document   : Login
    Created on : Jun 25, 2018, 12:12:40 PM
    Author     : vinay sawant
--%>



<%@page import="java.sql.ResultSet"%>
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
          String s1=request.getParameter("email");
          String s2=request.getParameter("pswd");
          String s3=request.getParameter("r1");
          
          session.setAttribute("email",s1);
          
          try{
              
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                              
                Connection conn=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=library","sa","ISHWARi123");
              PreparedStatement ps=conn.prepareStatement("select Role from register where C_Email_Id=? and c_password=? and Role=?");
                         ps.setString(1, s1);
                         ps.setString(2, s2);
                         ps.setString(3, s3);
                         
                         ResultSet rs = ps.executeQuery();
                         
                         if(rs.next()){
                             String type=rs.getString("Role");
                             
                              if("Admin".equals(type))
                            {
                                response.sendRedirect("admin.jsp");
                            }
                                else if("Customer".equals(type))
                        {
                            response.sendRedirect("Customer.jsp");
                        }
                             
                             
                             
                         }
                         else{
                             %>
                                <div class="alert alert-danger alert-dismissible">
                                   <button type="button" class="close" data-dismiss="alert">&times;</button>
                               <strong>Email Id or password is Incorrect.Continue to Sign In.</strong> 
                              </div>
                              <jsp:include page="index.jsp"></jsp:include>
                    <%
                         }
                         
              
          }
          catch(Exception e){
              out.print(e);
          }
      
      %>
    </body>
</html>
