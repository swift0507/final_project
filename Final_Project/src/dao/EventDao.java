package dao;

import java.util.HashMap;
import java.util.List;

import model.Event;

public interface EventDao {
	
//	public int insertEvent(Event event);
//	public int updateEvent(Event event);
//	public int deleteEvent(int event_id);
	public Event selectOne(int event_id);
	public List<Event> selectAll(HashMap<String, Object> params);
	public int getCount(); //전체 게시물 수 구하기
	
	public void updateReadCount(int event_id); 	//조회수 증가시키기
	
}
