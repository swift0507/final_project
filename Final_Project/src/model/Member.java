package model;

import java.sql.Date;

public class Member {
	private String mem_id;
	private String mem_pw;
	private String mem_name;
	private Date mem_birth;
	private int mem_gender;
	private String mem_email;
	private String mem_phone;
	private String mem_zipcode;
	private String mem_addr;
	private String mem_remainaddr;
	private int mem_grade;
	private int mem_marketing;
	private Date mem_recentlogin;
	private int mem_history;
	private int mem_bancount;
	
	public Member() {}

	public Member(String mem_id, String mem_pw, String mem_name, Date mem_birth, int mem_gender, String mem_email,
			String mem_phone, String mem_zipcode, String mem_addr, String mem_remainaddr, int mem_grade,
			int mem_marketing, Date mem_recentlogin, int mem_history, int mem_bancount) {
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_name = mem_name;
		this.mem_birth = mem_birth;
		this.mem_gender = mem_gender;
		this.mem_email = mem_email;
		this.mem_phone = mem_phone;
		this.mem_zipcode = mem_zipcode;
		this.mem_addr = mem_addr;
		this.mem_remainaddr = mem_remainaddr;
		this.mem_grade = mem_grade;
		this.mem_marketing = mem_marketing;
		this.mem_recentlogin = mem_recentlogin;
		this.mem_history = mem_history;
		this.mem_bancount = mem_bancount;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_pw() {
		return mem_pw;
	}

	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public Date getMem_birth() {
		return mem_birth;
	}

	public void setMem_birth(Date mem_birth) {
		this.mem_birth = mem_birth;
	}

	public int getMem_gender() {
		return mem_gender;
	}

	public void setMem_gender(int mem_gender) {
		this.mem_gender = mem_gender;
	}

	public String getMem_email() {
		return mem_email;
	}

	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}

	public String getMem_phone() {
		return mem_phone;
	}

	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}

	public String getMem_zipcode() {
		return mem_zipcode;
	}

	public void setMem_zipcode(String mem_zipcode) {
		this.mem_zipcode = mem_zipcode;
	}

	public String getMem_addr() {
		return mem_addr;
	}

	public void setMem_addr(String mem_addr) {
		this.mem_addr = mem_addr;
	}

	public String getMem_remainaddr() {
		return mem_remainaddr;
	}

	public void setMem_remainaddr(String mem_remainaddr) {
		this.mem_remainaddr = mem_remainaddr;
	}

	public int getMem_grade() {
		return mem_grade;
	}

	public void setMem_grade(int mem_grade) {
		this.mem_grade = mem_grade;
	}

	public int getMem_marketing() {
		return mem_marketing;
	}

	public void setMem_marketing(int mem_marketing) {
		this.mem_marketing = mem_marketing;
	}

	public Date getMem_recentlogin() {
		return mem_recentlogin;
	}

	public void setMem_recentlogin(Date mem_recentlogin) {
		this.mem_recentlogin = mem_recentlogin;
	}

	public int getMem_history() {
		return mem_history;
	}

	public void setMem_history(int mem_history) {
		this.mem_history = mem_history;
	}

	public int getMem_bancount() {
		return mem_bancount;
	}

	public void setMem_bancount(int mem_bancount) {
		this.mem_bancount = mem_bancount;
	}

	@Override
	public String toString() {
		return "Member [mem_id=" + mem_id + ", mem_pw=" + mem_pw + ", mem_name=" + mem_name + ", mem_birth=" + mem_birth
				+ ", mem_gender=" + mem_gender + ", mem_email=" + mem_email + ", mem_phone=" + mem_phone
				+ ", mem_zipcode=" + mem_zipcode + ", mem_addr=" + mem_addr + ", mem_remainaddr=" + mem_remainaddr
				+ ", mem_grade=" + mem_grade + ", mem_marketing=" + mem_marketing + ", mem_recentlogin="
				+ mem_recentlogin + ", mem_history=" + mem_history + ", mem_bancount=" + mem_bancount + "]";
	}
	
	
	
	
}
