package service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import model.Answer;
import model.Banner;
import model.Basket;
import model.Event;
import model.FAQ;
import model.Member;
import model.Notice;
import model.OptionDetail;
import model.ProdOption;
import model.Product;
import model.QnA;
import model.QnAComment;
import model.Receipt;
import model.ReceiptOrder;
import model.Review;
import model.Seller;

@Service
public class HSServiceImpl extends HSServiceField implements HSService {
	
	//로그인체크. 아이디가 없거나 비밀번호가 틀리면 null을 리턴하고 있으면 온전한 member를 리턴 
	@Override
	public Member loginCheck(Member m) {
		// TODO Auto-generated method stub
		Member mem = memberDao.selectId(m);
		mem = memberDao.passCheck(m);
		return mem;
	}
	
	//로그인날짜세팅, 방문날짜 하루 증가
	@Override
	public void setLoginDate(Member m) {
		// TODO Auto-generated method stub
		memberDao.updateLoginDate(m);
		memberDao.updateMemberHistory(m);
	}
	
	//id 중복확인
	@Override
	public Member idCheck(Member m) {
		// TODO Auto-generated method stub
		return memberDao.selectId(m);
	}
	
	//회원가입요청
	@Override
	public boolean signUp(Member m) {
		// TODO Auto-generated method stub
		memberDao.signUp(m);
		return true;
	}
	
	//id찾기
	@Override
	public Member findId(Member m) {
		// TODO Auto-generated method stub
		return memberDao.findId(m);
	}
	
	//pw찾기
	@Override
	public Member findPw(Member m) {
		// TODO Auto-generated method stub
		return memberDao.findPw(m);
	}
	
	//pw재설정
	@Override
	public int resetPw(Member m) {
		// TODO Auto-generated method stub
//		System.out.println(memberDao.resetPw(m));
		return memberDao.resetPw(m);
	}
	
	//멤버의 주문내역을 가져오기(주문자기준)
	@Override
	public List<Receipt> getReceiptListByMember(String mem_id) {
		// TODO Auto-generated method stub
		return receiptDao.selectReceiptListByMember(mem_id);
	}
	
	//맴버의 찜리스트 가져오기
	@Override
	public List<Product> getPickList(String mem_id) {
		// TODO Auto-generated method stub
		return pickDao.selectPickList(mem_id);
	}
	
	//상품의 찜갯수 가져오기
	@Override
	public int getPickCountByProdId(int prod_id) {
		// TODO Auto-generated method stub
		return pickDao.getCountById(prod_id);
	}
	
	//맴버의 장바구니 가져오기
	@Override
	public List<HashMap<String, Object>> getBasketList(String mem_id) {
		// TODO Auto-generated method stub
		//System.out.println(basketDao.groupBySeller(mem_id));
		List<HashMap<String, Object>> list = new ArrayList<HashMap<String,Object>>();
		for(String sel_id : basketDao.groupBySeller(mem_id)) {
			HashMap<String, Object> basketInfo = new HashMap<String, Object>();
			HashMap<String, String> param = new HashMap<String, String>();
			param.put("mem_id", mem_id);
			param.put("sel_id", sel_id);
			//장바구니리스트를 받아오기
			List<Basket> basketList = basketDao.selectBySeller(param);
			Seller seller = sellerDao.selectOneSeller(sel_id);
			//사장님별 맵에 특정 사장님 장바구니 넣기
			basketInfo.put("list", basketList);
			//판매자 정보 넣기(배송비, 배송비무료 넣기 위함.)
			basketInfo.put("seller", seller);
			//상품네임, 이미지
			list.add(basketInfo);
		}
//		System.out.println(list.size());
//		for(List<Basket> sublist : list) {
//			System.out.println(sublist);
//		}
		return list;
	}
	
