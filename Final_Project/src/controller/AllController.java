package controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.View;

import model.Member;
import model.Pick;
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
	public void search(Model model, @RequestParam(defaultValue="1")int page, String keyword) {
		model.addAllAttributes(service.getProdByKeyword(page, keyword));
		model.addAttribute("keyword", keyword);
	}
	
	//개인정보이용방침
	@RequestMapping("privacyTerms.do")
	public void provision() {}

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
	public void prodView(int prod_id, Model model, @RequestParam(defaultValue="1")int qnaPage, HttpSession session) {
		Product product = service.getOneProduct(prod_id);
		
		if(session.getAttribute("loginUserInfo") != null) {
			HashMap<String, Object> id = (HashMap<String, Object>)session.getAttribute("loginUserInfo");
			String mem_id = (String)id.get("mem_id");
			System.out.println(mem_id);
			model.addAttribute("loginUser", mem_id);
			
			List<Product> getPickList = service.getPickList(mem_id);
			for(int i = 0; i < getPickList.size(); i++) {
				if(getPickList.get(i).getProd_id() == prod_id) model.addAttribute("isPick", true);
			}
		}
		//로그인중일 때 현재 로그인중 ID 보내기
		
		//옵션 보내기
		model.addAllAttributes(service.getProdOption(prod_id));
		
		//상품 보내기
		model.addAttribute("product", product);
		
		//해당 상품의 후기 전체 갯수 model에 담기
		model.addAttribute("reviewTotalBoards", service.getReviewCountById(prod_id));
		
		//해당 상품의 Q&A 전체 갯수 model에 담기
		model.addAttribute("qnaTotalBoards", service.getQnACountById(prod_id));
	}
	
	@RequestMapping("reviewByProd.do")
	public @ResponseBody HashMap<String, Object> reviewByProd(int prod_id, int reviewPage) {		
		return service.getReviewById(prod_id, reviewPage);
	}
	
	@RequestMapping("deleteReview.do")
	public @ResponseBody int deleteReview(int review_id) {
		return service.deleteReview(review_id);
	}
	
	@RequestMapping("qnaByProd.do")
	public @ResponseBody HashMap<String, Object> qnaByProd(int prod_id, int qnaPage) {
		return service.getQnAById(prod_id, qnaPage);
	}
	
	@RequestMapping("deleteQnA.do")
	public @ResponseBody int deleteQnA(int qna_id) {
		return service.deleteQnA(qna_id);
	}
	
	//이벤트 목록 요청
	@RequestMapping("eventList.do")
	public void eventList(Model model, @RequestParam(defaultValue="1")int page) {
		model.addAllAttributes(service.getEventList(page));
	}
	
	//이벤트 상세 요청
	@RequestMapping("event.do")
	public void event(int event_id, Model model) {
//		System.out.println(event_id);
		model.addAttribute("event", service.readEvent(event_id));

	}
	
	//공지사항 목록 요청
	@RequestMapping("noticeList.do")
	public void noticeList(Model model, @RequestParam(defaultValue="1")int page) {
		model.addAllAttributes(service.getNoticetList(page));
	}
	
	//공지사항 상세 요청
	@RequestMapping("notice.do")
	public void notice(int notice_id, Model model) {
//		System.out.println(notice_id);
		model.addAttribute("notice", service.readNotice(notice_id));

	}
	
	//이벤트 사진 불러오기
	@RequestMapping("eventdownload.do")
	public View eventdownload(int num) {
		File attachFile = service.getEventFile(num);
		View view = new DownloadView(attachFile);
		return view; 
	}
	
	//공지사항 사진 불러오기
	@RequestMapping("noticedownload.do")
	public View noticedownload(int num) {
		File attachFile = service.getNoticeFile(num);
		View view = new DownloadView(attachFile);
		return view; 
	}
	
	//faq 요청
	@RequestMapping("faq.do")
	public void faq(Model model) {
		model.addAttribute("faq",service.getFaqList());
	}
	
	//목록 요청
	@RequestMapping("support.do")
	public void support(Model model) {
		//공지사항 목룍
		model.addAttribute("notice", service.getsupportnoticeList());
		//자주 묻는 질문 목록
		model.addAttribute("faq", service.getsupportfaqList());
	}

}





