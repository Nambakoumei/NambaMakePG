<%-- 2025/05/20～ 解答画面作成  ※実習作業(本体・JSP側/解答画面(出力)  --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%--- Javaプログラム--%>
<%@ page import = "java.util.Random" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "java.util.List" %>

<%
	// -- 2025/05/21 
	//定義
	Random rand = new Random(); 
	String questBuff = "";		// S
	List<String> outQuest = new ArrayList<String>(); 	
	String calc = "";
	
	//int questCnt = 3; 
	
	for (int i = 0 ; i < 3; i++){
		
		//ランダムで生成
		//計算式	
		int calcKbn = rand.nextInt(3)+1;   //1:加算・2:減算・3:乗算・4:除算

		//記号
		switch(calcKbn){
			case 1:
				calc = " ＋ ";
				break;
		
			case 2:
				calc = " － ";
				break;
		
			case 3:
				calc = " × ";
				break;
		
			default:
				calc = " ÷ ";
		}
				
		//左辺
		int num1 = rand.nextInt(10);	
		int num2 = 0;
	
		//右辺
		if(calcKbn == 3){
			// 除算の場合は0で割れないので1を足す(最低値:1～)		
			num2 = rand.nextInt(10)+1;
		
		}else{
			// 
			num2 = rand.nextInt(10);
		}
	
		//問題文を生成
		questBuff = num1 + calc + num2 + " = " ;
		outQuest.add(questBuff);
						
	}
	
%>

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
		
		<% for (int i = 0; i < outQuest.size() ;i++){ %>			 
			問題<%= i+1 %>：<%= outQuest.get(i) %> <br>    
		<% ;} %>
				
		    解答  : <input type ="text"><br><br>
		
		<input type ="button" value ="次" onclick="history.back()">
		
		<input type ="button" value ="解答終了" onclick="history.back()">
		<input type ="button" value ="メニュー画面へ" onclick="history.back()">
				
	</body>	
</html>