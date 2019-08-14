package service;

import java.util.HashMap;
import java.util.List;

import model.Event;
import model.Member;
import model.Product;

public interface HSService {
	
	//로그인체크 
	public boolean loginCheck(Member m);
	
	//이벤트 읽기
	public Event readEvent(int event_id);
	
	//이벤트페이지의 게시물 리스트 출력
	public List<Event> getEventList();

	//상품ID로 상품 1개 가져오기
	public Product getOneProduct(int prod_id);

}
