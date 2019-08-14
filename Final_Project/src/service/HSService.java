package service;

import model.Event;
import model.Member;

public interface HSService {
	
	//로그인체크 
	public boolean loginCheck(Member m);
	
	//이벤트 읽기
	public Event readEvent(int event_id);
}