	//결제기능 receipt 먼저 넣고 receiptorder 넣는다. receipt은 만들어져 오고 baskets의 basket_id로 receiptorder를 만든다.
	@Override
	public int pay(Receipt receipt, List<Integer> baskets, List<Integer> prodnums) {
		// TODO Auto-generated method stub
		receiptDao.insertReceipt(receipt);
		System.out.println(receipt);
		int index = 0;
		for(Integer basket_id : baskets) {
			Basket basket = basketDao.selectByBasketId(basket_id);
			ReceiptOrder receiptOrder = new ReceiptOrder();
			receiptOrder.setReceipt_id(receipt.getReceipt_id());
			receiptOrder.setSel_id(basket.getSel_id());
			receiptOrder.setProd_id(basket.getProd_id());
			receiptOrder.setMem_id(receipt.getMem_id());
			receiptOrder.setOrder_opt(basket.getBasket_option());
			//개수를 가져와야 해 
			receiptOrder.setOrder_quantity(prodnums.get(index));
			receiptOrder.setOrder_price(basket.getBasket_price()*prodnums.get(index));
			index++;
			
			receiptOrderDao.insertReceiptOrder(receiptOrder);
			//장바구니에서 삭제시키기 
			//basketDao.deleteByBasketId(basket_id);
		}
		return receipt.getReceipt_id();
	}
	
	//receipt_id로 receipt list 주기
	@Override
	public List<Receipt> payComplete(List<Integer> receipt_id) {
		// TODO Auto-generated method stub
		List<Receipt> receiptList = new ArrayList<Receipt>();
		for(int eachId : receipt_id) {
			receiptList.add(receiptDao.selectReceiptByReceiptId(eachId));
		}
		return receiptList;
	}
	
	//seller 하나 가져오기
	@Override
	public Seller getSeller(String sel_id) {
		// TODO Auto-generated method stub
		return sellerDao.selectOneSeller(sel_id);
	}
	
	//구매확정
	@Override
	public void finalizeOrder(int receipt_id) {
		// TODO Auto-generated method stub
		receiptDao.finalizeOrder(receipt_id);
	}
	
	//교환신청
	@Override
	public void changeOrder(int receipt_id) {
		// TODO Auto-generated method stub
		receiptDao.changeOrder(receipt_id);
	}
	
	//주문취소
	@Override
	public void cancelOrder(int receipt_id) {
		// TODO Auto-generated method stub
		receiptDao.cancelOrder(receipt_id);
	}
	
	//주문상세들어가기 
	@Override
	public HashMap<String, Object> orderDetail(int receipt_id, String mem_id) {
		// TODO Auto-generated method stub
		HashMap<String, Object> data = new HashMap<String, Object>();
		Receipt receipt = receiptDao.selectReceiptByReceiptId(receipt_id);
		//영수증 넣기
		data.put("receipt", receipt);
		List<ReceiptOrder> list = receiptOrderDao.getReceiptOrderList(receipt.getReceipt_id());
		//영수증상세품목 넣기
		data.put("list", list);
		Member m = new Member();
		m.setMem_id(mem_id);
		m = memberDao.selectId(m);
		//주문자정보넣기
		data.put("member", m);
		//사장님정보 주기
		Seller seller = sellerDao.selectOneSeller(receipt.getSel_id());
		data.put("seller", seller);
		return data;
	}

	//시작 페이지 번호
	@Override
	public int getStartPage(int page) {
		// TODO Auto-generated method stub
		return page - ((page - 1) % 5);
	}

	//끝 페이지 번호
	@Override
	public int getEndPage(int page) {
		// TODO Auto-generated method stub
		return page - ((page - 1) % 5) + (5 - 1);
	}

	//상품 목록의 마지막 페이지 번호
	@Override
	public int getProdLastPage(int numOfCards) {
		// TODO Auto-generated method stub
		return (numOfCards - 1) / 12 + 1;
	}

	//각 상품목록 페이지의 첫번째 카드번호
	@Override
	public int getProdOffset(int page) {
		// TODO Auto-generated method stub
		return (page - 1) * 12 + 1;
	}
	
	//게시판 형식 목록의 마지막 페이지 번호
	@Override
	public int getBoardLastPage(int numOfBoards) {
		// TODO Auto-generated method stub
		return (numOfBoards - 1) / 10 + 1;
	}

	//게시판 형식 목록 페이지의 첫번째 카드번호
	@Override
	public int getBoardOffset(int page) {
		// TODO Auto-generated method stub
		return (page - 1) * 10 + 1;
	}

	
	//이벤트 읽기
	@Override
	public Event readEvent(int event_id) {
		// TODO Auto-generated method stub
		//게시물 번호를 이용해서 게시물의 조회수를 1증가 
		//해당 번호의 게시물 가져오기 
		eventDao.updateReadCount(event_id);
		return eventDao.selectOne(event_id);
	}


