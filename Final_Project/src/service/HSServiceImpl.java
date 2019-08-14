package service;

<<<<<<< HEAD
import java.util.HashMap;
=======
>>>>>>> branch 'master' of https://github.com/swift0507/final_project.git
import java.util.List;

import org.springframework.stereotype.Service;

import model.Event;
import model.Member;
import model.OptionDetail;
import model.ProdOption;
import model.Product;

@Service
public class HSServiceImpl extends HSServiceField implements HSService {
	
	//로그인체크. 아이디가 없으면 리턴 false 아이디에 해당하는 비밀번호가 틀리면 false 리턴 다 맞으면 true 리턴
	@Override
	public boolean loginCheck(Member m) {
		// TODO Auto-generated method stub
		System.out.println(memberDao.selectId(m));
		return false;
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

	//상품ID로 상품1개 가져오기
	@Override
	public Product getOneProduct(int prod_id) {
		// TODO Auto-generated method stub	
		Product product = productDao.selectOne(prod_id);

		return product;
	}
	
<<<<<<< HEAD

	@Override
	public List<Event> getEventList() {
		// TODO Auto-generated method stub
		List<Event> event = eventDao.selectAll();
		System.out.println(event);
		
		return event;
	}

=======
	//해당 상품의 옵션들 가져오기
	@Override
	public List<ProdOption> getProdOption(int prod_id) {
		// TODO Auto-generated method stub		
		return prodOptionDao.selectByProd(prod_id);
	}
	
	//해당 옵션의 옵션상세 리스트 가져오기
	@Override
	public List<OptionDetail> getOptionDetail(int opt_id) {
		// TODO Auto-generated method stub
		return optionDetailDao.selectByOption(opt_id);
	}
>>>>>>> branch 'master' of https://github.com/swift0507/final_project.git
}
