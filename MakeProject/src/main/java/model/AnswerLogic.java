//2025/05/22(再作成2025/05/25)～    ※(アプリ本体／実習作業)解答画面処理作成(Model)
package model;

import java.util.Random;

public class AnswerLogic {
	
	///問題フラグ
	public class QuestFLG {

		//定義
		private boolean QuestFLG ;		 
		
		// Setter
		public void setQuestFLG(boolean isQuestFLG) {
			
		}
		
		// Getter
		public boolean getQuestFLG() {
			//
			return this.QuestFLG;
		}		
	}
		
	//問題作成		
	public class MakeQuestion {
				
		//定義
		Random rand = new Random();		
		String questBuff = "";
		String calc = "+";
		int ansResult;
		int questCnt = 3;
			
		public void makeQuestion() {
		
			//ランダムで生成
			//計算式	
			int calcKbn = rand.nextInt(3)+1;
		
			//左辺
			int num1 = rand.nextInt(10);
			int num2 = rand.nextInt(10);
			            
			//記号
			switch(calcKbn){
				case 1:
					calc = " ＋ ";
					ansResult = num1 + num2;		//計算   
					break;
		
				case 2:
					calc = " － ";
					ansResult = num1 - num2;		//計算
					break;
		
				case 3:
					calc = " × ";
					ansResult = num1 * num2;		//計算
					break;
		
				default:
					calc = " ÷ ";					
					
					if (num2 == 0) {
						//num2=0の場合は強制的に１を足す
						num2 += 1;
					}
					ansResult = num1 / num2;		//計算
			}
 					        
			//問題文を生成
			questBuff = num1 + calc + num2 + " = " ;
		}
		
		// 問題文取得
		public String  getQuestion() {			
			//問題を返す
			return questBuff;
		}
		
		// 解答取得
		public int getAnswer() {
										
			//解答を返す
			return ansResult;
		}		
	}		
}
