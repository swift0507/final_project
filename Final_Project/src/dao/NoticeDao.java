package dao;

import java.util.HashMap;
import java.util.List;

import model.Notice;

public interface NoticeDao {
	
	public Notice selectOne(int notice_id);
	public List<Notice> selectAll(HashMap<String, Object> params);
	
	public int getCount(); // 전체 게시물 수 구하기
	
	public void updateReadCount(int notice_id); //조회수 증가

	public List<Notice> selectsupport();
}
