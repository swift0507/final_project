package dao;

import java.util.List;

import model.Notice;

public interface NoticeDao {
	
	public Notice selectOne(int notice_id);
	public List<Notice> selectAll();

}
