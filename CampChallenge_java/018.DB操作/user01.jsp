<%-- 
    Document   : user01
    Created on : 2018/07/17, 16:45:39
    Author     : 小林誠典
--%>


<%@page import="java.sql.*;"
 contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            boolean a=false;
            String t=(String)session.getAttribute("username");
            
            if(t!=null){
                a=true;
            }else{
                request.setCharacterEncoding("UTF-8");
                String username=request.getParameter("username");
                String userpassword=request.getParameter("userpassword");
            
                Connection con =null;
                PreparedStatement st=null;
                ResultSet data=null;
            
                Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/GEEKJOB_kobayashi?useUnicode=true&useJDBCCompliantTimezoneShift="
                    + "true&useLegacyDatetimeCode=false&serverTimezone=UTC",
                    "KOBAYASHI","password5173");
            
                st=con.prepareStatement("select * from userregistration where username=? and userpassword=?");
                //stにセットする
                st.setString(1,username);
                st.setString(2,userpassword);
            
                data=st.executeQuery();
            
                //表示
                boolean b=false;
                while(data.next()){
                    b=true;
                    a=true;
                }
                 data.close();
                 st.close();
                 con.close();
                if(b==true){
                    HttpSession hs= request.getSession();
                    hs.setAttribute("username",username);
                    out.print("ログインに成功しました"+"<br>");
                }
            }    
                if(a==true){
                %>
                    <A Href="http://localhost:8080/Callenge4/producthyouji.jsp"   >商品一覧</A><br>
                    <A Href="http://localhost:8080/Callenge4/productregistract.html">商品の追加</A>
                    <form action="user01" method="post">
                        <A Href="http://localhost:8080/Callenge4/user01">ログアウト</A>
                    </form>
                <%}else{
                    out.print("usernameまたはpasswordが間違っています"+"<br>");%>
                    <A Href="http://localhost:8080/Callenge4/user.html" >戻る</A>
            <%}
        %>
    </body>
</html>
