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
	
	//로그인페이지에 올 때 가고자하는 url을 보내줌
	@RequestMapping("loginForm.do")
	public void loginForm(Model model, @RequestParam(defaultValue="main.do")String url) {
		//현재페이지에서 로그인 할 때 현재페이지 보내주기, 인터셉터에 걸렸을 때 인터셉터에 걸리기 전 요청페이지 보내주기 
		System.out.println(url);
		model.addAttribute("targetURL", url);
	}
	
	//member가 있으면 세션 id에 id 세팅 grade에 등급 세팅하고 true 리턴 아님 false 리턴 
	@RequestMapping("login.do")
	public @ResponseBody boolean login(Member m, HttpSession session) {
		Member member = service.loginCheck(m);
		if(member == null) {
			return false;
		}
		session.setAttribute("id", member.getMem_id());
		session.setAttribute("grade", member.getMem_grade());
		return true;
	}
	
	@RequestMapping("prodView.do")
	public Model prodView(int prod_id) {
		Model model;

		
		return null;
	}
}
