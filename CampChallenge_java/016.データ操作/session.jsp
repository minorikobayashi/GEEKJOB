<%-- 
    Document   : session
    Created on : 2018/07/10, 16:21:14
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

                String a=(String)session.getAttribute("a");
                String c=(String)session.getAttribute("c");
                String b=(String)session.getAttribute("b");
                
                if(a==null){a="";}
                if(b==null){b="";}
                if(c==null){c="";}

                

        %>
         <form action="session02" method="get">
            
             名前<input type="text" name="name" value="<%if(a==null){out.print("");}else{out.print(a);}%>" ><br>
            
             性別<input type="radio" name="seibetu" value="man" <%if(b.equals("man")){out.print("checked");}%>>男
             <input type="radio" name="seibetu" value="woman"  <%if(b.equals("woman")){out.print("checked");}%>>女<br>
            
            趣味<textarea name="shumi" ><%if(c==null){out.print("");}else{out.print(c);} %></textarea><br>
            <input type="submit" name="btnsubmit">
            
        </form>
                    
    </body>
</html>
