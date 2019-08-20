package interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Component
public class UserCheckInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		//System.out.println(request.getSession().getAttribute("loginUserInfo"));
		if(request.getSession().getAttribute("loginUserInfo")==null) {
			response.sendRedirect("/Final_Project/loginForm.do?url="+request.getRequestURI());
			return false;
		}
		return true;
	}
	
	
}
