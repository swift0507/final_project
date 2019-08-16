package service;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import model.Event;
import model.Member;
import model.Notice;
import model.OptionDetail;
import model.ProdOption;
import model.Product;

public interface HSService {
	
	//로그인체크 
	public Member loginCheck(Member m);
	//밴리스트체크
	public boolean banCheck(String ban_id);
	//해당 아이디 장바구니 개수 가져오기
	public int countBasket(String mem_id);
	
	//이벤트 읽기
	public Event readEvent(int event_id);
	
	//이벤트페이지의 게시물 리스트 출력
	public List<Event> getEventList();

	//상품ID로 상품 1개 가져오기
	public Product getOneProduct(int prod_id);

	//상품ID로 옵션 리스트 가져오기
	public HashMap<String, Object> getProdOption(int prod_id);

	//옵션ID로 해당 옵션의 옵션 상세 리스트 가져오기
	public List<OptionDetail> getOptionDetail(int opt_id);

	//이벤트 조회수 증가
	public int updateReadCount(int event_readcount);
	
	//공지사항 읽기
	public Notice readNotice(int notice_id);
	
	//공지사항페이지의 게시물 리스트 출력
	public List<Notice> getNoticeList();
	
	//공지사항 조회수 증가
	int updateReadCount1(int notice_readcount);
	
	//첨부파일을 가져다 주는 기능
	public File getAttachedFile(int num);
}
