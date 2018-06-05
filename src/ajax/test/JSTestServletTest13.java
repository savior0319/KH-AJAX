package ajax.test;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ajax.test.vo.UserVo;

@WebServlet(name = "JSTest12Servlet", urlPatterns = { "/test12" })
public class JSTestServletTest13 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public JSTestServletTest13() {
		super();
	}

	@SuppressWarnings("all")
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		HashMap<String, UserVo> hMap = new HashMap<String, UserVo>();

		hMap.put("홍길동", new UserVo("홍길동", 20, "한국"));
		hMap.put("김말똥", new UserVo("김말똥", 21, "미국"));
		hMap.put("이민국", new UserVo("이민국", 25, "인도"));
		hMap.put("박민국", new UserVo("박민국", 26, "호주"));
		hMap.put("최민국", new UserVo("최민국", 27, "영국"));
		hMap.put("곽민국", new UserVo("곽민국", 28, "서울"));
		hMap.put("삼민국", new UserVo("삼민국", 28, "서울"));
		hMap.put("사민국", new UserVo("사민국", 28, "서울"));
		hMap.put("오민국", new UserVo("오민국", 28, "서울"));
		hMap.put("육민국", new UserVo("육민국", 28, "서울"));
		hMap.put("칠민국", new UserVo("칠민국", 28, "서울"));

		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		new Gson().toJson(hMap, response.getWriter());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
