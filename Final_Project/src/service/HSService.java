package service;

import model.Member;
import model.Product;

public interface HSService {
	
	//로그인체크 
	public Member loginCheck(Member m);
	//밴리스트체크
	public boolean banCheck(String ban_id);
	//해당 아이디 장바구니 개수 가져오기
	public int countBasket(String mem_id);
	//상품ID로 상품 1개 가져오기
	public Product getOneProduct(int prod_id);
	
}
