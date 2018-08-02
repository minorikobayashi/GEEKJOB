<%@page import="jums.JumsHelper"%>
<%@page import="jums.UserDataBeans" %>
<%
    UserDataBeans udb = (UserDataBeans)session.getAttribute("form");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録確認画面</title>
    </head>
    <body>
        
        <% if(!udb.getName().equals("")&&!udb.getTell().equals("")&&udb.getYear()!=0
                &&udb.getMonth()!=0&&udb.getDay()!=0
                &&!udb.getComment().equals("")){ %>
        
                <h1>登録確認</h1>
        名前:<%= udb.getName()%><br>
        生年月日:<%= udb.getYear()+"年"+udb.getMonth()+"月"+udb.getDay()+"日"%><br>
        種別:<%= udb.getType()%><br>
        電話番号:<%= udb.getTell()%><br>
        自己紹介:<%= udb.getComment()%><br>
        上記の内容で登録します。よろしいですか？
        <form action="insertresult" method="POST">
            <input type="submit" name="yes" value="はい">
        </form>
        <% }else{
                if(udb.getName().equals("")){out.print("名前が記入されていません。<br>");}
                if(udb.getTell().equals("")){out.print("電話番号が記入されていません。<br>");}
                if(udb.getYear()==0||udb.getMonth()==0||udb.getDay()==0){out.print("生年月日が記入されていません。<br>");}
                if(udb.getComment().equals("")){out.print("自己紹介が記入されていません。<br>");}
            }%>
            <form action="insert" method="POST">
            <input type="submit" name="no" value="登録画面に戻る">
        </form>
        <br>
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>
