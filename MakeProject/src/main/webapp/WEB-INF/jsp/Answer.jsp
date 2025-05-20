<%-- 2025/05/20～ 解答画面作成  ※実習作業(本体・JSP側/解答画面(出力)  --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%--- Javaプログラム--%>
<%@ page import = "java.util.Random" %>



<%--- HTML内容--%>
<!DOCTYPE html>
<html>

<%--- HTML(Head) --%>
	<head>
		<meta charset="UTF-8">
		<title>解答画面</title>
	</head>
	
<%--- HTML(Body) --%>	
	<body>
		<%-- 現在 仮画面 --%>		
		<h2>解答画面</h2>
		
		問題：<%=buff %> <br>
		
		解答：<input type ="text"><br>
		
		<input type ="button" value ="メニュー画面へ" onclick="history.back()">
				
	</body>	
</html>