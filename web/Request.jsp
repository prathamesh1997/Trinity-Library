<%-- 
    Document   : Request
    Created on : Jun 27, 2018, 1:13:39 PM
    Author     : vinay sawant
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trinity Library</title>
    </head>
    <body>
        <jsp:include page="c_header.jsp"></jsp:include>
        
        <div class="container">
              <%
              String name=(String)session.getAttribute("email");  
                  
            String host="jdbc:sqlserver://localhost:1433;databaseName=library";
            Connection conn=null;
            Statement stat=null;
            ResultSet res=null;
            PreparedStatement stmt=null;
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
            conn=DriverManager.getConnection(host,"sa","ISHWARi123");
            %>
            <br>
            <div class="row">
                <div class="col-sm-6">
                <br><br>
               <img src="images/Request-ebook.jpg" width="100%" alt="Request Book">
           </div>
                <div class="col-sm-6 ">
                 <%--<h3 style="text-align: center;font-family: times new roman;color:#A52A2A" ></h3>--%>
       
            <form action="" method="post">
                  <% 
              stat=conn.createStatement();
              int u=Integer.parseInt(request.getParameter("u"));
              
              String data="select * from book_info where Book_ID='"+u+"'";
              res=stat.executeQuery(data);

              while(res.next())
              {
            %>      
           <input type="hidden" name="id" value='<%=res.getString("L_id") %>'/>
      
                 
                 <input type="hidden" class="form-control" name="n1" value='<%= name %>'> 
             
           <div class="form-group">
                 <label for="text">Book Name</label>
                 <input type="text" class="form-control" name="name" value='<%= res.getString("Book_Info") %>'> 
             </div>
           <div class="form-group">
                 <label for="text">Book Price</label>
                 <input type="text" class="form-control" name="price" value='<%= res.getString("Book_Price") %>'> 
             </div>
           <div class="form-group">
                 <label for="text">Book ID</label>
                 <input type="text" class="form-control" name="id" value='<%= res.getString("Book_ID") %>'> 
             </div>
           <div class="form-group">
                 <label for="text">Book Name</label>
                 <input type="text" class="form-control" name="type" value='<%= res.getString("Type") %>'> 
             </div>
           <div class="form-group">
                 <label for="text">Quantity.</label>
                 <input type="text" class="form-control" name="qty"> 
             </div>
              <%
              }  
            %>    
           <button type="submit" class="btn btn-success text-center">Request Book.</button>
            <a href="Customer.jsp" class="btn btn-primary text-center">Back</a>
            
            </form>
             
        </div>
           
        </div>
        </div>
        <br>
        <jsp:include page="footer.jsp"></jsp:include>
        
        <%
            
            String s1=request.getParameter("id");
            String s2=request.getParameter("n1");
            String s3=request.getParameter("name");
            String s4=request.getParameter("price");
            String s5=request.getParameter("type");
            String s6=request.getParameter("qty");
            
            if(s1!=null && s2!=null && s3!=null && s4!=null && s5!=null && s6!=null){
            String sql="insert into request (Book_ID,Name,Book_name,Book_price,Type,qty) values(?,?,?,?,?,?) ";
                  
               try{
                          
                              Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                              
                                Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=library","sa","ISHWARi123");
                               PreparedStatement ps=con.prepareStatement(sql);
                                
                               
                                ps.setString(1, s1);
                                ps.setString(2, s2);
                                ps.setString(3, s3);
                                ps.setString(4, s4);
                                ps.setString(5,s5);
                                ps.setString(6,s6);
                               
                               
                               ps.executeUpdate();
                               %>
                                
                               <jsp:forward page="Success.jsp"></jsp:forward>
                                
                               <%
                               
                               
                          }
                          catch(Exception e){
                              out.print(e);
                          }
        }
        
        %>
        
    </body>
</html>
