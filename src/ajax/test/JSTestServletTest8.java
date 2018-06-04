package ajax.test;

import java.io.IOException;
import java.util.ArrayList;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import ajax.test.vo.UserVo;

@WebServlet(name = "JSTest7Servlet", urlPatterns = { "/test7" })
public class JSTestServletTest8 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public JSTestServletTest8() {
		super();
	}

	@SuppressWarnings("all")
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		String userIndexs = request.getParameter("userIndexs");
		StringTokenizer st = new StringTokenizer(userIndexs, " ,");
		ArrayList<Integer> userSelect = new ArrayList<Integer>();

		/*
		 * String[] split = userIndexs.split(",");
		 * 
		 * for (int i = 0; i < split.length; i++) {
		 * System.out.println(Integer.parseInt(split[i]) - 1); }
		 */

		while (st.hasMoreTokens()) {
			userSelect.add(Integer.parseInt(st.nextToken().replace(" ", "")) - 1);
		}

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

		// 여러명 일 수 있으므로 JSONArray를 사용
		JSONArray resultArray = new JSONArray();

		int index = 0;

		while (index < userSelect.size()) {
			UserVo user = aList.get(userSelect.get(index));
			JSONObject result = new JSONObject();

			result.put("name", user.getName());
			result.put("age", user.getAge());
			result.put("addr", user.getAddr());

			resultArray.add(result);
			index++;
		}

		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		response.getWriter().println(resultArray);
		response.getWriter().close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
