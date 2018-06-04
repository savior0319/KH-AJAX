package js.test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "JSTestServlet", urlPatterns = { "/jsTest1" })
public class JSTestServletTest1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public JSTestServletTest1() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String data = request.getParameter("data");

		/*
		 * String result = data + " 잘 받았습니다^^";
		 */
		
		response.setCharacterEncoding("utf-8");
		String result = null;
		if (data.equals("mslove")) {
			result = "1";
		} else {
			result = "0";
		}

		response.getWriter().println(result);
		response.getWriter().close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
