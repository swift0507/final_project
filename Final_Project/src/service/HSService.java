package service;

import java.io.File;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import model.Answer;
import model.Basket;
import model.Category;
import model.Detail;
import model.Event;
import model.FAQ;
import model.Member;
import model.Notice;
import model.OptionDetail;
import model.Pick;
import model.ProdOption;
import model.Product;
import model.ProductPict;
import model.QnAComment;
import model.Receipt;
import model.Review;
import model.Seller;

public interface HSService {
	
	//로그인체크 
	public Member loginCheck(Member m);
	
	//최근 로그인날짜 세팅
	public void setLoginDate(Member m);
	
	//id중복확인
	public Member idCheck(Member m);
	
	//id찾기
	public Member findId(Member m);
	
	//pw찾기
	public Member findPw(Member m);
	
	//pw재설정
	public int resetPw(Member m);
	
	//회원가입요청
	public boolean signUp(Member m);
	
	//밴리스트체크
	public boolean banCheck(String ban_id);
	//해당 아이디 장바구니 개수 가져오기
	public int countBasket(String mem_id);
	
	//해당 로그인 id의 주문내역(receipt)리스트 가져오기
	public List<Receipt> getReceiptListByMember(String mem_id);
	
	//로그인 id의 찜리스트 가져오기
	public List<Product> getPickList(String mem_id);
	
	//상품의 찜갯수 가져오기
	public int getPickCountByProdId(int prod_id);
	
	//장바구니 가져오기 + 결제화면 가기
	public List<HashMap<String, Object>> getBasketList(String mem_id);
	
	//결제버튼눌렀을때 영수증 넣고 영수증별 상품 넣기. 주문한 receipt_id 보내기 
	public int pay(Receipt receipt, List<Integer> baskets, List<Integer> prodnums, HttpSession session);
	
	//방금 주문한 receipt들 보내기
	public List<Receipt> payComplete(List<Integer> receipt_id);
	
	//seller 받아오기
	public Seller getSeller(String sel_id);
	
	//구매확정
	public void finalizeOrder(int receipt_id);
	//교환신청
	public void changeOrder(int receipt_id);
	//주문취소
	public void cancelOrder(int receipt_id);
	
	//회원정보수정
	public void updateMember(Member m);
	
	/*
	 seller
	 */
	//사장님 메인
	public HashMap<String, Object> sellerMain(String sel_id);
	
	//카테고리목록불러오기
	public List<Category> getCategoryList();
	
	//상품 넣기
	public Product insertProd(Product p);
	
	//사진 넣기
	public void insertProductpic(List<MultipartFile> uploadfile, int prod_id, HttpSession session);
	
	//큰 옵션 넣기
	public ProdOption insertProdOption(ProdOption option);
	
	//작은옵션넣기
	public OptionDetail insertOptionDetail(OptionDetail detail);
	
	//상품상세정보 넣기
	public void insertDetail(Detail detail);
	
	//주문상세페이지 서비스
	public HashMap<String, Object> orderDetail(int receipt_id, String mem_id);
	
	//이벤트 읽기
	public Event readEvent(int event_id);
	
	//이벤트페이지의 게시물 리스트 출력
	public HashMap<String, Object> getEventList(int page);
	
	//인기순 상품목록 가져오기
	public HashMap<String, Object> getProdByReadCount(int page);
	
	//최신순 상품목록 가져오기
	public HashMap<String, Object> getProdByLatest(int page);
	
	//인기순 상품목록 가져오기(메인 5개)
	public List<Product> getProdByReadCountForMain();
		
	//최신순 상품목록 가져오기(메인 5개)
	public List<Product> getProdByLatestForMain();

	//상품ID로 상품 1개 가져오기
	public Product getOneProduct(int prod_id);
	
	//검색어 기반 상품목록 가져오기
	public HashMap<String, Object> getProdByKeyword(int page, String keyword);
	
	//상품 보기 조회수 증가
	public void prodViewCount(int prod_id);

	//상품ID로 옵션 리스트 가져오기
	public HashMap<String, Object> getProdOption(int prod_id);

	//옵션ID로 해당 옵션의 옵션 상세 리스트 가져오기
	public List<OptionDetail> getOptionDetail(int opt_id);

	//이벤트 조회수 증가
	public int updateReadCount(int event_readcount);
	
	//공지사항 읽기
	public Notice readNotice(int notice_id);
	
	//공지사항페이지의 게시물 리스트 출력
//	public List<Notice> getNoticeList();
	public HashMap<String, Object> getNoticetList(int page);
	
