<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Operation</title>
    </head>
    <body>
        <% 
            if(request.getParameter("opr")!= null && request.getParameter("n1") !=null && request.getParameter("n2") !=null)
            {
                int n1=Integer.parseInt(request.getParameter("n1"));
                int n2=Integer.parseInt(request.getParameter("n2"));
                String val=request.getParameter("opr");
                if(val.equals("add"))
                {
                    int sum=n1+n2;
                    out.println("Result: "+sum ) ;
                }
                else if(val.equals("sub"))
                {
                    int r=n1-n2;
                    out.println("Result: "+r ) ;
                }
                else 
                {
                    double div= (double)n1/(double)n2;
                    out.println("Result: "+div) ;
                }
            }
           %>
           <br>
           <c:if test="${param.n1} == \"add\" ">
               <c:out value="${param.n1 + param.n2}" />
           </c:if>
           <c:if test="${param.n1} == \"sub\" ">
               <c:out value="${param.n1 - param.n2}" />
           </c:if>
           <c:if test="${param.n1} == \"div\" ">
               <c:out value="${param.n1 / param.n2}" />
           </c:if>
           
    </body>
</html>
