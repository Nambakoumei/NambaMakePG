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
		<title>Insert title here</title>
	</head>
	
<%--- HTML(Body) --%>	
	<body>
		<h1> メニュー </h1>
		
		<% if(loginUser != null) { %>
			<%--- ログイン成功時 --%>		
	
			<%--- 選択メニュー内容 --%>
			<a href= "Main">処理１</a><br>
			
			
			<%--- ログアウト --%> 
			<%--- <button type="button" onclick="Logout.java">ログアウト</button> --%>
			<a href="Logout">ログアウト</a>

		<% } else { %>
			<%--- ログイン失敗時 --%>
			<p>ログインに失敗しました。再度入力して下さい</p>
			
			<a href= "index.jsp">TOPへ</a>			
		<% } %>

	</body>
</html>