package model;

import java.sql.Date;

public class Reply {
	private int cont_id;
	private String rpy_title;
	private String rpy_content;
	private Date rpy_date;
	
	public Reply() {}

	public Reply(int cont_id, String rpy_title, String rpy_content, Date rpy_date) {
		this.cont_id = cont_id;
		this.rpy_title = rpy_title;
		this.rpy_content = rpy_content;
		this.rpy_date = rpy_date;
	}

	public int getCont_id() {
		return cont_id;
	}

	public void setCont_id(int cont_id) {
		this.cont_id = cont_id;
	}

	public String getRpy_title() {
		return rpy_title;
	}

	public void setRpy_title(String rpy_title) {
		this.rpy_title = rpy_title;
	}

	public String getRpy_content() {
		return rpy_content;
	}

	public void setRpy_content(String rpy_content) {
		this.rpy_content = rpy_content;
	}

	public Date getRpy_date() {
		return rpy_date;
	}

	public void setRpy_date(Date rpy_date) {
		this.rpy_date = rpy_date;
	}

	@Override
	public String toString() {
		return "Reply [cont_id=" + cont_id + ", rpy_title=" + rpy_title + ", rpy_content=" + rpy_content + ", rpy_date="
				+ rpy_date + "]";
	}
	
	
}
