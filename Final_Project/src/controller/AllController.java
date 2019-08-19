package controller;

import java.util.HashMap;
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
	
	@RequestMapping("main.do")
	public void main() {} 
	
	/*헤더풋터요청*/
	//로그인페이지에 올 때 가고자하는 url을 보내줌
	@RequestMapping("loginForm.do")
	public void loginForm(Model model, @RequestParam(defaultValue="main.do")String url) {
		//현재페이지에서 로그인 할 때 현재페이지 보내주기, 인터셉터에 걸렸을 때 인터셉터에 걸리기 전 요청페이지 보내주기 
		System.out.println(url);
		model.addAttribute("targetURL", url);
	}
	
	@RequestMapping("signUpForm.do")
	public void singnUpForm() {}
	
	@RequestMapping("support.do")
	public void support() {}
	
	//로그아웃. 세션 만료시키고 main.do 리다이렉트
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect: main.do";
	}
	
	//인기상품
	@RequestMapping("popularProd.do")
	public void popularProd() {}
	
	//최근 등록 상품
	@RequestMapping("latestProd.do")
	public void latestProd() {}
	
	
	/*로그인폼버튼요청*/
	//member가 있으면 세션 id에 id 세팅 grade에 등급 세팅하고 true 리턴 아님 false 리턴 
	@RequestMapping("login.do")
	public @ResponseBody boolean login(Member m, HttpSession session) {
		Member member = service.loginCheck(m);
		if(member == null) {
			return false;
		}
		if(service.banCheck(member.getMem_id())) {
			return false;
		}
		HashMap<String, Object> id = new HashMap<String, Object>();
		id.put("mem_id", member.getMem_id());
		id.put("mem_grade", member.getMem_grade());
		id.put("mem_name", member.getMem_name());
		id.put("countBasket", service.countBasket(member.getMem_id()));
		session.setAttribute("loginUserInfo", id);
		return true;
	}
	
	@RequestMapping("findIdForm.do")
	public void findIdForm() {}
	
	@RequestMapping("findPwForm.do")
	public void findPwForm() {}
	
	@RequestMapping("prodView.do")
	public void prodView(int prod_id, Model model) {
		Product product = service.getOneProduct(prod_id);
		
		//옵션 보내기
		model.addAllAttributes(service.getProdOption(prod_id));
		
		//상품 보내기
		model.addAttribute("product", product);
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
	
	@RequestMapping("noticeList.do")
	public void noticeList(Model model) {
		model.addAttribute("noticeList", service.getNoticeList());
	}
	
	@RequestMapping("notice.do")
	public void notice(int notice_id, Model model) {
//		System.out.println(notice_id);
		model.addAttribute("notice", service.readEvent(notice_id));

	}
	
	//수진수정
//	public View download(int num) { 
//		
//	}
	
}





