package model;

public class Seller {
	private String sel_id;
	private String sel_email;
	private String sel_phone;
	private String sel_bank;
	private String sel_account;
	private String sel_depositor;
	private String sel_pict;
	private int sel_fee;
	private int sel_free;
	private int sel_addcost;
	private int sel_bancount;
	
	public Seller() {}

	public Seller(String sel_id, String sel_email, String sel_phone, String sel_bank, String sel_account,
			String sel_depositor, String sel_pict, int sel_fee, int sel_free, int sel_addcost, int sel_ban) {
		this.sel_id = sel_id;
		this.sel_email = sel_email;
		this.sel_phone = sel_phone;
		this.sel_bank = sel_bank;
		this.sel_account = sel_account;
		this.sel_depositor = sel_depositor;
		this.sel_pict = sel_pict;
		this.sel_fee = sel_fee;
		this.sel_free = sel_free;
		this.sel_addcost = sel_addcost;
		this.sel_bancount = sel_ban;
	}

	public String getSel_id() {
		return sel_id;
	}

	public void setSel_id(String sel_id) {
		this.sel_id = sel_id;
	}

	public String getSel_email() {
		return sel_email;
	}

	public void setSel_email(String sel_email) {
		this.sel_email = sel_email;
	}

	public String getSel_phone() {
		return sel_phone;
	}

	public void setSel_phone(String sel_phone) {
		this.sel_phone = sel_phone;
	}

	public String getSel_bank() {
		return sel_bank;
	}

	public void setSel_bank(String sel_bank) {
		this.sel_bank = sel_bank;
	}

	public String getSel_account() {
		return sel_account;
	}

	public void setSel_account(String sel_account) {
		this.sel_account = sel_account;
	}

	public String getSel_depositor() {
		return sel_depositor;
	}

	public void setSel_depositor(String sel_depositor) {
		this.sel_depositor = sel_depositor;
	}

	public String getSel_pict() {
		return sel_pict;
	}

	public void setSel_pict(String sel_pict) {
		this.sel_pict = sel_pict;
	}

	public int getSel_fee() {
		return sel_fee;
	}

	public void setSel_fee(int sel_fee) {
		this.sel_fee = sel_fee;
	}

	public int getSel_free() {
		return sel_free;
	}

	public void setSel_free(int sel_free) {
		this.sel_free = sel_free;
	}

	public int getSel_addcost() {
		return sel_addcost;
	}

	public void setSel_addcost(int sel_addcost) {
		this.sel_addcost = sel_addcost;
	}

	public int getSel_ban() {
		return sel_bancount;
	}

	public void setSel_ban(int sel_ban) {
		this.sel_bancount = sel_ban;
	}

	@Override
	public String toString() {
		return "Seller [sel_id=" + sel_id + ", sel_email=" + sel_email + ", sel_phone=" + sel_phone + ", sel_bank="
				+ sel_bank + ", sel_account=" + sel_account + ", sel_depositor=" + sel_depositor + ", sel_pict="
				+ sel_pict + ", sel_fee=" + sel_fee + ", sel_free=" + sel_free + ", sel_addcost=" + sel_addcost
				+ ", sel_ban=" + sel_bancount + "]";
	}
	
}
