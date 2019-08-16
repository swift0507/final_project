package model;

import java.sql.Date;

public class Product {
	private int prod_id;
	private String sel_id;
	private String prod_name;
	private int prod_price;
	private int prod_readcount;
	private int category_id;
	private String prod_bank;
	private String prod_account;
	private String prod_depositor;
	private int prod_status;
	private int prod_fee;
	private String prod_content;
	private Date prod_date;

	public Product() {}

	public Product(int prod_id, String sel_id, String prod_name, int prod_price, int prod_readcount, int category_id,
			String prod_bank, String prod_account, String prod_depositor, int prod_status, int prod_fee,
			String prod_content, Date prod_date) {
		this.prod_id = prod_id;
		this.sel_id = sel_id;
		this.prod_name = prod_name;
		this.prod_price = prod_price;
		this.prod_readcount = prod_readcount;
		this.category_id = category_id;
		this.prod_bank = prod_bank;
		this.prod_account = prod_account;
		this.prod_depositor = prod_depositor;
		this.prod_status = prod_status;
		this.prod_fee = prod_fee;
		this.prod_content = prod_content;
		this.prod_date = prod_date;
	}


	public int getProd_id() {
		return prod_id;
	}

	public void setProd_id(int prod_id) {
		this.prod_id = prod_id;
	}

	public String getSel_id() {
		return sel_id;
	}

	public void setSel_id(String sel_id) {
		this.sel_id = sel_id;
	}

	public String getProd_name() {
		return prod_name;
	}

	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}

	public int getProd_price() {
		return prod_price;
	}

	public void setProd_price(int prod_price) {
		this.prod_price = prod_price;
	}

	public int getProd_readcount() {
		return prod_readcount;
	}

	public void setProd_readcount(int prod_readcount) {
		this.prod_readcount = prod_readcount;
	}

	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}

	public String getProd_bank() {
		return prod_bank;
	}

	public void setProd_bank(String prod_bank) {
		this.prod_bank = prod_bank;
	}

	public String getProd_account() {
		return prod_account;
	}

	public void setProd_account(String prod_account) {
		this.prod_account = prod_account;
	}

	public String getProd_depositor() {
		return prod_depositor;
	}

	public void setProd_depositor(String prod_depositor) {
		this.prod_depositor = prod_depositor;
	}

	public int getProd_status() {
		return prod_status;
	}

	public void setProd_status(int prod_status) {
		this.prod_status = prod_status;
	}

	public int getProd_fee() {
		return prod_fee;
	}

	public void setProd_fee(int prod_fee) {
		this.prod_fee = prod_fee;
	}
	
	public String getProd_content() {
		return prod_content;
	}

	public void setProd_content(String prod_content) {
		this.prod_content = prod_content;
	}

	public Date getProd_date() {
		return prod_date;
	}

	public void setProd_date(Date prod_date) {
		this.prod_date = prod_date;
	}

	@Override
	public String toString() {
		return "Product [prod_id=" + prod_id + ", sel_id=" + sel_id + ", prod_name=" + prod_name + ", prod_price="
				+ prod_price + ", prod_readcount=" + prod_readcount + ", category_id=" + category_id + ", prod_bank="
				+ prod_bank + ", prod_account=" + prod_account + ", prod_depositor=" + prod_depositor + ", prod_status="
				+ prod_status + ", prod_fee=" + prod_fee + ", prod_content=" + prod_content + ", prod_date=" + prod_date
				+ "]";
	}


	
}
