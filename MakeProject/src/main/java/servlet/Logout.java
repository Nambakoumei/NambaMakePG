//2025/05/16～    ※(アプリ本体／実習作業)ログイン(リクエスト処理)／(Servlet側)
package servlet;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


/**
 * Servlet implementation class Logout
 */
@WebServlet("/Logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// -- doGet
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// セッションを破棄
		HttpSession session = request.getSession();
		session.invalidate();
		
		//ログアウト画面にフォワード(遷移)
		RequestDispatcher disPatcher = request.getRequestDispatcher("WEB-INF/jsp/Logout.jsp");
		disPatcher.forward(request, response);
		
	}

}
