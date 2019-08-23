package service;

import java.io.File;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import model.Answer;
import model.Banner;
import model.Basket;
import model.Event;
import model.Member;
import model.Notice;
import model.OptionDetail;
import model.ProdOption;
import model.Product;
import model.QnA;
import model.QnAComment;
import model.Receipt;
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
			System.out.println(basketList);
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
		
		HashMap<String, Object> popularProd = new HashMap<String, Object>();
		
		popularProd.put("current", page);
		popularProd.put("start", getStartPage(page));
		popularProd.put("end", getEndPage(page));
		popularProd.put("last", getProdLastPage(productDao.getCount()));
		popularProd.put("totalCards", productDao.getCount());
		popularProd.put("popularProd", productDao.selectByReadCount(params));
		
		return popularProd;
	}
	
	//최신순 상품 가져오기
	@Override
	public HashMap<String, Object> getProdByLatest(int page) {
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		params.put("offset", getProdOffset(page));
		params.put("cardsPerPage", 12);
		
		HashMap<String, Object> latestProd = new HashMap<String, Object>();
		
		latestProd.put("current", page);
		latestProd.put("start", getStartPage(page));
		latestProd.put("end", getEndPage(page));
		latestProd.put("last", getProdLastPage(productDao.getCount()));
		latestProd.put("totalCards", productDao.getCount());
		latestProd.put("latestProd", productDao.selectByLatest(params));
		
		return latestProd;
	}
	
	//인기순 상품 가져오기(메인 5개)
	@Override
	public List<Product> getProdByReadCountForMain() {
		// TODO Auto-generated method stub
		
		return productDao.selectByReadCountForMain();
	}

	//최신순 상품 가져오기(메인 5개)
	@Override
	public List<Product> getProdByLatestForMain() {
		// TODO Auto-generated method stub
			
		return productDao.selectByLatestForMain();
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
		
		qnaMap.put("last", getBoardLastPage(qnaDao.getCountById(prod_id)));
		qnaMap.put("totalBoards", qnaDao.getCountById(prod_id));
		qnaMap.put("qna", qnaListByProd);
			
		return qnaMap;
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
		
		reviewMap.put("last", getBoardLastPage(qnaDao.getCountById(prod_id)));
		reviewMap.put("totalBoards", qnaDao.getCountById(prod_id));
		reviewMap.put("qna", reviewListByProd);
			
		return reviewMap;
	}
		
	//해당 후기의 답변 가져오기
	public Answer getReviewAnswer(int review_id) {
		
		return answerDao.selectByReviewId(review_id);
	}	
	
	//검색어에 따른 상품목록 가져오기
	@Override
	public HashMap<String, Object> getProdByKeyword(String keyword) {
		HashMap<String, Object> searchProd = new HashMap<String, Object>();
		
		searchProd.put("searchProd", productDao.selectByKeyword(keyword));
		
		return searchProd;
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
	public List<Notice> getNoticeList() {
		// TODO Auto-generated method stub
		List<Notice> notice = noticeDao.selectAll();
		System.out.println(notice);
		return notice;
	}
	
	//공지사항 조회수 증가
	@Override
	public int updateReadCount1(int notice_readcount) {
		// TODO Auto-generated method stub
		return 0;
	}

	//이벤트 첨부파일
	@Override
	public File getAttachedFile(int num) {
		// TODO Auto-generated method stub
		
		Event event = eventDao.selectOne(num);
		String event_pict = event.getEvent_pict();
		String path = "C:/Temp/attach/";
		
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

}