	//banCheck 밴리스트에 있으면 true 아니면 false
	@Override
	public boolean banCheck(String ban_id) {
		// TODO Auto-generated method stub
		if(banlistDao.searchId(ban_id) == null) {
			return false;
		}
		return true;
	}
	
	//회원정보수정
	@Override
	public void updateMember(Member m) {
		// TODO Auto-generated method stub
		
	}

	//장바구니개수출력
	@Override
	public int countBasket(String mem_id) {
		// TODO Auto-generated method stub
		return basketDao.countBasket(mem_id);
	}

	//상품ID로 상품1개 가져오기 (prodView)
	@Override
	public Product getOneProduct(int prod_id) {
		// TODO Auto-generated method stub	
		prodViewCount(prod_id);
		
		Product product = productDao.selectOne(prod_id);

		return product;
	}
	
	//상품 보기 조회수 증가(단순)
	@Override
	public void prodViewCount(int prod_id) {
		
		//조회수 증가
		productDao.updateReadCount(prod_id);
	}
	
	//이벤트 list전부 가져오기
	@Override
	public HashMap<String, Object> getEventList(int page) {
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		params.put("offset", getProdOffset(page));
		params.put("boardsPerPage", 10);
		
		HashMap<String, Object> eventMap = new HashMap<String, Object>();
		
		eventMap.put("current", page);
		eventMap.put("start", getStartPage(page));
		eventMap.put("end", getEndPage(page));
		eventMap.put("last", getProdLastPage(eventDao.getCount()));
		eventMap.put("totalBoards", eventDao.getCount());
		eventMap.put("event", eventDao.selectAll(params));
		
		return eventMap;
	}
	
	//인기순 상품 가져오기
	@Override
	public HashMap<String, Object> getProdByReadCount(int page) {
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		params.put("offset", getProdOffset(page));
		params.put("cardsPerPage", 12);
		
		List<Product> prodListByReadCount = productDao.selectByReadCount(params);
		
		for(int i = 0; i < prodListByReadCount.size(); i++) {
			prodListByReadCount.get(i).setProd_pickCount(getPickCountByProdId(prodListByReadCount.get(i).getProd_id()));
			prodListByReadCount.get(i).setProd_reviewCount(getReviewCountById(prodListByReadCount.get(i).getProd_id()));		
		}

		HashMap<String, Object> popularProd = new HashMap<String, Object>();
		
		popularProd.put("current", page);
		popularProd.put("start", getStartPage(page));
		popularProd.put("end", getEndPage(page));
		popularProd.put("last", getProdLastPage(productDao.getCount()));
		popularProd.put("totalCards", productDao.getCount());
		popularProd.put("popularProd", prodListByReadCount);
		
		return popularProd;
	}
	
	//최신순 상품 가져오기
	@Override
	public HashMap<String, Object> getProdByLatest(int page) {
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		params.put("offset", getProdOffset(page));
		params.put("cardsPerPage", 12);
		
		List<Product> prodListByLatest = productDao.selectByLatest(params);
		
		for(int i = 0; i < prodListByLatest.size(); i++) {
			prodListByLatest.get(i).setProd_pickCount(getPickCountByProdId(prodListByLatest.get(i).getProd_id()));
			prodListByLatest.get(i).setProd_reviewCount(getReviewCountById(prodListByLatest.get(i).getProd_id()));		
		}
		
		HashMap<String, Object> latestProd = new HashMap<String, Object>();
		
		latestProd.put("current", page);
		latestProd.put("start", getStartPage(page));
		latestProd.put("end", getEndPage(page));
		latestProd.put("last", getProdLastPage(productDao.getCount()));
		latestProd.put("totalCards", productDao.getCount());
		latestProd.put("latestProd", prodListByLatest);
		
		return latestProd;
	}
	
