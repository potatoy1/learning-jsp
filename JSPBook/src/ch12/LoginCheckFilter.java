package ch12;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginCheckFilter implements Filter {

	private FilterConfig filterConfig = null;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException{
		this.filterConfig  = filterConfig;
	}
	
	@Override
	public void destroy() {
		
	}
	
	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		String message;
		
		String param1 = filterConfig.getInitParameter("id");
		String param2 = filterConfig.getInitParameter("passwd");
		
		HttpServletRequest request = (HttpServletRequest) arg0;
		HttpServletResponse response = (HttpServletResponse) arg1;
		
		PrintWriter writer = response.getWriter();

		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		if(param1.equals(id)&&param2.equals(passwd)) {
			HttpSession session = request.getSession();
			//아이디 값은 세션명 userID에 세션 값으로 설정
			session.setAttribute("userID", id);
			message = "로그인 성공";
			writer.println(message);
		}else {
			message = "로그인 실패";
			writer.println(message);
		}
		
		//로그인 상태가 아님.
		if(session == null) {
			response.sendRedirect("loginForm.jsp");
		}
		
	}

}
