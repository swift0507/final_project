package service;

import org.springframework.stereotype.Service;

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


	@Override
	public Product getOneProduct(int prod_id) {
		// TODO Auto-generated method stub	
		Product product = productDao.selectOne(prod_id);
		System.out.println(product);
		return product;
	}

}
