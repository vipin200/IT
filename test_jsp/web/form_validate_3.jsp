<%-- 
    Document   : form_validate_3
    Created on : 7 Nov, 2019, 2:11:20 PM
    Author     : c3
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validate</title>
    </head>
    <body>
        <h1>Form Validate</h1>
        <form>
            Enter name :<input type="text" name="name" ><br>
            D.O.B :     <input type="date" name="dob" ><br>
            Email:      <input type="email" name="email"><br>
            Lucky number: <input type="number" name="ln" ><br>
            <input type="submit" value="Submit">
        </form>
        <% 
            String name=request.getParameter("name");
            String dob=request.getParameter("dob");
            String email=request.getParameter("email");
            String ln=request.getParameter("ln");
            if(name == "" || dob == "" || email == "" || ln=="")
            {
                out.println("Enter all inputs !!");
            }
            if(name != null || dob != null || email != null || ln!=null)
            {
                out.println("All inputs are correct !!");
            }
        %>
        <c:if test="${name != null && dob != null && email !=null && ln != null}">
            <c:out value="Welcome" />
        </c:if>
            
    </body>
</html>
