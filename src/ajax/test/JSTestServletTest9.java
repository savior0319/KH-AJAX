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

@WebServlet(name = "JSTest8Servlet", urlPatterns = { "/test8" })
public class JSTestServletTest9 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public JSTestServletTest9() {
		super();
	}

	@SuppressWarnings("all")
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		String userIndexs = request.getParameter("userIndexs");
		StringTokenizer st = new StringTokenizer(userIndexs, " ,");
		ArrayList<Integer> userSelect = new ArrayList<Integer>();

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

		JSONObject resultMap = new JSONObject();
		// JSON 객체가 기본적으로 MAP 형태이기 때문에
		// 키 : 값 형태로 사용 가능

		int index = 0;

		while (index < userSelect.size()) {
			UserVo userVo = aList.get(userSelect.get(index));
			JSONObject result = new JSONObject();
			result.put("name", userVo.getName());
			result.put("age", userVo.getAge());
			result.put("addr", userVo.getAddr());

			resultMap.put(index, result);
			index++;
		}

		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		response.getWriter().println(resultMap);
		response.getWriter().close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
