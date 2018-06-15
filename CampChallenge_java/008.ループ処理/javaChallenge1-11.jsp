<%-- 
    Document   : javachallenge1-11
    Created on : 2018/06/14, 14:54:49
    Author     : 小林誠典
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            long total =1;
            for(long i=0;i<20;i++){
                total = total*8;
            }
            out.print(total);
        %>
    </body>
</html>
