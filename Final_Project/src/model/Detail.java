package model;

public class Detail {
	private int prod_id;
	private int detail_id;
	private String detail_name;
	private String detail_explain;
	
	public Detail() {}

	public Detail(int prod_id, int detail_id, String detail_name, String detail_explain) {
		this.prod_id = prod_id;
		this.detail_id = detail_id;
		this.detail_name = detail_name;
		this.detail_explain = detail_explain;
	}

	public int getProd_id() {
		return prod_id;
	}

	public void setProd_id(int prod_id) {
		this.prod_id = prod_id;
	}

	public int getDetail_id() {
		return detail_id;
	}

	public void setDetail_id(int detail_id) {
		this.detail_id = detail_id;
	}

	public String getDetail_name() {
		return detail_name;
	}

	public void setDetail_name(String detail_name) {
		this.detail_name = detail_name;
	}

	public String getDetail_explain() {
		return detail_explain;
	}

	public void setDetail_explain(String detail_explain) {
		this.detail_explain = detail_explain;
	}

	@Override
	public String toString() {
		return "Detail [prod_id=" + prod_id + ", detail_id=" + detail_id + ", detail_name=" + detail_name
				+ ", detail_explain=" + detail_explain + "]";
	}
	
	
}
