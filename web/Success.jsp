<%-- 
    Document   : Success
    Created on : Jul 2, 2018, 9:16:55 AM
    Author     : vinay sawant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trinity Library</title>
    </head>
    <body>
       
        <jsp:include page="c_header.jsp"></jsp:include>
         <div class="alert alert-success alert-dismissible">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong>Request added to Cart!!! Continue ti cart to complete the purchase.</strong> 
       </div>
         <jsp:include page="dynamic_grid.jsp"></jsp:include>
    </body>
</html>
