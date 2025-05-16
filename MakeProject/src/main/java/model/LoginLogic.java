//2025/05/16～    ※(アプリ本体／実習作業)ログイン画面作成(Model)
package model;

public class LoginLogic {

	public boolean execute(User user) {
		//パスワード判定
		if(user.getPass().equals("1111")){
			//判定OK →Trueを返す
			return true;
					
		}else {			
			//判定NG →False返す
			return false;
		}			
	}
}
