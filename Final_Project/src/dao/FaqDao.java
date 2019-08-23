package dao;

import java.util.List;

import model.FAQ;


public interface FaqDao {
	
	public FAQ selectOne(int faq_id);
	public List<FAQ> selectAll();
	
	public int getCount(); //게시물 수 구하기
	
	public List<FAQ> selectsupport();
}
