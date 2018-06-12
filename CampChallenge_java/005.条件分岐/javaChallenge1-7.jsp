<%-- 
    Document   : javaChallenge1-7
    Created on : 2018/06/12, 11:22:27
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
            char moji = 'o';
            switch(moji){
                case 'A':
                    out.print("英語");
                    break;
                case 'あ':
                    out.print("日本語");
                    break;
                    
                
            }
                
            
            
        %>
        
    </body>
</html>
