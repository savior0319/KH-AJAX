package ajax.test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "JSTest3Servlet", urlPatterns = { "/test3" })
public class JSTestServletTest4 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public JSTestServletTest4() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		int result = Integer.parseInt(request.getParameter("num1")) + Integer.parseInt(request.getParameter("num2"));

		response.setCharacterEncoding("utf-8");
		response.getWriter().print("덧셈결과 : " + "\'" + result + "\'");
		response.getWriter().close();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
