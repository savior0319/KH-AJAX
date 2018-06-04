package ajax.test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "JSTest2Servlet", urlPatterns = { "/test2" })
public class JSTestServletTest3 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public JSTestServletTest3() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String value = request.getParameter("value");

		response.setCharacterEncoding("utf-8");
		response.getWriter().print("\'" + value + "\' 서버에서 전송");
		response.getWriter().close();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
