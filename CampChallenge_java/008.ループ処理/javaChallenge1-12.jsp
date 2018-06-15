<%-- 
    Document   : javaChallenge1-12
    Created on : 2018/06/15, 15:46:31
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
              String text ="A";
            for(int i =0; i<30;i++)
            out.print(text);
        %>
    </body>
</html>
