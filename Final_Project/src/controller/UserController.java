package controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.View;

import dao.ReviewDao;
import model.Basket;
import model.Member;
import model.Product;
import model.Receipt;
import model.Review;
import model.Seller;

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
	
	//장바구니에 상품 담기
	@RequestMapping("user/addBasket.do")
	public @ResponseBody int addBasket(Basket basket, HttpSession session) {
		int n = service.addBasket(basket);
		HashMap<String, Object> id = (HashMap<String, Object>)session.getAttribute("loginUserInfo");
		id.put("countBasket", service.countBasket((String)id.get("mem_id")));
		return n;
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
	public @ResponseBody int order(@RequestParam(value="baskets[]") List<Integer> baskets, Receipt receipt, @RequestParam(value="prodnum[]") List<Integer> prodnums, HttpSession session) {
		
		System.out.println(baskets);
		System.out.println(prodnums);
		System.out.println(receipt);
		//결제가 되면 장바구니 내역에서 삭제시켜야 한다. 
		//아직 미완성
		return service.pay(receipt, baskets, prodnums, session);
		//return 8;
	}
	
	//결제완료화면 직전에 구매한 장바구니를 가지고 간다. 
	@RequestMapping("user/payComplete.do")
	public void payComplete(@RequestParam(value = "receipt_id") List<Integer> receipt_id, Model m) {
		System.out.println(receipt_id);
		m.addAttribute("receiptList", service.payComplete(receipt_id));
	}
	
	//결제완료화면에 사장님정보 보내기
	@RequestMapping("user/findSeller.do")
	public @ResponseBody Seller findSeller(String sel_id) {
		System.out.println(sel_id);
		return service.getSeller(sel_id);
	}
	
	//문의작성폼보기
	@RequestMapping("user/contactWriteForm.do")
	public void contactWriteForm() {
		//미완성
	}
	
	//나의 문의내역 보기
	@RequestMapping("user/myContact.do")
	public void myContact() {
		//미완성
	}
	
	//나의 후기 보기
	@RequestMapping("user/myReview.do")
	public void myReview(Model model, HttpSession session, @RequestParam(defaultValue="1")int page) {
		HashMap<String, Object> id = (HashMap<String, Object>)session.getAttribute("loginUserInfo");
		String loginID = (String)id.get("mem_id");
		
		model.addAllAttributes(service.getmyReview(loginID, page));
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
	public void orderList(Model m, HttpSession session) {
		HashMap<String, Object> id = (HashMap<String, Object>)session.getAttribute("loginUserInfo");
		String mem_id = (String)id.get("mem_id");
		service.getReceiptListByMember(mem_id);
		m.addAttribute("receiptList", service.getReceiptListByMember(mem_id));
	}
	
	//주문내역상세보기
	@RequestMapping("user/orderDetail.do")
	public void orderDetail(int receipt_id, Model m, HttpSession session) {
		//System.out.println(receipt_id);
		HashMap<String, Object> id = (HashMap<String, Object>)session.getAttribute("loginUserInfo");
		String mem_id = (String)id.get("mem_id");
		m.addAllAttributes(service.orderDetail(receipt_id, mem_id));
	}
	
	//교환신청
	@RequestMapping("user/changeOrder.do")
	public @ResponseBody boolean changeOrder(int receipt_id) {
		//System.out.println(receipt_id);
		service.changeOrder(receipt_id);
		return true;
	}
	//구매확정
	@RequestMapping("user/finalizeOrder.do")
	public @ResponseBody boolean finalizeOrder(int receipt_id) {
		//System.out.println(receipt_id);
		service.finalizeOrder(receipt_id);
		return true;
	}
	//주문취소
	@RequestMapping("user/cancelOrder.do")
	public @ResponseBody boolean cancelOrder(int receipt_id) {
		//System.out.println(receipt_id);
		service.cancelOrder(receipt_id);
		return true;
	}
	
	//개인정보 수정 전 비밀번호 확인창
	@RequestMapping("user/modifyConfirm.do")
	public void modifyConfirm() {}
	
	//개인정보 수정 비밀번호 확인
	@RequestMapping("user/passCheck.do")
	public @ResponseBody boolean passCheck(Member m, HttpSession session) {
		HashMap<String, Object> id = (HashMap<String, Object>)session.getAttribute("loginUserInfo");
		String mem_id = (String)id.get("mem_id");
		m.setMem_id(mem_id);
		Member member =service.loginCheck(m);
		if(member == null) {
			return false;
		}
		return true;
	}
	
	//회원정보수정폼
	@RequestMapping("user/modifyForm.do")
	public void modifyForm(Model m, HttpSession session) {
		//사실 검증을 하고 들어가야 함. 어떻게 하는지는 모르겠음.
		HashMap<String, Object> id = (HashMap<String, Object>)session.getAttribute("loginUserInfo");
		String mem_id = (String)id.get("mem_id");
		Member member = new Member();
		member.setMem_id(mem_id);
		m.addAttribute("member", service.idCheck(member));
	}
	
	//회원정보 수정요청
	@RequestMapping("user/modify.do")
	public @ResponseBody boolean modify(Member m) {
		System.out.println(m);
		service.updateMember(m);
		return true;
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
	
	//후기 글 수정폼 요청
	@RequestMapping("user/reviewModifyForm.do")
	public void modifyReviewForm(Model model, int review_id) {
		//게시물 번호에 해당하느 게시물을 가져오기
		model.addAttribute("review", service.getReview(review_id));
	}
	
	
	@RequestMapping("user/modifyReview.do")
	public String modifyReview(Review review) {
		//파라미터로 가져온 데이터 (수정된 게시물)
		//서비스의 modifyReview 메소드 호출
		service.modifyReview(review);
		
		//게시물 상세보기 페이지 요청
		return "redirect: myReview.do";
	}

	//후기 작성 폼 요청
//	@RequestMapping("user/reviewWriteForm.do")
//	public void modifyWriteForm() {}
	
	//후기 작성 첨부 파일
	@RequestMapping("user/ReviewWrite.do")
	public void ReviewWrite (Review review, 
			@RequestParam("review_pict") MultipartFile file) {
			System.out.println(review.getReview_score());
			System.out.println(review.getReview_content());
			System.out.println(review.getReview_pict());
	}
	
	//후기 사진 불러오기
	@RequestMapping("user/reviewdownload.do")
	public View reviewdownload(int num) {
		File attachFile = service.getReviewFile(num);
//		System.out.println(attachFile);
		View view = new DownloadView(attachFile);
		return view; 
	}
	
	//후기 작성 시 구매한 상품 가져오기
	@RequestMapping("user/reviewWriteForm.do")
	public void reviewWriteForm(Model model, HttpSession session) {
		HashMap<String, Object> id = (HashMap<String, Object>)session.getAttribute("loginUserInfo");
		String mem_id = (String)id.get("mem_id");
		System.out.println(mem_id);
		model.addAttribute("review", service.getReviewProd(mem_id));
	}
	
	//후기 작성 등록
	@RequestMapping("user/write.do")
	public String writeReview(Model model, HttpSession session, @RequestParam("receiptorder_id") String receiptorder_id,@RequestParam("review_score") int review_score ,@RequestParam("review_content") String review_content) {
		HashMap<String, Object> id = (HashMap<String, Object>)session.getAttribute("loginUserInfo");
		String mem_id = (String)id.get("mem_id");
		
		System.out.println(receiptorder_id);
		System.out.println(review_score);
		System.out.println(review_content);
//		System.out.println(review_pict);
//		System.out.println(file.getOriginalFilename());
//		service.writeReview(prod_id);
		int ro_id = Integer.parseInt(receiptorder_id);
		int prod_id = service.getProdid(ro_id);
		String prod_name = service.getProdname(prod_id);
		
		Review review = new Review();
		review.setReceiptorder_id(ro_id);
		review.setProd_id(prod_id);
		review.setProd_name(prod_name);
		review.setReview_writer(mem_id);
		review.setReview_score(review_score);
		review.setReview_content(review_content);
		review.setReview_pict("abc.jpg");
		model.addAttribute("review", service.writeReview(review));
		
		System.out.println(prod_id);
		System.out.println(prod_name);
		
		return "redirect: myReview.do";
		
	}
	
	

}
