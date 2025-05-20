<%-- 2025/05/15～ メニュー画面作成  ※実習作業用(本体・JSP側/メニュー画面  --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%--- Javaプログラム--%>
<%@ page import ="model.User"  %>

<%-- セッションからユーザー情報を取得 --%>
<% User loginUser = (User)session.getAttribute("loginUser"); %>

<%--- HTML内容--%>
<!DOCTYPE html>

<html>
<%--- HTML(Head) --%>

	<head>
		<meta charset="UTF-8">
		<title>メニュー</title>
	</head>
	
<%--- HTML(Body) --%>	
	<body>
		<h1> メニュー </h1>
		
		<% if(loginUser != null) { %>
			<%--- ログイン成功時 --%>		
	
			<%--- 選択メニュー内容 --%>
			<%-- <a href= "Main">処理１</a><br>--%>
			<input type ="button" value ="解答開始" onclick="location.href='AnsStart'"> 
			
			<%--- ログアウト --%> 			
			<input type ="button" value ="ログアウト" onclick="location.href='Logout'">

		<% } else { %>
			<%--- ログイン失敗時 --%>
			<p>ログインに失敗しました。再度入力して下さい</p>
			
			<a href= "index.jsp">TOPへ</a>			
		<% } %>

	</body>
</html>