package service;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import model.Event;
import model.FAQ;
import model.Member;
import model.Notice;
import model.OptionDetail;
import model.ProdOption;
import model.Product;

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
	
	//이벤트 읽기
	public Event readEvent(int event_id);
	
	//이벤트페이지의 게시물 리스트 출력
	public HashMap<String, Object> getEventList(int page);
	
	//인기순 상품목록 가져오기
	public HashMap<String, Object> getProdByReadCount(int page);
	
	//최신순 상품목록 가져오기
	public HashMap<String, Object> getProdByLatest(int page);

	//상품ID로 상품 1개 가져오기
	public Product getOneProduct(int prod_id);
	
	//검색어 기반 상품목록 가져오기
	public HashMap<String, Object> getProdByKeyword(String keyword);
	
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
	
	//페이징처리 관련
	public int getStartPage(int page);

	public int getEndPage(int page);

	public int getProdLastPage(int numOfCards);

	public int getProdOffset(int page);
	
	//공지사항_첨부파일을 가져다 주는 기능
	public File getNoticeFile(int num);
	
	//faq 페이지의 게시물 리스트 출력
	public List<FAQ> getFaqList();

}
