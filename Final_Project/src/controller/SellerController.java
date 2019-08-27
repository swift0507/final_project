package controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.HSService;

@Controller
public class SellerController {
	
	@Autowired
	HSService service;
	
	//사장님메인
	@RequestMapping("seller/manageMain.do")
	public void manageMaint(Model m, HttpSession session) {
		//미완성
		HashMap<String, Object> id = (HashMap<String, Object>)session.getAttribute("loginUserInfo");
		String mem_id = (String)id.get("mem_id");
		m.addAllAttributes(service.sellerMain(mem_id));
	}
	
	//등록상품관리
	@RequestMapping("seller/prodManage.do")
	public void prodManage() {
		//미완성
	}
	
	//주문관리
	@RequestMapping("seller/orderManage.do")
	public void orderManage() {
		
	}
	
	//판매상품등록
	@RequestMapping("seller/prodPost.do")
	public void prodPost() {
		//미완성
	}
	
	//상품상세
	@RequestMapping("seller/prodDetails.do")
	public void prodDetails() {
		//미완성
	}
	
	//주문상세
	
	//주문내역 상세
	@RequestMapping("seller/orderDetails.do")
	public void orderDetails() {
		//미완성
	}
	
	//사장님정보수정
	@RequestMapping("seller/modifyInfoForm.do")
	public void modifyInfoForm() {
		//미완성
	}
}
