package service;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import model.Event;
import model.Member;
import model.Notice;
import model.OptionDetail;
import model.ProdOption;
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

	//이벤트 읽기
	@Override
	public Event readEvent(int event_id) {
		// TODO Auto-generated method stub
		//게시물 번호를 이용해서 게시물의 조회수를 1증가 
		//해당 번호의 게시물 가져오기 
		eventDao.updateReadCount(event_id);
		return eventDao.selectOne(event_id);
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

	//상품ID로 상품1개 가져오기 (prodView)
	@Override
	public Product getOneProduct(int prod_id) {
		// TODO Auto-generated method stub	
		prodViewCount(prod_id);
		
		Product product = productDao.selectOne(prod_id);

		return product;
	}
	
	//상품 보기 조회수 증가(단순)
	public void prodViewCount(int prod_id) {
		
		//조회수 증가
		productDao.updateReadCount(prod_id);
	}
	
	//이벤트 list전부 가져오기
	@Override
	public List<Event> getEventList() {
		// TODO Auto-generated method stub
		List<Event> event = eventDao.selectAll();
//		System.out.println(event);
		
		return event;
	}

	//해당 상품의 옵션들 가져오기
	@Override
	public HashMap<String, Object> getProdOption(int prod_id) {
		// TODO Auto-generated method stub
		//옵션 리스트 가져오기
		List<ProdOption> prodOptionList = prodOptionDao.selectByProd(prod_id);
		
		//각각 옵션의 옵션상세 set
		for(int i = 0; i < prodOptionList.size(); i++) {
			prodOptionList.get(i).setOptiondetail(getOptionDetail(prodOptionList.get(i).getOpt_id()));
		}
		
		//HashMap 형태로 담기
		HashMap<String, Object> prodOptionMap = new HashMap<String, Object>();
		
		prodOptionMap.put("option", prodOptionList);
		
		return prodOptionMap;
	}
	
	//해당 옵션의 옵션상세 리스트 가져오기
	@Override
	public List<OptionDetail> getOptionDetail(int opt_id) {
		// TODO Auto-generated method stub
		return optionDetailDao.selectByOption(opt_id);
	}

	//이벤트 조회수 증가
	@Override
	public int updateReadCount(int event_readcount) {
		// TODO Auto-generated method stub
		return 0;
	}

	//공지사항 읽기
	@Override
	public Notice readNotice(int notice_id) {
		// TODO Auto-generated method stub
		noticeDao.updateReadCount(notice_id);
		return noticeDao.selectOne(notice_id);
	}

	//공지사항list전부 가져오기
	@Override
	public List<Notice> getNoticeList() {
		// TODO Auto-generated method stub
		List<Notice> notice = noticeDao.selectAll();
		System.out.println(notice);
		return notice;
	}
	
	//공지사항 조회수 증가
	@Override
	public int updateReadCount1(int notice_readcount) {
		// TODO Auto-generated method stub
		return 0;
	}

	//이벤트 첨부파일
	@Override
	public File getAttachedFile(int num) {
		// TODO Auto-generated method stub
		
		Event event = eventDao.selectOne(num);
		String event_pict = event.getEvent_pict();
		String path = "C:/Temp/attach/";
		
		return new File(path+event_pict);
	}
	
	
	

}