	//검색어에 따른 상품목록 가져오기
		@Override
		public HashMap<String, Object> getProdByKeyword(int page, String keyword) {
			HashMap<String, Object> params = new HashMap<String, Object>();
			
			params.put("offset", getProdOffset(page));
			params.put("cardsPerPage", 12);
			params.put("keyword", keyword);
			
			List<Product> prodListByKeyword = productDao.selectByKeyword(params);
			
			for(int i = 0; i < prodListByKeyword.size(); i++) {
				prodListByKeyword.get(i).setProd_pickCount(getPickCountByProdId(prodListByKeyword.get(i).getProd_id()));
				prodListByKeyword.get(i).setProd_reviewCount(getReviewCountById(prodListByKeyword.get(i).getProd_id()));		
			}
			
			HashMap<String, Object> searchProd = new HashMap<String, Object>();
			
			searchProd.put("current", page);
			searchProd.put("start", getStartPage(page));
			searchProd.put("end", getEndPage(page));
			searchProd.put("last", getProdLastPage(productDao.getCount()));
			searchProd.put("totalCards", productDao.getCount());
			searchProd.put("searchProd", prodListByKeyword);
			
			return searchProd;
		}

	
	//인기순 상품 가져오기(메인 5개)
	@Override
	public List<Product> getProdByReadCountForMain() {
		// TODO Auto-generated method stub		
		List<Product> prodListByReadCountForMain = productDao.selectByReadCountForMain();
		
		for(int i = 0; i < prodListByReadCountForMain.size(); i++) {
			prodListByReadCountForMain.get(i).setProd_pickCount(getPickCountByProdId(prodListByReadCountForMain.get(i).getProd_id()));
			prodListByReadCountForMain.get(i).setProd_reviewCount(getReviewCountById(prodListByReadCountForMain.get(i).getProd_id()));		
		}
		
		return prodListByReadCountForMain;
	}

	//최신순 상품 가져오기(메인 5개)
	@Override
	public List<Product> getProdByLatestForMain() {
		// TODO Auto-generated method stub
		List<Product> prodListByLatestForMain = productDao.selectByLatestForMain();
		
		for(int i = 0; i < prodListByLatestForMain.size(); i++) {
			prodListByLatestForMain.get(i).setProd_pickCount(getPickCountByProdId(prodListByLatestForMain.get(i).getProd_id()));
			prodListByLatestForMain.get(i).setProd_reviewCount(getReviewCountById(prodListByLatestForMain.get(i).getProd_id()));		
		}
			
		return prodListByLatestForMain;
	}


	//해당 상품의 옵션들 가져오기
	@Override
	public HashMap<String, Object> getProdOption(int prod_id) {
		// TODO Auto-generated method stub
		//옵션 리스트 가져오기
		List<ProdOption> prodOptionList = prodOptionDao.selectByProd(prod_id);
		
		//각각 옵션의 옵션상세 set
		for(int i = 0; i < prodOptionList.size(); i++) {
			prodOptionList.get(i).setOptiondetail(getOptionDetail(prodOptionList.get(i).getOpt_id()));
		}
		
		//HashMap 형태로 담기
		HashMap<String, Object> prodOptionMap = new HashMap<String, Object>();
		
		prodOptionMap.put("option", prodOptionList);
		
		return prodOptionMap;
	}
	
	//해당 옵션의 옵션상세 리스트 가져오기
	@Override
	public List<OptionDetail> getOptionDetail(int opt_id) {
		// TODO Auto-generated method stub
		return optionDetailDao.selectByOption(opt_id);
	}
	
	//해당 상품 Q&A 가져오기
	@Override
	public HashMap<String, Object> getQnAById(int prod_id, int qnaPage) {
		// TODO Auto-generated method stub
		HashMap<String, Object> params = new HashMap<String, Object>();
			
		params.put("offset", getBoardOffset(qnaPage));
		params.put("boardsPerPage", 10);
		params.put("prod_id", prod_id);
		
		List<QnA> qnaListByProd = qnaDao.selectById(params);
		
		for(int i = 0; i < qnaListByProd.size(); i++) {
			if(qnaListByProd.get(i).getQna_answer() == 1)
			qnaListByProd.get(i).setQnacomment(getQnAComment(qnaListByProd.get(i).getQna_id()));
		}
			
		HashMap<String, Object> qnaMap = new HashMap<String, Object>();
		
		qnaMap.put("qnaLast", getBoardLastPage(qnaDao.getCountById(prod_id)));
		qnaMap.put("qnaTotalBoards", getQnACountById(prod_id));
		qnaMap.put("qna", qnaListByProd);
			
		return qnaMap;
	}
	
