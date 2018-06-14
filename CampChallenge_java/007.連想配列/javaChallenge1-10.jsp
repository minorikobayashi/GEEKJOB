<%-- 
    Document   : javaChallenge1-10
    Created on : 2018/06/14, 10:18:34
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
        <%@ page import = "java.util.HashMap"%>
        <%HashMap<String,String>text1 =new HashMap<String,String>();
          text1.put("1","AAA");
          text1.put("hello","world");
          text1.put("soeda","33");
          text1.put("20","20");
          out.print(text1);
          out.print(text1.get("soeda"));
        %>
    </body>
</html>
