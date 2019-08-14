package service;

import java.util.List;

import model.Event;
import model.Member;
import model.OptionDetail;
import model.ProdOption;
import model.Product;

public interface HSService {
	
	//로그인체크 
	public boolean loginCheck(Member m);
	
	//이벤트 읽기
	public Event readEvent(int event_id);

	//상품ID로 상품 1개 가져오기
	public Product getOneProduct(int prod_id);

	//상품ID로 옵션 리스트 가져오기
	public List<ProdOption> getProdOption(int prod_id);

	//옵션ID로 해당 옵션의 옵션 상세 리스트 가져오기
	public List<OptionDetail> getOptionDetail(int opt_id);

}
