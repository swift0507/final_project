package model;

public class Basket {
	private String mem_id;
	private String sel_id;
	private int prod_id;
	private String basket_option;
	private int basket_price;
	private int basket_id;
	
	public Basket() {}

	public Basket(String mem_id, String sel_id, int prod_id, String basket_option, int basket_price, int basket_id) {
		this.mem_id = mem_id;
		this.sel_id = sel_id;
		this.prod_id = prod_id;
		this.basket_option = basket_option;
		this.basket_price = basket_price;
		this.basket_id = basket_id;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
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

	public String getBasket_option() {
		return basket_option;
	}

	public void setBasket_option(String basket_option) {
		this.basket_option = basket_option;
	}

	public int getBasket_price() {
		return basket_price;
	}

	public void setBasket_price(int basket_price) {
		this.basket_price = basket_price;
	}

	public int getBasket_id() {
		return basket_id;
	}

	public void setBasket_id(int basket_id) {
		this.basket_id = basket_id;
	}

	@Override
	public String toString() {
		return "Basket [mem_id=" + mem_id + ", sel_id=" + sel_id + ", prod_id=" + prod_id + ", basket_option="
				+ basket_option + ", basket_price=" + basket_price + ", basket_id=" + basket_id + "]";
	}
	
	
}
