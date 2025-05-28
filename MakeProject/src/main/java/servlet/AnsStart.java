// 2025/05/20～	※(アプリ本体／実習作業)解答画面(リクエスト処理)／(Servlet側)
package servlet;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import model.AnsInit;

/**
 * Servlet implementation class AnsStart
 */
@WebServlet("/AnsStart")
public class AnsStart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// -- doGet
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// リクエストパラメタ(問題内容）の取得
		
		
		//インスタンス作成(問題)
				
		//初期処理(解答）
		AnsInit ansInit = new AnsInit();
		
		boolean isInit  = ansInit.check();
		
		
		if (isInit == true) {
			//処理
						
		}
				
		//解答画面にフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/Answer.jsp");
		dispatcher.forward(request, response);
	}
	
	// -- doPost
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// リクエストパラメタ(問題内容）の取得
		
		
		//インスタンス作成(問題)
		
		
		/*
		//初期処理(解答）
		AnsInit ansInit = new AnsInit();
		
		boolean isInit  = ansInit.check() ;
				
		if (isInit == true) {
			//処理
						
		}
		*/
		
		//解答画面にフォワードする
		//RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/Answer.jsp");
		//dispatcher.forward(request, response);
		
	}


}
