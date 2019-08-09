package model;

public class OptionDetail {
	private int opt_id;
	private int optd_id;
	private String optd_choice;
	private int optd_price;
	private int optd_quantity;
	
	public OptionDetail() {}

	public OptionDetail(int opt_id, int optd_id, String optd_choice, int optd_price, int optd_quantity) {
		this.opt_id = opt_id;
		this.optd_id = optd_id;
		this.optd_choice = optd_choice;
		this.optd_price = optd_price;
		this.optd_quantity = optd_quantity;
	}

	public int getOpt_id() {
		return opt_id;
	}

	public void setOpt_id(int opt_id) {
		this.opt_id = opt_id;
	}

	public int getOptd_id() {
		return optd_id;
	}

	public void setOptd_id(int optd_id) {
		this.optd_id = optd_id;
	}

	public String getOptd_choice() {
		return optd_choice;
	}

	public void setOptd_choice(String optd_choice) {
		this.optd_choice = optd_choice;
	}

	public int getOptd_price() {
		return optd_price;
	}

	public void setOptd_price(int optd_price) {
		this.optd_price = optd_price;
	}

	public int getOptd_quantity() {
		return optd_quantity;
	}

	public void setOptd_quantity(int optd_quantity) {
		this.optd_quantity = optd_quantity;
	}

	@Override
	public String toString() {
		return "OptionDetail [opt_id=" + opt_id + ", optd_id=" + optd_id + ", optd_choice=" + optd_choice
				+ ", optd_price=" + optd_price + ", optd_quantity=" + optd_quantity + "]";
	}
		
}
