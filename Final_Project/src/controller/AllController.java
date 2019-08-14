package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.Member;
import service.HSService;

@Controller
public class AllController {

	@Autowired
	HSService service;
	
	//true면 세션 id에 id 세팅 grade에 등급 세팅하고 true 리턴
	@RequestMapping("login.do")
	public @ResponseBody boolean login(Member m, HttpSession session) {
		
		return true;
	}
}
