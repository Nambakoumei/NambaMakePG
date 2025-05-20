<%-- 2025/05/16～ メニュー画面作成  ※実習作業(本体・JSP側/ログイン画面(出力)  --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%--- Javaプログラム--%>


<%--- HTML内容--%>
<!DOCTYPE html>
<html>

<%--- HTML(Head) --%>
	<head>
		<meta charset="UTF-8">
		<title>ログイン画面</title>
	</head>
	
<%--- HTML(Body) --%>
	<body>
		<h1>ログイン画面</h1>

		<%-- 入力画面 --%>
		<form action = "Login" method = "POST">
		
			ユーザー名：<input type ="text" name ="name"><br>
			パスワード：<input type ="password" name ="pass" ><br>
			
			<%-- ログインボタン --%>
			<input type ="submit" value ="ログイン">
										
		</form>
	</body>
</html>