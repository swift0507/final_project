package model;

public class ReceiptOrder {
	private int receipt_id;
	private String sel_id;
	private int prod_id;
	private String mem_id;
	private String order_opt;
	private int order_quantity;
	private int order_price;
	
	public ReceiptOrder() {}

	public ReceiptOrder(int receipt_id, String sel_id, int prod_id, String mem_id, String order_opt, int order_quantity,
			int order_price) {
		this.receipt_id = receipt_id;
		this.sel_id = sel_id;
		this.prod_id = prod_id;
		this.mem_id = mem_id;
		this.order_opt = order_opt;
		this.order_quantity = order_quantity;
		this.order_price = order_price;
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

	public int getProd_id() {
		return prod_id;
	}

	public void setProd_id(int prod_id) {
		this.prod_id = prod_id;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getOrder_opt() {
		return order_opt;
	}

	public void setOrder_opt(String order_opt) {
		this.order_opt = order_opt;
	}

	public int getOrder_quantity() {
		return order_quantity;
	}

	public void setOrder_quantity(int order_quantity) {
		this.order_quantity = order_quantity;
	}

	public int getOrder_price() {
		return order_price;
	}

	public void setOrder_price(int order_price) {
		this.order_price = order_price;
	}

	@Override
	public String toString() {
		return "ReceiptOrder [receipt_id=" + receipt_id + ", sel_id=" + sel_id + ", prod_id=" + prod_id + ", mem_id="
				+ mem_id + ", order_opt=" + order_opt + ", order_quantity=" + order_quantity + ", order_price="
				+ order_price + "]";
	}
	
	
}
