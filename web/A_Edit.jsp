<%-- 
    Document   : A_Edit
    Created on : Jul 6, 2018, 8:30:28 AM
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
        <title>Trinity Library.</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <jsp:include page="a_header.jsp"></jsp:include>
        <br>
        <div class="container">
             <%
                
            String host="jdbc:sqlserver://localhost:1433;databaseName=library";
            Connection conn=null;
            Statement stat=null;
            ResultSet res=null;
            PreparedStatement stmt=null;
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
            conn=DriverManager.getConnection(host,"sa","ISHWARi123");
            %>
            <div class="row">
                <div class="col-sm-6">
                    <img src="images/t1.jpg" width="80%" alt="Request Book">
                </div>
                <div class="col-sm-6">
                    <br>
                     <h3 style="text-align: center;font-family: times new roman">Update Book Info.</h3>
                    <form action="" method="post">
                        <%
                            stat=conn.createStatement();
                            int u=Integer.parseInt(request.getParameter("u"));

                            String data="select * from book_info where Book_ID='"+u+"'";
                            res=stat.executeQuery(data);

                            while(res.next())
                            {
                        
                        %>
                         <input type="hidden" name="id" value='<%=res.getString("Book_ID") %>'/>
                        <div class="form-group">
                            <label for="text">Book Name</label>
                            <input type="text" class="form-control" name="name" value='<%= res.getString("Book_Info") %>'> 
                        </div>
                      <div class="form-group">
                            <label for="text">Book Price</label>
                            <input type="text" class="form-control" name="price" value='<%= res.getString("Book_Price") %>'> 
                        </div>
                      
                      <div class="form-group">
                            <label for="text">Book Type</label>
                            <input type="text" class="form-control" name="type" value='<%= res.getString("Type") %>'> 
                        </div>
             <%
              }  
            %>    
            <button type="submit" class="btn btn-success text-center">Update Book Info.</button>
            <a href="admin.jsp" class="btn btn-primary text-center">Back</a>
                    </form>
                </div>
            </div>
        </div>
        <br>
        <jsp:include page="footer.jsp"></jsp:include>
        
        <%
String a=request.getParameter("id");
//String b=request.getParameter("img");
String c=request.getParameter("name");
String d=request.getParameter("price");
//String e=request.getParameter("b_id");
String f=request.getParameter("type");
    if(a!=null && c!=null && d!=null &&  f!=null )
    { 
        
        try{
        String query="update book_info set Book_Info=?,Book_Price=?,Type=? where Book_ID='"+a+"'";
        stmt=conn.prepareStatement(query);
        stmt.setString(1, c);
        stmt.setString(2, d);
        
        stmt.setString(3, f);
        stmt.executeUpdate();
        
        %>
        <div class="alert alert-success alert-dismissible">
             <button type="button" class="close" data-dismiss="alert">&times;</button>
         <strong>Information was updated successfully!!!</strong> 
        </div>
        <jsp:forward page="admin.jsp"></jsp:forward>
   <%   
        }
        catch(Exception e){
        out.print(e);

}
}
    

%>
    </body>
</html>
