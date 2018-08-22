<%@page import="jums.JumsHelper" %>
<%@page import="jums.UserDataBeans"%>
<%
    JumsHelper jh = JumsHelper.getInstance();
    UserDataBeans udb = (UserDataBeans)session.getAttribute("udb");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS変更画面</title>
    </head>
    <body>
    <form action="UpdateResult" method="POST">
        名前:
        <input type="text" name="name" value="<%=udb.getName()%>">
        <br><br>

        生年月日:　
        <select name="year">
            <option value="<%=udb.getYear()%>"><%=udb.getYear()%></option>
            <% for(int i=1950; i<=2010; i++){ %>
            <option value="<%=i%>" ><%=i%></option>
            <% } %>
        </select>年
        <select name="month">
            <option value="<%=udb.getMonth()%>"><%=udb.getMonth()%></option>
            <% for(int i = 1; i<=12; i++){ %>
            <option value="<%=i%>" ><%=i%></option>
            <% } %>
        </select>月
        <select name="day">
            <option value="<%=udb.getDay()%>"><%=udb.getDay()%></option>
            <% for(int i = 1; i<=31; i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>日
        <br><br>

        種別:
        <br>
            <% for(int i = 1; i<=3; i++){ %>
            <input type="radio" name="type" value="<%=i%>" <%if(udb.getType()==i){out.print("checked");}%>><%=jh.exTypenum(i)%><br>
            <% } %>
        <br>

        電話番号:
        <input type="text" name="tell" value="<%=udb.getTell()%>">
        <br><br>

        自己紹介文
        <br>
        <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard"><%=udb.getComment()%></textarea><br><br>
        <input type="hidden" name="ac" value="<%=session.getAttribute("ac")%>">
        <input type="submit" name="btnSubmit" value="確認画面へ">
    </form><br>
    <form action="resultdetail.jsp" method="POST">
        <input type="submit" name="searchdetail" value="詳細画面へ">
    </form>
        <br>
        <%=jh.home()%>
    </body>
</html>
