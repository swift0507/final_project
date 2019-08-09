package model;

public class Delivery {
	private int receipt_id;
	private String del_number;
	private String del_courier;
	
	public Delivery() {}

	public Delivery(int receipt_id, String del_number, String del_courier) {
		this.receipt_id = receipt_id;
		this.del_number = del_number;
		this.del_courier = del_courier;
	}

	public int getReceipt_id() {
		return receipt_id;
	}

	public void setReceipt_id(int receipt_id) {
		this.receipt_id = receipt_id;
	}

	public String getDel_number() {
		return del_number;
	}

	public void setDel_number(String del_number) {
		this.del_number = del_number;
	}

	public String getDel_courier() {
		return del_courier;
	}

	public void setDel_courier(String del_courier) {
		this.del_courier = del_courier;
	}

	@Override
	public String toString() {
		return "Delivery [receipt_id=" + receipt_id + ", del_number=" + del_number + ", del_courier=" + del_courier
				+ "]";
	}
	
	
}
