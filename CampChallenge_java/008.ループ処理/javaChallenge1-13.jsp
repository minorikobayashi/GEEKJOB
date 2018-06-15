<%-- 
    Document   : javaChallenge1-13
    Created on : 2018/06/15, 16:17:52
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
            int total = 0;
            for(int i=1;i<101;i++){
                total=total+i;
            }
            out.print(total);
        %>
    </body>
</html>
