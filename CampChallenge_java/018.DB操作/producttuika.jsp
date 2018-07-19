<%-- 
    Document   : producttuika
    Created on : 2018/07/19, 14:40:22
    Author     : 小林誠典
--%>

<%@page import="java.sql.*"%>
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
            int productnumber=Integer.parseInt(request.getParameter("productnumber"));
            String productname=request.getParameter("productname");
            int productprice=Integer.parseInt(request.getParameter("productprice"));
            
            
            Connection con=null;
            PreparedStatement st=null;
            
            
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/GEEKJOB_kobayashi?useUnicode=true&useJDBCCompliantTimezoneShift="
                    + "true&useLegacyDatetimeCode=false&serverTimezone=UTC",
                    "KOBAYASHI","password5173");
            
            st=con.prepareStatement("insert into product(productnumber,productname,price) value(?,?,?)");
            
            st.setInt(1,productnumber);
            st.setString(2,productname);
            st.setInt(3, productprice);
            
            st.executeUpdate();
            
            st.close();
            con.close();
        %>
        <h3>商品を追加しました。</h3>
        <A Href="http://localhost:8080/Callenge4/user01.jsp">戻る</A>
    </body>
</html>
