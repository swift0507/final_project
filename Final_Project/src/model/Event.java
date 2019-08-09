package model;

import java.sql.Date;

public class Event {
	private int event_id;
	private String event_title;
	private String event_content;
	private Date event_date;
	private int event_readcount;
	private String event_pict;
	
	public Event() {}

	public Event(int event_id, String event_title, String event_content, Date event_date, int event_readcount,
			String event_pict) {
		this.event_id = event_id;
		this.event_title = event_title;
		this.event_content = event_content;
		this.event_date = event_date;
		this.event_readcount = event_readcount;
		this.event_pict = event_pict;
	}

	public int getEvent_id() {
		return event_id;
	}

	public void setEvent_id(int event_id) {
		this.event_id = event_id;
	}

	public String getEvent_title() {
		return event_title;
	}

	public void setEvent_title(String event_title) {
		this.event_title = event_title;
	}

	public String getEvent_content() {
		return event_content;
	}

	public void setEvent_content(String event_content) {
		this.event_content = event_content;
	}

	public Date getEvent_date() {
		return event_date;
	}

	public void setEvent_date(Date event_date) {
		this.event_date = event_date;
	}

	public int getEvent_readcount() {
		return event_readcount;
	}

	public void setEvent_readcount(int event_readcount) {
		this.event_readcount = event_readcount;
	}

	public String getEvent_pict() {
		return event_pict;
	}

	public void setEvent_pict(String event_pict) {
		this.event_pict = event_pict;
	}

	@Override
	public String toString() {
		return "Event [event_id=" + event_id + ", event_title=" + event_title + ", event_content=" + event_content
				+ ", event_date=" + event_date + ", event_readcount=" + event_readcount + ", event_pict=" + event_pict
				+ "]";
	}
	
	
}
