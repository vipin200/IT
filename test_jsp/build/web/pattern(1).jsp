<%-- 
    Document   : pattern
    Created on : 18 Oct, 2019, 4:08:20 PM
    Author     : c3
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pattern</title>
    </head>
    <body>
        <form action="pattern.jsp">
            Enter n : <input type="number" name ="n">
            <input type="submit">
        </form>
        
        <%
            if(request.getParameter("n") != null)
            {
                int n= Integer.parseInt(request.getParameter("n"));
                for(int i=1;i<=n;i++){
                    for(int j=1;j<=i;j++)
                        out.println(" "+j);
                out.println("<br>");
                }
            }    
         %>
    </body>
</html>
