package ajax.test;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import ajax.test.vo.UserVo;

@WebServlet(name = "JSTest5Servlet", urlPatterns = { "/test5" })
public class JSTestServletTest6 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public JSTestServletTest6() {
		super();
	}

	@SuppressWarnings("all")
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		int userIndex = Integer.parseInt(request.getParameter("userIndex"));

		ArrayList<UserVo> aList = new ArrayList<UserVo>();
		aList.add(new UserVo("홍길동", 20, "한국"));
		aList.add(new UserVo("김말똥", 21, "미국"));
		aList.add(new UserVo("김지똥", 22, "일본"));
		aList.add(new UserVo("류훈똥", 23, "중국"));
		aList.add(new UserVo("민국형", 24, "북한"));
		aList.add(new UserVo("이민국", 25, "인도"));
		aList.add(new UserVo("박민국", 26, "호주"));
		aList.add(new UserVo("최민국", 27, "영국"));
		aList.add(new UserVo("곽민국", 28, "서울"));
		aList.add(new UserVo("류민국", 29, "서울"));
		aList.add(new UserVo("정민국", 99, "인천"));

		UserVo uv = aList.get(userIndex - 1);
		
		JSONObject result = new JSONObject();
		result.put("name", uv.getName());
		result.put("age", uv.getAge());
		result.put("addr", uv.getAddr());
		
		response.setContentType("application/json");
		
		response.setCharacterEncoding("utf-8");
		response.getWriter().println(result);
		response.getWriter().close();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
