<%-- 
    Document   : Registration
    Created on : Jun 24, 2018, 9:20:49 AM
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
            String s1=request.getParameter("name");
               String s2=request.getParameter("email");
                  String s3=request.getParameter("mob");
                     String s4=request.getParameter("address");
                        String s5=request.getParameter("pswd");
                          String s6="Customer";
                          
                          session.setAttribute("name",s1);
                          session.setAttribute("email",s2);
                          session.setAttribute("mob",s3);
                          session.setAttribute("address",s4);
                          session.setAttribute("pswd",s5);
                          session.setAttribute("Customer",s6);
                          
                          
                          
                          String sql="insert into register (C_name,C_Email_id,C_phoneno,C_address,c_password,Role) values(?,?,?,?,?,?) ";
                  
                          try{
                          
                              Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                              
                                Connection conn=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=library","sa","ISHWARi123");
                               PreparedStatement ps=conn.prepareStatement(sql);
                                
                                ps.setString(1, s1);
                                ps.setString(2, s2);
                                ps.setString(3, s3);
                                ps.setString(4, s4);
                                ps.setString(5,s5);
                               ps.setString(6,s6);
                               
                               ps.executeUpdate();
                               %>
                                <div class="alert alert-success alert-dismissible">
                                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                                <strong>Registration Done successfully, Continue to Sign In.</strong> 
                               </div>
                               <jsp:include page="index.jsp"></jsp:include>
                                
                               <%
                               
                               
                          }
                          catch(Exception e){
                              e.printStackTrace();
                          }
        %>
    </body>
</html>
