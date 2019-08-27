package interceptor;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Component
public class SellerCheckInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		//System.out.println(request.getSession().getAttribute("loginUserInfo"));
		HttpSession session = request.getSession();
		HashMap<String, Object> loginUserInfo = (HashMap<String, Object>)session.getAttribute("loginUserInfo");
		if(request.getSession().getAttribute("loginUserInfo")==null) {
			String url = request.getRequestURI().toString();
			if(request.getQueryString() != null) url = url + "?" + request.getQueryString();
			response.sendRedirect("/Final_Project/loginForm.do?url=" + url);
			return false;
		}
		
		int grade = (Integer)loginUserInfo.get("mem_grade");
		//만약 일반 사용자이면 거름
		if(grade == 0){
			response.sendRedirect("/Final_Project/jsp/intercept.jsp");
		}
		return true;
	}
}