	public int getQnACountById(int prod_id) {
		return qnaDao.getCountById(prod_id);
	}
		
	//해당 Q&A의 답변 가져오기
	public QnAComment getQnAComment(int qna_id) {
		
		return qnaCommentDao.selectByQnAId(qna_id);
	}
	
	//해당 상품 후기 가져오기
	@Override
	public HashMap<String, Object> getReviewById(int prod_id, int reviewPage) {
		// TODO Auto-generated method stub
		HashMap<String, Object> params = new HashMap<String, Object>();
			
		params.put("offset", getBoardOffset(reviewPage));
		params.put("boardsPerPage", 10);
		params.put("prod_id", prod_id);
		
		List<Review> reviewListByProd = reviewDao.selectById(params);
		
		for(int i = 0; i < reviewListByProd.size(); i++) {
			if(reviewListByProd.get(i).getReview_answer() == 1)
			reviewListByProd.get(i).setAnswer(getReviewAnswer(reviewListByProd.get(i).getReview_id()));
		}
			
		HashMap<String, Object> reviewMap = new HashMap<String, Object>();
		
		reviewMap.put("reviewLast", getBoardLastPage(reviewDao.getCountById(prod_id)));
		reviewMap.put("reviewTotalBoards", getReviewCountById(prod_id));
		reviewMap.put("review", reviewListByProd);
		
		System.out.println(reviewMap.get("reviewTotalBoards"));
			
		return reviewMap;
	}
	
	public int getReviewCountById(int prod_id) {
		return reviewDao.getCountById(prod_id);
	}
		
	//해당 후기의 답변 가져오기
	public Answer getReviewAnswer(int review_id) {
		
		return answerDao.selectByReviewId(review_id);
	}	
	
	
	//이벤트 조회수 증가
	@Override
	public int updateReadCount(int event_readcount) {
		// TODO Auto-generated method stub
		return 0;
	}

	//공지사항 읽기
	@Override
	public Notice readNotice(int notice_id) {
		// TODO Auto-generated method stub
		noticeDao.updateReadCount(notice_id);
		return noticeDao.selectOne(notice_id);
	}
	
	//공지사항list전부 가져오기
	@Override
	public HashMap<String, Object> getNoticetList(int page) {
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		params.put("offset", getProdOffset(page));
		params.put("boardsPerPage", 10);
		
		HashMap<String, Object> noticeMap = new HashMap<String, Object>();
		
		noticeMap.put("current", page);
		noticeMap.put("start", getStartPage(page));
		noticeMap.put("end", getEndPage(page));
		noticeMap.put("last", getProdLastPage(noticeDao.getCount()));
		noticeMap.put("totalBoards", noticeDao.getCount());
		noticeMap.put("notice", noticeDao.selectAll(params));
		
		return noticeMap;
	}
	
	
	//공지사항 조회수 증가
	@Override
	public int updateReadCount1(int notice_readcount) {
		// TODO Auto-generated method stub
		return 0;
	}

	//이벤트 첨부파일
	@Override
	public File getEventFile(int num) {
		// TODO Auto-generated method stub
		Event event = eventDao.selectOne(num);
		String event_pict = event.getEvent_pict();
		String path = "C:\\Temp\\attach\\";
		
		return new File(path+event_pict);
	}

	//배너 가져오기
	@Override
	public HashMap<String, Object> getBanners() {
		// TODO Auto-generated method stub
		List<Banner> bannerList = bannerDao.selectAllBanner();
//		String path = "file:///C:/Users/usm05/git/final_project/Final_Project/WebContent/images/";
//		
//		for(int i = 0; i < bannerList.size(); i++) {
//			String imageName = bannerList.get(i).getBanner_pict();
//			bannerList.get(i).setBanner_pict(path + imageName);
//		}
		HashMap<String, Object> banners = new HashMap<String, Object>();
		
		banners.put("mainbanner", bannerList.get(0));
		
		bannerList.remove(0);
		
		banners.put("banners", bannerList);
		
		return banners;
	}

