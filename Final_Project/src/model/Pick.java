package model;

public class Pick {
	private int prod_id;
	private String mem_id;
	
	public Pick() {}

	public Pick(int prod_id, String mem_id) {
		this.prod_id = prod_id;
		this.mem_id = mem_id;
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

	@Override
	public String toString() {
		return "Pick [prod_id=" + prod_id + ", mem_id=" + mem_id + "]";
	}
	
	
}
