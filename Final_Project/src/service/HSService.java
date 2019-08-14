package service;

import model.Event;
import model.Member;
import model.Product;

public interface HSService {
	
	//로그인체크 
	public boolean loginCheck(Member m);
	
	//이벤트 읽기
	public Event readEvent(int event_id);

	//상품ID로 상품 1개 가져오기
	public Product getOneProduct(int prod_id);

}
