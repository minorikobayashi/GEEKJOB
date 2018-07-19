<%-- 
    Document   : producthyouji
    Created on : 2018/07/19, 13:27:41
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
            try{
        
                String a=(String)session.getAttribute("username");
            
                if(a==null){%>
                    <A Href="http://localhost:8080/Callenge4/user.html">toppage</A>
                <%}else{
                    Connection con =null;
                    PreparedStatement st=null;
                    ResultSet data=null;
            
                    Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/GEEKJOB_kobayashi?useUnicode=true&useJDBCCompliantTimezoneShift="
                    + "true&useLegacyDatetimeCode=false&serverTimezone=UTC",
                    "KOBAYASHI","password5173");
            
                    st=con.prepareStatement("select * from product");
            
                    data=st.executeQuery();
            
                    while(data.next()){
                        out.print("productname:"+data.getString("productname")+"<br>");
                        out.print("productprice:"+data.getInt("price")+"<br>");
                    }
                   data.close();
                   st.close();
                   con.close();
            
                }
            }catch(Exception ex){
                out.print(ex.getMessage());
        }%>
            


    </body>
</html>