	//공지사항 첨부파일
	@Override
	public File getNoticeFile(int num) {
		// TODO Auto-generated method stub
		Notice notice = noticeDao.selectOne(num);
		String notice_pict = notice.getNotice_pict();
		String path = "C:\\Temp\\attach\\";
		return new File(path+notice_pict);
	}

	//faq 목록 출력
	@Override
	public List<FAQ> getFaqList() {
		// TODO Auto-generated method stub
		return faqDao.selectAll();
	}

	//고객센터(메인)_공지사항출력
	@Override
	public List<Notice> getsupportnoticeList() {
		// TODO Auto-generated method stub
		return noticeDao.selectsupport();
	}

	//고객센터(메인)_faq출력
	@Override
	public List<FAQ> getsupportfaqList() {
		// TODO Auto-generated method stub
		return faqDao.selectsupport();
	}

	//후기 작성
	@Override
	public int writeReview(Review review, MultipartFile file) {	
		// TODO Auto-generated method stub
		String path = "C:\\Temp\\attach\\";
		File dir = new File(path);
		if(!dir.exists()) dir.mkdirs();
		String review_pict = file.getOriginalFilename();
		File attachFile = new File(path+review_pict);
		try {
			file.transferTo(attachFile);  //웹으로 받아온 파일을 복사
			review.setReview_pict(review_pict);  //db에 파일 정보 저장을 하기위해 모델객체에 setting하기
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//게시물을 DB에 저장
		reviewDao.insertReview(review);
		return review.getReview_id();
	}

	//후기 수정
	@Override
	public int modifyReview(Review review) {
		// TODO Auto-generated method stub
		return reviewDao.updateReview(review);
		
	}

	//후기 삭제
	@Override
	public int deleteReview(int review_id) {
		// TODO Auto-generated method stub
		return reviewDao.deleteReview(review_id);
	}

	//후기 list 가져오기
	@Override
	public HashMap<String, Object> getReviewList(int page) {
		HashMap<String, Object> params = new HashMap<String, Object>();

		params.put("offset", getBoardOffset(page));
		params.put("boardsPerPage", 10);

		HashMap<String, Object> reviewMap = new HashMap<String, Object>();

		reviewMap.put("current", page);
		reviewMap.put("start", getStartPage(page));
		reviewMap.put("end", getEndPage(page));
		reviewMap.put("last", getBoardLastPage(reviewDao.getCount()));
		reviewMap.put("totalBoards", reviewDao.getCount());
		reviewMap.put("review", reviewDao.selectAll(params));

		return reviewMap;
	}

	
	@Override
	public int deleteQnA(int qna_id) {
		// TODO Auto-generated method stub
		qnaDao.deleteQnAById(qna_id);
		return qnaDao.deleteQnAById(qna_id);
	}

	//후기 가져오기
	@Override
	public Review getReview(int review_id) {
		// TODO Auto-generated method stub
		return reviewDao.selectOne(review_id);
	}

	//후기 첨부파일
	@Override
	public File getReviewFile(int num) {
		// TODO Auto-generated method stub
		Review review = reviewDao.selectOne(num);
		String review_pict = review.getReview_pict();
		System.out.println(review_pict);
		String path = "C:\\Temp\\attach\\";
		return new File(path+review_pict);
	}

	@Override
	public HashMap<String, Object> getmyReview(String loginID, int page) {
		// TODO Auto-generated method stub
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("review_writer", loginID);
		params.put("offset", getBoardOffset(page));
		params.put("boardsPerPage", 10);
		
		HashMap<String, Object> myReviews = new HashMap<String, Object>();

		myReviews.put("current", page);
		myReviews.put("start", getStartPage(page));
		myReviews.put("end", getEndPage(page));
		myReviews.put("last", getBoardLastPage(reviewDao.getCount()));
		myReviews.put("totalBoards", reviewDao.getCount());
		myReviews.put("review", reviewDao.getmyReview(params));
		
		return myReviews;
	}
	
	//장바구니에 상품 추가
	@Override
	public int addBasket(Basket basket) {
		// TODO Auto-generated method stub
		return basketDao.insertBasket(basket);
	}



}
