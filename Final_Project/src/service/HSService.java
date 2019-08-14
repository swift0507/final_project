package service;

import model.Member;
import model.Product;

public interface HSService {
	
	//로그인체크 
	public Member loginCheck(Member m);
	
	//상품ID로 상품 1개 가져오기
	public Product getOneProduct(int prod_id);
	
}
