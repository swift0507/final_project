package controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.ReviewDao;
import model.Basket;
import model.Member;
import model.Product;
import model.Receipt;
import model.Review;
import service.HSService;

@Controller
public class UserController {
	
	@Autowired
	HSService service;
	
	//마이페이지 불러오기
	@RequestMapping("user/myPage.do")
	public void mypage(Model m, HttpSession session) {
		//영수증리스트 가져오기 최신순서대로
		HashMap<String, Object> id = (HashMap<String, Object>)session.getAttribute("loginUserInfo");
		String mem_id = (String)id.get("mem_id");
		m.addAttribute("receiptList", service.getReceiptListByMember(mem_id));
		//찜목록 가져오기
		m.addAttribute("pickList", service.getPickList(mem_id));
	}
		
	//장바구니보기
	@RequestMapping("user/basket.do")
	public void basket(Model m, HttpSession session) {
		//미완성
		HashMap<String, Object> id = (HashMap<String, Object>)session.getAttribute("loginUserInfo");
		String mem_id = (String)id.get("mem_id");
		//사장님별 장바구니 리스트 받아오기 
		m.addAttribute("list", service.getBasketList(mem_id));
	}
	//장바구니에서 상품 이름 가져오기
	@RequestMapping("user/findProdName.do")
	public @ResponseBody Product findProdName(int prod_id){
//		System.out.println(prod_id);
		HashMap<String, Object> data = new HashMap<String, Object>();
		Product p = service.getOneProduct(prod_id);
		data.put("product", p);
		return p;
	}
	
	//결제화면가기
	@RequestMapping("user/payment.do")
	public void payment(Model m, HttpSession session) {
		HashMap<String, Object> id = (HashMap<String, Object>)session.getAttribute("loginUserInfo");
		String mem_id = (String)id.get("mem_id");
		//사장님별 장바구니 리스트 받아오기 
		m.addAttribute("list", service.getBasketList(mem_id));
		//회원정보 받아오기
		Member member = new Member();
		member.setMem_id(mem_id);
		member = service.idCheck(member);
		m.addAttribute("member", member);
		
	}
	
	//영수증 하나 주문하기
	@RequestMapping("user/order.do")
	public @ResponseBody int order(@RequestParam(value="baskets[]") List<Integer> baskets, Receipt receipt, @RequestParam(value="prodnum[]") List<Integer> prodnums) {
		
		System.out.println(baskets);
		System.out.println(prodnums);
		System.out.println(receipt);
		//결제가 되면 장바구니 내역에서 삭제시켜야 한다. 
		//return service.pay(receipt, baskets, prodnums);
		return 8;
	}
	
	//결제완료화면 직전에 구매한 장바구니를 가지고 간다. 
	@RequestMapping("user/payComplete.do")
	public void payComplete(@RequestParam(value = "receipt_id") List<Integer> receipt_id) {
		System.out.println(receipt_id);
	}
	
	//문의작성폼보기
	@RequestMapping("user/contactWriteForm.do")
	public void contactWriteForm() {
		//미완성
	}
	
	//나의 후기 보기
	@RequestMapping("user/myReview.do")
	public void myReview(Model model, @RequestParam(defaultValue="1")int page) {
		model.addAllAttributes(service.getReviewList(page));
	}
	
	//나의 Q&A 보기
	@RequestMapping("user/myQnA.do")
	public void myQnA() {
		//미완성
	}
	
	//찜목록 보기
	@RequestMapping("user/pickList.do")
	public void pickList(Model m, HttpSession session) {
		HashMap<String, Object> id = (HashMap<String, Object>)session.getAttribute("loginUserInfo");
		String mem_id = (String)id.get("mem_id");
		m.addAttribute("pickList", service.getPickList(mem_id));
	}
	
	//주문내역 보기
	@RequestMapping("user/orderList.do")
	public void orderList() {
		//미완성
	}
	
	//개인정보 수정 전 비밀번호 확인창
	@RequestMapping("user/modifyConfirm.do")
	public void modifyConfirm() {
		//미완성
	}
	
	//회원탈퇴창
	@RequestMapping("user/leaveForm.do")
	public void leaveForm() {
		//미완성
	}
	
	//review 글 삭제
	@RequestMapping("user/deleteReview.do")
	public String deledteReview(int review_id) { 
		service.deleteReview(review_id);
		return "redirect:myReview.do";
	}
	
	//review 글 수정폼
	@RequestMapping("user/reviewModifyForm.do")
	public void modifyReviewForm(Model model, int review_id) {
		model.addAttribute("review", service.getReview(review_id));
	}
	
	
	@RequestMapping("user/modifyReview.do")
	public String modify(Review review, int page) {
	
		//파라미터로 가져온 데이터 (수정된 게시물)
		//서비스의 modifyReview 메소드 호출
		service.modifyReview(review);
		
		//게시물 상세보기 페이지 요청
		return "redirect:myReview.do?review_id="+review.getReview_id()+"&page="+page;
	}

	@RequestMapping("user/reviewWriteForm.do")
	public void modifyWriteForm() {}
}