	//공지사항 조회수 증가
	int updateReadCount1(int notice_readcount);
	
	//배너 가져오기
	public HashMap<String, Object> getBanners();
	
	//이벤트_첨부파일을 가져다 주는 기능이벤트
	public File getEventFile(int num);
	
	/*페이징처리 관련*/
	//시작 페이지
	public int getStartPage(int page);

	//끝 페이지
	public int getEndPage(int page);

	//상품카드 목록의 마지막 페이지 번호
	public int getProdLastPage(int numOfCards);
	
	//상품카드 페이지의 첫번째 카드번호
	public int getProdOffset(int page);
	
	//공지사항_첨부파일을 가져다 주는 기능
	public File getNoticeFile(int num);
	
	//faq 페이지의 게시물 리스트 출력
	public List<FAQ> getFaqList();
	
	//고객센터 공지사항 출력
	public List<Notice> getsupportnoticeList();
	
	//고객센터 자주묻는질문 출력
	public List<FAQ> getsupportfaqList();
	//게시판 형식 목록의 마지막 페이지 번호
	public int getBoardLastPage(int numOfBoards);
	
	//게시판 형식 목록 페이지의 첫번째 게시물번호
	public int getBoardOffset(int page);
	/*여기까지 페이징 관련*/

	//상품별 Q&A 가져오기
	public HashMap<String, Object> getQnAById(int prod_id, int qnaPage);

	//후기 작성,수정,삭제
	public int writeReview(Review review) ;
	public int modifyReview(Review review);
	public int deleteReview(int review_id);
	
	public Review getReview(int review_id);
	
	//후기페이지의 리스트 출력
//	public List<Review> getReviewList();
	public HashMap<String, Object> getReviewList(int page);
	
	public int getQnACountById(int prod_id);
	
	public QnAComment getQnAComment(int qna_id);
	

	//상품별 후기 가져오기
	public HashMap<String, Object> getReviewById(int prod_id, int reviewPage);
	
	public int getReviewCountById(int prod_id);
	
	public Answer getReviewAnswer(int review_id);

	//Q&A 삭제
	public int deleteQnA(int qna_id);
	
	//후기_첨부파일을 가져다 주는 기능
	public File getReviewFile(int num);

	//나의 후기 가져오기
	public HashMap<String, Object> getmyReview(String loginID, int page);

	//장바구니 상품 추가
	public int addBasket(Basket basket);
	
	//후기 작성 시 구매한 상품 가져오기
	public List<HashMap<String, Object>> getReviewProd(String mem_id); //여기여기여기

	//찜목록 추가
	public int addPick(Pick pick);

	//찜목록 삭제
	public int deletePick(Pick pick);

	//사장님 등록상품목록 가져오기
	public HashMap<String, Object> getProdList(String mem_id, int page);

	//카테고리 id로 카테고리명 가져오기
	public String getCategoryName(int category_id);

	//상품id별로 receiptorder 테이블에서 상품별 판매수량 판매수량
	public int getSellCount(int category_id);

	//상품id로 첫번째 옵션, 그리고 첫번째 옵션의 옵션상세의 재고수량 가져오기
	public int getSellRemain(int category_id);

	//상품id로 receiptorder 테이블에서 상품별 매출 가져오기
	public int getSellSales(int category_id);

	public HashMap<String, Object> getNewReceiptList(String sel_id, int page);

	public HashMap<String, Object> getDeliveryReceiptList(String sel_id, int page);

	public HashMap<String, Object> getCompletedReceiptList(String sel_id, int page);

	public HashMap<String, Object> getApplyReceiptList(String sel_id, int page);

	public HashMap<String, Object> getExchangeReceiptList(String sel_id, int page);

	public int getNewReceiptCount();

	public int getDeliveryReceiptCount();

	public int getCompletedReceiptCount();

	public int getApplyReceiptCount();

	//후기 작성 시 상품 아이디 가져오기
	public int getProdid(int receiptorder_id);
	
	//후기 작성 시 상품 이름 가져오기
	public String getProdname(int prod_id);
	
	public int getExchangeReceiptCount();

	public List<Detail> getDetailByProd(int prod_id);

	public List<Review> getReviewByStatus(int prod_id);

	HashMap<String, Object> sellerOrderDetail(int receipt_id);
	
	public void updateReceiptStatus(int receipt_id, int delstatus);
	
	public void deleteReceipt(int receipt_id);
	
	//해당 상품의 사진들 가져오기
	public List<ProductPict> getProductPicts(int prod_id);
	
	//해당 상품의 대표사진 가져오기
	public File getRepresentativePict(int prod_id, HttpSession session);

}
