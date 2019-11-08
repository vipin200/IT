<%-- 
    Document   : hello.jsp
    Created on : 8 Nov, 2019, 2:23:45 PM
    Author     : c3
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buy</title>
    </head>
    <body>
        <h1>
         Hello ${param.name}        
        </h1>
        <form>
            Enter item you want to buy:<input type="text" name="it">
            <input type="submit" value="Submit">
        </form>
         <c:if test="${param.it != null}" >
             <c:set var="item" value="${param.it}" scope="session" />
             <c:redirect url="order.jsp" ></c:redirect>
         </c:if>
    </body>
</html>
