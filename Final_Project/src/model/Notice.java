package model;

import java.sql.Date;

public class Notice {
	private int notice_id;
	private String notice_title;
	private String notice_content;
	private Date notice_date;
	private int notice_readcount;
	private String notice_pict;
	
	public Notice() {}

	public Notice(int notice_id, String notice_title, String notice_content, Date notice_date, int notice_readcount,
			String notice_pict) {
		this.notice_id = notice_id;
		this.notice_title = notice_title;
		this.notice_content = notice_content;
		this.notice_date = notice_date;
		this.notice_readcount = notice_readcount;
		this.notice_pict = notice_pict;
	}

	public int getNotice_id() {
		return notice_id;
	}

	public void setNotice_id(int notice_id) {
		this.notice_id = notice_id;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public Date getNotice_date() {
		return notice_date;
	}

	public void setNotice_date(Date notice_date) {
		this.notice_date = notice_date;
	}

	public int getNotice_readcount() {
		return notice_readcount;
	}

	public void setNotice_readcount(int notice_readcount) {
		this.notice_readcount = notice_readcount;
	}

	public String getNotice_pict() {
		return notice_pict;
	}

	public void setNotice_pict(String notice_pict) {
		this.notice_pict = notice_pict;
	}

	@Override
	public String toString() {
		return "Notice [notice_id=" + notice_id + ", notice_title=" + notice_title + ", notice_content="
				+ notice_content + ", notice_date=" + notice_date + ", notice_readcount=" + notice_readcount
				+ ", notice_pict=" + notice_pict + "]";
	}
	
	
}
