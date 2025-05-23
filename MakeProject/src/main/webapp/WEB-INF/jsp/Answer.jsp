<%-- 2025/05/20～ 解答画面作成  ※実習作業(本体・JSP側/解答画面(出力)  --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%--- Javaプログラム--%>
<%@ page import = "java.util.Random" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "java.util.List" %>
<%@ page import = "model.AnswerLogic" %>

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
	
	//定義
	AnswerLogic.QuestFLG qFLG = new AnswerLogic().new QuestFLG();
	qFLG.setQuestFLG(true);
		
	//AnswerLogic a = new AnswerLogic();			
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
		
		<% 
			boolean endFLG = false;
			int cnt = 0;
				
			while(endFLG == false){
		
				//問題表示
		%>
				問題<%= cnt+1 %>：<%= outQuest.get(cnt) %> <br>
		
		<%      				
				qFLG.setQuestFLG(false);
		
				//if (qFLG.getQuestFLG() == true)
				//{
					cnt = cnt+=1; 
		
					if(cnt > 2){	
						endFLG = true;
						break;
					}
				//}
			} 
		%>
								
		<%-- 			
		<%= qFLG.getQuestFLG() %><br>
		<% qFLG.setQuestFLG(false); %> 
		--%>		
				
		解答  : <input type ="text"><br><br>
		
		<%-- <%=qFLG.getQuestFLG()%><br> --%>
		
		<input type ="button" value ="次" onclick="nextBotton()"> 
		<script type="text/javascript">
				function nextBotton() 
				{
					<% qFLG.setQuestFLG(true); %>	
				}
		</script>
									
		<input type ="button" value ="解答終了" onclick="history.back()"> <br>
				
		<%-- 内容確認 --%>				
		<%= qFLG.getQuestFLG() %>
	</body>	
</html>