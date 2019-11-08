<%-- 
    Document   : pattern_forEach
    Created on : 24 Oct, 2019, 3:00:43 PM
    Author     : c3
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pattern_</title>
    </head>
    <body>
        <form action="pattern_forEach.jsp">
            Enter: <input type="number" name ="n">
            <input type="submit">
        </form>
       
            <c:forEach begin="1" var="i" end="${param.n}">
                <c:forEach begin="1" end="${i}" var="j">
                    <c:out value="${j}"></c:out>
                </c:forEach>
                <br>    
            </c:forEach>
        
    </body>
</html>
