<%-- 
    Document   : index
    Created on : 8 Nov, 2019, 10:51:00 AM
    Author     : c3
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sb" uri="/WEB-INF/tlds/substring_library.tld" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Find Substring</h1>
        <form>
            Enter String <input type="text" name="str">
            Start : <input type="number" name="start">
            End : <input type="number" name="end">
            <input type="submit" value="Submit">
        </form>
        <c:if test="${param.str !=null && param.start !=null && param.end!=null}">
            <sb:substring input="Tarun" start="1" end="3" />
        </c:if>    
    </body>
</html>
