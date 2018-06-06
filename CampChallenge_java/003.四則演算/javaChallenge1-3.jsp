<%-- 
    Document   : javaChallenge1-3
    Created on : 2018/06/06, 11:02:28
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
            final int NUMBER = 300;
            int num = 15;
            out.print(NUMBER+num);
            out.print(NUMBER-num);
            out.print(NUMBER*num);
            out.print(NUMBER/num);
            out.print(NUMBER%num);
            out.print(++num);
            out.print(++num);
        %>
    </body>
</html>
