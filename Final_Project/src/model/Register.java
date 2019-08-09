package model;

public class Register {
	private String reg_id;
	private String reg_no;
	private String reg_name;
	private String reg_addr;
	private String reg_remainaddr;
	private String reg_pict;
	
	public Register() {}

	public Register(String reg_id, String reg_no, String reg_name, String reg_addr, String reg_remainaddr,
			String reg_pict) {
		this.reg_id = reg_id;
		this.reg_no = reg_no;
		this.reg_name = reg_name;
		this.reg_addr = reg_addr;
		this.reg_remainaddr = reg_remainaddr;
		this.reg_pict = reg_pict;
	}

	public String getReg_id() {
		return reg_id;
	}

	public void setReg_id(String reg_id) {
		this.reg_id = reg_id;
	}

	public String getReg_no() {
		return reg_no;
	}

	public void setReg_no(String reg_no) {
		this.reg_no = reg_no;
	}

	public String getReg_name() {
		return reg_name;
	}

	public void setReg_name(String reg_name) {
		this.reg_name = reg_name;
	}

	public String getReg_addr() {
		return reg_addr;
	}

	public void setReg_addr(String reg_addr) {
		this.reg_addr = reg_addr;
	}

	public String getReg_remainaddr() {
		return reg_remainaddr;
	}

	public void setReg_remainaddr(String reg_remainaddr) {
		this.reg_remainaddr = reg_remainaddr;
	}

	public String getReg_pict() {
		return reg_pict;
	}

	public void setReg_pict(String reg_pict) {
		this.reg_pict = reg_pict;
	}

	@Override
	public String toString() {
		return "Register [reg_id=" + reg_id + ", reg_no=" + reg_no + ", reg_name=" + reg_name + ", reg_addr=" + reg_addr
				+ ", reg_remainaddr=" + reg_remainaddr + ", reg_pict=" + reg_pict + "]";
	}
	
	
}
