<%-- 
    Document   : javaChallenge1-8
    Created on : 2018/06/12, 14:54:30
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
         <%@ page import="java.util.ArrayList"%>
         <%
             ArrayList<String>text = new ArrayList<String>();
             text.add("10");
             text.add("100");
             text.add("soeda");
             text.add("hayashi");
             text.add("-20");
             text.add("118");
             text.add("END");
             out.print(text.get(0));
             out.print(", ");
             out.print(text.get(1));
              out.print(", ");
             out.print(text.get(2));
              out.print(", ");
             out.print(text.get(3));
              out.print(", ");
             out.print(text.get(4));
              out.print(", ");
             out.print(text.get(5)); 
             out.print(", ");
             out.print(text.get(6));
         %>
    </body>
</html>
