package controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.HSService;

@Controller
public class UserController {
	
	@Autowired
	HSService service;
	
	//마이페이지 불러오기
	@RequestMapping("user/myPage.do")
	public void mypage(Model m, HttpSession session) {
		//미완성 
		//영수증리스트 가져오기 최신순서대로
		HashMap<String, Object> id = (HashMap<String, Object>)session.getAttribute("loginUserInfo");
		String mem_id = (String)id.get("mem_id");
		m.addAttribute("receiptList", service.getReceiptListByMember(mem_id));
		//찜목록 가져오기
		m.addAttribute("pickList", service.getPickList(mem_id));
	}
		
	//장바구니보기
	@RequestMapping("user/basket.do")
	public void basket() {
		//미완성
	}
		
	//문의작성폼보기
	@RequestMapping("user/contactWriteForm.do")
	public void contactWriteForm() {
		//미완성
	}
	
	//나의 후기 보기
	@RequestMapping("user/myReview.do")
	public void myReview() {
		//미완성
	}
	
	//나의 Q&A 보기
	@RequestMapping("user/myQnA.do")
	public void myQnA() {
		//미완성
	}
	
	//찜목록 보기
	@RequestMapping("user/pickList.do")
	public void pickList() {
		//미완성
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

}
