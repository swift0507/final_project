package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.Event;
import model.Member;
import model.ProdOption;
import model.Product;
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
	public void prodView(int prod_id, Model model) {
		Product product = service.getOneProduct(prod_id);
		List<ProdOption> prodOptionList = service.getProdOption(prod_id);
		
		for(int i = 0; i < prodOptionList.size(); i++) {
			prodOptionList.get(i).setOptiondetail(service.getOptionDetail(prodOptionList.get(i).getOpt_id()));
		}
		
		model.addAttribute("product", product);
		model.addAttribute("option", prodOptionList);
	}
	
	@RequestMapping("eventList.do")
	public void eventList(Model model) {
		model.addAttribute("eventList", service.getEventList());
	}
	
	@RequestMapping("event.do")
	public void event(int event_id, Model model) {
//		System.out.println(event_id);
		model.addAttribute("event", service.readEvent(event_id));

	}
	
	
}









