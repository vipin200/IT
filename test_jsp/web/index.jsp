
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Page</title>
    </head>
    <body>
        <h1>Date</h1>
        <%!
            
            DateFormat datef=new SimpleDateFormat("dd-MM-yy" );
            
        %>
        <%
            int a=5;
            String d=datef.format(new Date());   
            pageContext.setAttribute("d", d);
            pageContext.setAttribute("a", a);
        %>       
        <%= d %>
        ${d}
        ${a}
    </body>
</html>
