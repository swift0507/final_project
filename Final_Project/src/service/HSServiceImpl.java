package service;

import org.springframework.stereotype.Service;

import model.Member;
import model.Product;

@Service
public class HSServiceImpl extends HSServiceField implements HSService {
	
	
	//로그인체크. 아이디가 없거나 비밀번호가 틀리면 null을 리턴하고 있으면 온전한 member를 리턴 
	@Override
	public Member loginCheck(Member m) {
		// TODO Auto-generated method stub
		Member mem = memberDao.selectId(m);
		mem = memberDao.passCheck(m);
		return mem;
	}
	
	

	@Override
	public Product getOneProduct(int prod_id) {
		// TODO Auto-generated method stub
		
		return null;
	}



	//banCheck 밴리스트에 있으면 true 아니면 false
	@Override
	public boolean banCheck(String ban_id) {
		// TODO Auto-generated method stub
		if(banlistDao.searchId(ban_id) == null) {
			return false;
		}
		return true;
	}

	//장바구니개수출력
	@Override
	public int countBasket(String mem_id) {
		// TODO Auto-generated method stub
		return basketDao.countBasket(mem_id);
	}

}
