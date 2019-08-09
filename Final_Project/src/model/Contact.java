package model;

import java.sql.Date;

public class Contact {
	private int cont_id;
	private String mem_id;
	private int cont_type;
	private int prod_id;
	private String cont_title;
	private String cont_content;
	private int cont_status;
	private Date cont_date;
	private String cont_pict;
	
	public Contact() {}

	public Contact(int cont_id, String mem_id, int cont_type, int prod_id, String cont_title, String cont_content,
			int cont_status, Date cont_date, String cont_pict) {
		this.cont_id = cont_id;
		this.mem_id = mem_id;
		this.cont_type = cont_type;
		this.prod_id = prod_id;
		this.cont_title = cont_title;
		this.cont_content = cont_content;
		this.cont_status = cont_status;
		this.cont_date = cont_date;
		this.cont_pict = cont_pict;
	}

	public int getCont_id() {
		return cont_id;
	}

	public void setCont_id(int cont_id) {
		this.cont_id = cont_id;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public int getCont_type() {
		return cont_type;
	}

	public void setCont_type(int cont_type) {
		this.cont_type = cont_type;
	}

	public int getProd_id() {
		return prod_id;
	}

	public void setProd_id(int prod_id) {
		this.prod_id = prod_id;
	}

	public String getCont_title() {
		return cont_title;
	}

	public void setCont_title(String cont_title) {
		this.cont_title = cont_title;
	}

	public String getCont_content() {
		return cont_content;
	}

	public void setCont_content(String cont_content) {
		this.cont_content = cont_content;
	}

	public int getCont_status() {
		return cont_status;
	}

	public void setCont_status(int cont_status) {
		this.cont_status = cont_status;
	}

	public Date getCont_date() {
		return cont_date;
	}

	public void setCont_date(Date cont_date) {
		this.cont_date = cont_date;
	}

	public String getCont_pict() {
		return cont_pict;
	}

	public void setCont_pict(String cont_pict) {
		this.cont_pict = cont_pict;
	}

	@Override
	public String toString() {
		return "Contact [cont_id=" + cont_id + ", mem_id=" + mem_id + ", cont_type=" + cont_type + ", prod_id="
				+ prod_id + ", cont_title=" + cont_title + ", cont_content=" + cont_content + ", cont_status="
				+ cont_status + ", cont_date=" + cont_date + ", cont_pict=" + cont_pict + "]";
	}
	
	
}
