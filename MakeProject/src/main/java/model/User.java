//2025/05/16～    ※(アプリ本体／実習作業)ログイン画面作成(Model/JavaBeans)
package model;

import java.io.Serializable;

public class User implements Serializable {

	private String  name;		//User名
	private String  pass;		//パスワード
	
	public User() {};
	
	// Setter
	public User(String name, String pass) {
		//
		this.name = name;
		this.pass = pass;
	}
	
	// Getter
	public String getName() {
		//
		return name;	
	}
	
	public String getPass() {
		//
		return pass;
	}
	
}
