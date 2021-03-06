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
import org.springframework.web.multipart.MultipartFile;

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
		List<Integer> prodId = new ArrayList<Integer>();
		List<String> prodName = new ArrayList<String>();
		List<String> categoryName = new ArrayList<String>();
		List<Date> prodDate = new ArrayList<Date>();
		List<Integer> sellCount = new ArrayList<Integer>();
		List<Integer> sellRemain = new ArrayList<Integer>();
		List<Integer> sellSales = new ArrayList<Integer>();
		
		System.out.println(sellerProdList.size());
		
		for(int i = 0; i < sellerProdList.size(); i++) {
			prodId.add(i, sellerProdList.get(i).getProd_id());
			prodName.add(i, sellerProdList.get(i).getProd_name());
			categoryName.add(i, service.getCategoryName(sellerProdList.get(i).getCategory_id()));
			prodDate.add(i, sellerProdList.get(i).getProd_date());
			sellCount.add(i, service.getSellCount(sellerProdList.get(i).getProd_id()));
			sellRemain.add(i, service.getSellRemain(sellerProdList.get(i).getProd_id()));
			sellSales.add(i, service.getSellSales(sellerProdList.get(i).getProd_id()));
		}
		
		sellerManageMap.put("prod_id", prodId);
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
	public void orderManage(Model m, HttpSession session) {
		HashMap<String, Object> id = (HashMap<String, Object>)session.getAttribute("loginUserInfo");
		String mem_id = (String)id.get("mem_id");
		
		m.addAttribute("loginUser", mem_id);
		
		m.addAttribute("newTotalBoards", service.getNewReceiptCount());
		m.addAttribute("deliveryTotalBoards", service.getDeliveryReceiptCount());
		m.addAttribute("completedTotalBoards", service.getCompletedReceiptCount());
		m.addAttribute("applyTotalBoards", service.getApplyReceiptCount());
		m.addAttribute("exchangeTotalBoards", service.getExchangeReceiptCount());
	}
	
	//주문상세
	@RequestMapping("seller/orderDetail.do")
	public void orderDetail(int receipt_id, Model m, HttpSession session) {
		System.out.println(receipt_id);
		m.addAllAttributes(service.sellerOrderDetail(receipt_id));
	}
	
	//주문상태업데이트
	@RequestMapping("seller/updateDelStatus.do")
	public @ResponseBody boolean updateDelStatus(int delstatus, int receipt_id) {
		System.out.println(delstatus);
		System.out.println(receipt_id);
		service.updateReceiptStatus(receipt_id, delstatus);
		return true;
	}
	
	//주문삭제
	@RequestMapping("seller/deleteReceipt.do")
	public @ResponseBody boolean deleteReceipt(int receipt_id) {
		System.out.println(receipt_id);
		service.deleteReceipt(receipt_id);
		return true;
	}
	
	//신규주문
	@RequestMapping("seller/newReceiptList.do")
	public @ResponseBody HashMap<String, Object> newReceiptList(String sel_id, int page) {
		return service.getNewReceiptList(sel_id, page);
	}
	
	//배송중
	@RequestMapping("seller/deliveryReceiptList.do")
	public @ResponseBody HashMap<String, Object> deliveryReceiptList(String sel_id, int page) {
		return service.getDeliveryReceiptList(sel_id, page);
	}
	
	//배송완료
	@RequestMapping("seller/completedReceiptList.do")
	public @ResponseBody HashMap<String, Object> completedReceiptList(String sel_id, int page) {
		return service.getCompletedReceiptList(sel_id, page);
	}
	
	//교환신청
	@RequestMapping("seller/applyReceiptList.do")
	public @ResponseBody HashMap<String, Object> applyReceiptList(String sel_id, int page) {
		return service.getApplyReceiptList(sel_id, page);
	}
	
	//교환완료
	@RequestMapping("seller/exchangeReceiptList.do")
	public @ResponseBody HashMap<String, Object> exchangeReceiptList(String sel_id, int page) {
		return service.getExchangeReceiptList(sel_id, page);
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
	
	//사진업로드
	@RequestMapping("seller/uploadFile.do")
	public @ResponseBody boolean insertPic(List<MultipartFile> uploadfile, int prod_id, HttpSession session) {
		System.out.println(uploadfile);
		System.out.println(prod_id);
		service.insertProductpic(uploadfile, prod_id, session);
		return true;
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
		
	}
	
	//주문상세
	
//	//주문내역 상세
//	@RequestMapping("seller/orderDetails.do")
//	public void orderDetails() {
//		
//	}
	
	//사장님정보수정
	@RequestMapping("seller/modifyInfoForm.do")
	public void modifyInfoForm() {
		
	}
	
	@RequestMapping("seller/reviewManage.do")
	public void reviewManage(Model m, int prod_id, HttpSession session) {
		HashMap<String, Object> id = (HashMap<String, Object>)session.getAttribute("loginUserInfo");
		String mem_id = (String)id.get("mem_id");
		
		System.out.println(service.getReviewByStatus(prod_id));
		
		m.addAttribute("review", service.getReviewByStatus(prod_id));
	}
	
	@RequestMapping("seller/reviewByProd.do")
	public @ResponseBody HashMap<String, Object> reviewByProd(int prod_id, int reviewPage) {		
		return service.getReviewById(prod_id, reviewPage);
	}
	
	@RequestMapping("seller/qnaByProd.do")
	public @ResponseBody HashMap<String, Object> qnaByProd(int prod_id, int qnaPage) {
		return service.getQnAById(prod_id, qnaPage);
	}
	
	@RequestMapping("seller/qnaManage.do")
	public void qnaManage() {
		
	}
}
