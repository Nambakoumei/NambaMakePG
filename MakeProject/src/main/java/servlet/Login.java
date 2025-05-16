// 2025/05/16～	※(アプリ本体／実習作業)ログイン(リクエスト処理)／(Servlet側)
package servlet;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import model.LoginLogic;
import model.User;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// -- doGet
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	// -- doPost	 	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//リクエストパラメタの取得
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String pass = request.getParameter("pass");
		
		//Userインスタンス作成(ユーザー情報）
		User user = new User (name,pass);
		
		//ログイン処理
		LoginLogic loginLogic = new LoginLogic();
		boolean isLogin  = loginLogic.execute(user);
		
		//ログイン処理 = Trueの場合
		if (isLogin) {
			// ユーザー情報をセッションに保存
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", user);
		}
		
		// (ログイン）結果画面にフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/Menu.jsp");
		dispatcher.forward(request, response);		
	}	
}
