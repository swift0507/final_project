package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.Member;
import service.HSService;

@Controller
public class AllController {

	@Autowired
	HSService service;
	
	@RequestMapping("loginForm.do")
	public void loginForm() {}
	
	//true면 세션 id에 id 세팅 grade에 등급 세팅하고 true 리턴
	@RequestMapping("login.do")
	public @ResponseBody boolean login(Member m, HttpSession session) {
//		String[] id = req.getParameterValues("id");
		System.out.println("test");
		
		return service.loginCheck(m);
	}
	
	@RequestMapping("prodView.do")
	public Model prodView(int prod_id) {
		Model model;

		
		return null;
	}
	
	
	
}
