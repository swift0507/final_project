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
	public void main(Model model) {
		model.addAttribute("popular", service.getProdByReadCountForMain());
		model.addAttribute("latest", service.getProdByLatestForMain());
		model.addAllAttributes(service.getBanners());
	} 
	
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
	public void popularProd(Model model, @RequestParam(defaultValue="1")int page) {
		model.addAllAttributes(service.getProdByReadCount(page));
	}
	
	//최근 등록 상품
	@RequestMapping("latestProd.do")
	public void latestProd(Model model, @RequestParam(defaultValue="1")int page) {
		model.addAllAttributes(service.getProdByLatest(page));
	}
	
	//검색어 기반 상품 목록
	@RequestMapping("search.do")
	public void search(Model model, String keyword) {
		System.out.println(keyword);
		model.addAllAttributes(service.getProdByKeyword(keyword));
		model.addAttribute("keyword", keyword);
	}
	
	//개인정보이용방침
	@RequestMapping("privacyTerms.do")
	public void provision() {}
	
	@RequestMapping("faq.do")
	public void faq() {
		//미완성
	}
	
	//이용약관
	@RequestMapping("useTerms.do")
	public void useTerms() {}
	
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
		//최근로그인날짜세팅하기 
		service.setLoginDate(member);
		HashMap<String, Object> id = new HashMap<String, Object>();
		id.put("mem_id", member.getMem_id());
		id.put("mem_grade", member.getMem_grade());
		id.put("mem_name", member.getMem_name());
		id.put("countBasket", service.countBasket(member.getMem_id()));
		session.setAttribute("loginUserInfo", id);
		return true;
	}
	
	//id찾기 폼 요청
	@RequestMapping("findIdForm.do")
	public void findIdForm() {}
	
	//id찾기
	@RequestMapping("findId.do")
	public @ResponseBody String findId(Member m) {
//		System.out.println(m);
		Member member = service.findId(m);
		if(member == null) {
			return "해당하는 id가 존재하지 않습니다.";
		}
		return "회원님의 id는 " +member.getMem_id()+"입니다.";
	}
	
	//비밀번호 찾기 폼 요청
	@RequestMapping("findPwForm.do")
	public void findPwForm() {}
	
	//비밀번호찾기요청
	@RequestMapping("findPw.do")
	public @ResponseBody boolean findPw(Member m) {
		System.out.println(m);
		Member member = service.findPw(m);
		if(member == null) {
			return false;
		}
		return true;
	}
	
	//비밀번호재설정폼 요청
	@RequestMapping("resetPwForm.do")
	public void resetPwForm(String mem_id, Model model) {
		model.addAttribute("mem_id", mem_id);
	}
	
	//비밀번호재설정요청
	@RequestMapping("resetPw.do")
	public @ResponseBody boolean resetPw(Member m) {
		System.out.println(m);
		if(service.resetPw(m)==1) {
			return true;
		}
		return false;
	}
	
	//id중복확인 id가 있으면 false 없으면 true
	@RequestMapping("idCheck.do")
	public @ResponseBody boolean idCheck(Member m){
		Member member = service.idCheck(m);
		if(member == null) {
			return true;
		}
		return false;
	}
	
	//회원가입요청
	@RequestMapping("signUp.do")
	public @ResponseBody boolean signUp(Member m) {
		//System.out.println(m);
		return service.signUp(m);
	}
	
	
	@RequestMapping("prodView.do")
	public void prodView(int prod_id, Model model, @RequestParam(defaultValue="1")int qnaPage) {
		Product product = service.getOneProduct(prod_id);
		
		//옵션 보내기
		model.addAllAttributes(service.getProdOption(prod_id));
		
		//상품 보내기
		model.addAttribute("product", product);
		
		model.addAllAttributes(service.getQnAById(prod_id, qnaPage));
		
	}
	
	@RequestMapping("reviewByProd.do")
	public @ResponseBody HashMap<String, Object> reviewByProd(int prod_id, int reviewPage) {
		return service.getReviewById(prod_id, reviewPage);
	}
	
	@RequestMapping("qnaByProd.do")
	public @ResponseBody HashMap<String, Object> qnaByProd(int prod_id, int qnaPage) {
		return service.getQnAById(prod_id, qnaPage);
	}
	
	@RequestMapping("eventList.do")
	public void eventList(Model model, @RequestParam(defaultValue="1")int page) {
		model.addAllAttributes(service.getEventList(page));
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





