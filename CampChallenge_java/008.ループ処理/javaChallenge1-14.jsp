<%-- 
    Document   : javaChallenge1-14
    Created on : 2018/06/15, 16:48:16
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
            int num =1000;
            while(num >=100){
                num = num/2;
            }
            out.print(num);
            
        %>
    </body>
</html>
