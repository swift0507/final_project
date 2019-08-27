package controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.OptionDetail;
import model.ProdOption;
import model.Product;
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
	
	//판매상품등록폼
	@RequestMapping("seller/prodPost.do")
	public void prodPost(Model m) {
		//미완성
		m.addAttribute("categoryList", service.getCategoryList());
	}
	
	//상품등록 ajax
	@RequestMapping("seller/insertProd.do")
	public @ResponseBody Product insertProd(Product p) {
		System.out.println(p);
		//추가적으로 넣어야 하는 데이터
		//배송비
		p.setProd_fee(service.getSeller(p.getSel_id()).getSel_fee());
		
		return service.insertProd(p);
	}
	
	//prodoption 넣기
	@RequestMapping("seller/prodoptionInsert.do")
	public @ResponseBody ProdOption insertProdOption(ProdOption option) {
		System.out.println(option);
		//return option;
		return service.insertProdOption(option);
	}
	
	//optiondetail 넣기
	@RequestMapping("seller/optionDetailInsert.do")
	public @ResponseBody OptionDetail insertOptionDetail(OptionDetail detail) {
		System.out.println(detail);
		//여기할차례
		return service.insertOptionDetail(detail);
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
