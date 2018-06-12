<%-- 
    Document   : javaChallenge1-5
    Created on : 2018/06/12, 10:19:36
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
            int num = 1;
            if(num==1){out.print("1です！");}
            else if(num==2){out.print("プログラミングキャンプ！");}
            else{out.print("その他です！");}
            
            
       
        %>
        
    </body>
</html>
