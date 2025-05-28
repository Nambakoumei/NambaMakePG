<%-- 2025/05/20～ 解答画面作成  ※実習作業(本体・JSP側/解答画面(出力)  --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%--- Javaプログラム--%>
<%@ page import = "model.AnswerLogic" %>

<%	
	//定義
	//(全体)
	AnswerLogic ansLogic = new AnswerLogic();
	
	//(フラグ)
	AnswerLogic.QuestFLG qFLG = new AnswerLogic().new QuestFLG();
	//qFLG.setQuestFLG(true);

	//(問題作成）
	AnswerLogic.MakeQuestion mkQst = ansLogic.new MakeQuestion();  
	mkQst.makeQuestion();
		
	boolean endFLG = false;		//終了フラグ
	int cnt = 0;				//問題カウント

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
						
		<h2>解答画面</h2>
					
		<%
			//boolean endFLG = false;		//終了フラグ
			//int cnt = 0;				//問題カウント

			qFLG.setQuestFLG(true);			//フラグをON
		
			while(endFLG == false)
			{
				//問題表示		
				//if(qFLG.getQuestFLG() == true){
		%>
				   <%-- = cnt --%>
					問題<%= cnt+1 %>：<%=mkQst.getQuestion()%>
					<%= mkQst.getAnswer()%><br> 
					<%--  <input type ="text"><br> --%>	
		<%							
				//	qFLG.setQuestFLG(false);		
				//}
				
				//if (qFLG.getQuestFLG() == true)
				//{									
					cnt = cnt+=1;			//カウントUP					
					mkQst.makeQuestion();	//問題作成
					
					if(cnt > 2){
						//問題終了時
						endFLG = true;
						break;
					}			
				//}								
			}
		%>
								
		<br>								
		<input type ="button" value ="次" onclick="nextBotton()"> 		
		<%-- <input type ="submit" value ="次" > --%>
				
		<%-- ボタン押下時処理 --%>
		<script type="text/javascript">
				function nextBotton() 
				{
					<%-- cnt = cnt+=1; --%>
					<% qFLG.setQuestFLG(true); %>	
					<%= qFLG.getQuestFLG() %>
				}
		</script>
											
		<input type ="button" value ="解答終了" onclick="history.back()"> <br>
				
	
	</body>	
</html>