package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import service.HSService;

@Controller
public class AdminController {

	@Autowired
	HSService service;
	
	@RequestMapping("admin/loginForm.do")
	public void loginForm() {	
		
	}
}
