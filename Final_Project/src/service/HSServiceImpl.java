package service;

import org.springframework.stereotype.Service;

import model.Event;
import model.Member;
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


	@Override
	public Product getOneProduct(int prod_id) {
		// TODO Auto-generated method stub
		
		return null;
	}

}
