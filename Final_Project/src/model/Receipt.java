package model;

import java.sql.Date;

public class Receipt {
	private int receipt_id;
	private String sel_id;
	private String mem_id;
	private String receipt_prod;
	private int receipt_price;
	private int receipt_fee;
	private Date receipt_orderdate;
	private Date receipt_paydate;
	private String receipt_name;
	private String receipt_zipcode;
	private String receipt_addr;
	private String receipt_phone;
	private String receipt_request;
	private String receipt_payoption;
	private int receipt_delstatus;
	
	public Receipt() {}

	public Receipt(int receipt_id, String sel_id, String mem_id, String receipt_prod, int receipt_price,
			int receipt_fee, Date receipt_orderdate, Date receipt_paydate, String receipt_name, String receipt_zipcode,
			String receipt_addr, String receipt_phone, String receipt_request, String receipt_payoption,
			int receipt_delstatus) {
		this.receipt_id = receipt_id;
		this.sel_id = sel_id;
		this.mem_id = mem_id;
		this.receipt_prod = receipt_prod;
		this.receipt_price = receipt_price;
		this.receipt_fee = receipt_fee;
		this.receipt_orderdate = receipt_orderdate;
		this.receipt_paydate = receipt_paydate;
		this.receipt_name = receipt_name;
		this.receipt_zipcode = receipt_zipcode;
		this.receipt_addr = receipt_addr;
		this.receipt_phone = receipt_phone;
		this.receipt_request = receipt_request;
		this.receipt_payoption = receipt_payoption;
		this.receipt_delstatus = receipt_delstatus;
	}

	public int getReceipt_id() {
		return receipt_id;
	}

	public void setReceipt_id(int receipt_id) {
		this.receipt_id = receipt_id;
	}

	public String getSel_id() {
		return sel_id;
	}

	public void setSel_id(String sel_id) {
		this.sel_id = sel_id;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getReceipt_prod() {
		return receipt_prod;
	}

	public void setReceipt_prod(String receipt_prod) {
		this.receipt_prod = receipt_prod;
	}

	public int getReceipt_price() {
		return receipt_price;
	}

	public void setReceipt_price(int receipt_price) {
		this.receipt_price = receipt_price;
	}

	public int getReceipt_fee() {
		return receipt_fee;
	}

	public void setReceipt_fee(int receipt_fee) {
		this.receipt_fee = receipt_fee;
	}

	public Date getReceipt_orderdate() {
		return receipt_orderdate;
	}

	public void setReceipt_orderdate(Date receipt_orderdate) {
		this.receipt_orderdate = receipt_orderdate;
	}

	public Date getReceipt_paydate() {
		return receipt_paydate;
	}

	public void setReceipt_paydate(Date receipt_paydate) {
		this.receipt_paydate = receipt_paydate;
	}

	public String getReceipt_name() {
		return receipt_name;
	}

	public void setReceipt_name(String receipt_name) {
		this.receipt_name = receipt_name;
	}

	public String getReceipt_zipcode() {
		return receipt_zipcode;
	}

	public void setReceipt_zipcode(String receipt_zipcode) {
		this.receipt_zipcode = receipt_zipcode;
	}

	public String getReceipt_addr() {
		return receipt_addr;
	}

	public void setReceipt_addr(String receipt_addr) {
		this.receipt_addr = receipt_addr;
	}

	public String getReceipt_phone() {
		return receipt_phone;
	}

	public void setReceipt_phone(String receipt_phone) {
		this.receipt_phone = receipt_phone;
	}

	public String getReceipt_request() {
		return receipt_request;
	}

	public void setReceipt_request(String receipt_request) {
		this.receipt_request = receipt_request;
	}

	public String getReceipt_payoption() {
		return receipt_payoption;
	}

	public void setReceipt_payoption(String receipt_payoption) {
		this.receipt_payoption = receipt_payoption;
	}

	public int getReceipt_delstatus() {
		return receipt_delstatus;
	}

	public void setReceipt_delstatus(int receipt_delstatus) {
		this.receipt_delstatus = receipt_delstatus;
	}

	@Override
	public String toString() {
		return "Receipt [receipt_id=" + receipt_id + ", sel_id=" + sel_id + ", mem_id=" + mem_id + ", receipt_prod="
				+ receipt_prod + ", receipt_price=" + receipt_price + ", receipt_fee=" + receipt_fee
				+ ", receipt_orderdate=" + receipt_orderdate + ", receipt_paydate=" + receipt_paydate
				+ ", receipt_name=" + receipt_name + ", receipt_zipcode=" + receipt_zipcode + ", receipt_addr="
				+ receipt_addr + ", receipt_phone=" + receipt_phone + ", receipt_request=" + receipt_request
				+ ", receipt_payoption=" + receipt_payoption + ", receipt_delstatus=" + receipt_delstatus + "]";
	}
	
	
}
