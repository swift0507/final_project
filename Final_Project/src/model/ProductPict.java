package model;

public class ProductPict {
	private int prod_id;
	private String prod_pict;
	private int prod_order;
	
	public ProductPict() {}

	public ProductPict(int prod_id, String prod_pict, int prod_order) {
		this.prod_id = prod_id;
		this.prod_pict = prod_pict;
		this.prod_order = prod_order;
	}

	public int getProd_id() {
		return prod_id;
	}

	public void setProd_id(int prod_id) {
		this.prod_id = prod_id;
	}

	public String getProd_pict() {
		return prod_pict;
	}

	public void setProd_pict(String prod_pict) {
		this.prod_pict = prod_pict;
	}

	public int getProd_order() {
		return prod_order;
	}

	public void setProd_order(int prod_order) {
		this.prod_order = prod_order;
	}

	@Override
	public String toString() {
		return "ProductPict [prod_id=" + prod_id + ", prod_pict=" + prod_pict + ", prod_order=" + prod_order + "]";
	}

}
