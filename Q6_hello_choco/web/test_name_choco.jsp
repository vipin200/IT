<%-- 
    Document   : test_name
    Created on : 7 Nov, 2019, 3:19:03 PM
    Author     : c3
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="/WEB-INF/tld/ch_tld.tld" prefix="ch" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello</title>
    </head>
    <body>
        <form>
            Enter name: <input type="text" name="name"><br>
            Textures: <br>
            Chewy: <input type="radio" name="tx" value="chewy" checked><br>
            Crunchy: <input type="radio" name="tx" value="crunchy"><br>
            <input type="submit" value="submit">
        </form>
        <br>
        <c:if test="${param.name != null && param.name!=\"\" }">
            <ch:hello name="${param.name}" />
        </c:if>
        <br>
        
        <c:if test="${param.tx != null}" >
            <ch:choco texture="${param.tx}" /> 
        </c:if>
        
    </body>
</html>
