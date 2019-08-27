package controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.Detail;
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
	public void prodManage(Model m, @RequestParam(defaultValue="1")int page, HttpSession session) {
		//미완성
		HashMap<String, Object> id = (HashMap<String, Object>)session.getAttribute("loginUserInfo");
		String mem_id = (String)id.get("mem_id");
		
		
		HashMap<String, Object> sellerManageMap = new HashMap<String, Object>();
		
		List<Product> sellerProdList = (List<Product>)service.getProdList(mem_id, page).get("sellerProd");
		List<String> prodName = new ArrayList<String>();
		List<String> categoryName = new ArrayList<String>();
		List<Date> prodDate = new ArrayList<Date>();
		List<Integer> sellCount = new ArrayList<Integer>();
		List<Integer> sellRemain = new ArrayList<Integer>();
		List<Integer> sellSales = new ArrayList<Integer>();
		
		System.out.println(sellerProdList.size());
		
		for(int i = 0; i < sellerProdList.size(); i++) {
			prodName.add(i, sellerProdList.get(i).getProd_name());
			categoryName.add(i, service.getCategoryName(sellerProdList.get(i).getCategory_id()));
			prodDate.add(i, sellerProdList.get(i).getProd_date());
			sellCount.add(i, service.getSellCount(sellerProdList.get(i).getProd_id()));
			sellRemain.add(i, service.getSellRemain(sellerProdList.get(i).getProd_id()));
			sellSales.add(i, service.getSellSales(sellerProdList.get(i).getProd_id()));
			
			System.out.println(prodName);
		}
		
		sellerManageMap.put("prod_name", prodName);	//상품목록에서 상품명만 가져오고
		sellerManageMap.put("prod_category", categoryName);	//상품목록의 카테고리 id로 카테고리명 뽑아오고
		sellerManageMap.put("prod_date", prodDate);	//상품목록의 상품게시일
		sellerManageMap.put("sel_count", sellCount);	//receiptorder 테이블의 prod_id를 통해 order_quantity 전체 뽑아오고
		sellerManageMap.put("sel_remain", sellRemain);	//prod_id를 통해 option을 모두 찾고 그 옵션의 optiondetail 테이블의 수량 뽑아오고
		sellerManageMap.put("sel_sales", sellSales);	//receiptorder 테이블의 prod_id를 통해 order_price 전체 뽑아오자
			
		m.addAllAttributes(service.getProdList(mem_id, page));
		m.addAttribute("sellerProduct", sellerManageMap);
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
	
	//prodoption 넣기 ajax
	@RequestMapping("seller/prodoptionInsert.do")
	public @ResponseBody ProdOption insertProdOption(ProdOption option) {
		System.out.println(option);
		//return option;
		return service.insertProdOption(option);
	}
	
	//optiondetail 넣기 ajax
	@RequestMapping("seller/optionDetailInsert.do")
	public @ResponseBody OptionDetail insertOptionDetail(OptionDetail detail) {
		System.out.println(detail);
		//여기할차례
		//return detail;
		return service.insertOptionDetail(detail);
	}
	
	//상품 상세정보 넣기 ajax
	@RequestMapping("seller/detailInsert.do")
	public @ResponseBody boolean insertDetail(Detail detail) {
		System.out.println(detail);
		service.insertDetail(detail);
		return true;
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
