<%-- 
    Document   : order
    Created on : 8 Nov, 2019, 2:37:26 PM
    Author     : c3
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order</title>
    </head>
    <body>
        <h1>
            You ordered : 
            <% 
                   String st=String.valueOf(session.getAttribute("item"));
                   out.println(st);
            %>
            
                   
        </h1>
    </body>
</html>
