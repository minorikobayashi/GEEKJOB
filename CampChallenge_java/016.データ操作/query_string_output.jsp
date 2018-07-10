<%-- 
    Document   : query_string_output
    Created on : 2018/07/10, 12:55:30
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
            request.setCharacterEncoding("UTF-8");
            out.println(request.getParameter("total"));
            out.println(request.getParameter("count"));
            out.println(request.getParameter("shouhinn"));
            
            int i= Integer.parseInt(request.getParameter("total"));
            int n= Integer.parseInt(request.getParameter("count"));
   
            out.println("単価は"+i/n);
            
            if(i<3000){out.print("ポイントは０<br>");}
            else if(i>=3000||i<5000){out.print("ポイントは"+i*0.04);}
            else{out.print("ポイントは"+i*0.05);}
            

       
        %>
    </body>
</html>
