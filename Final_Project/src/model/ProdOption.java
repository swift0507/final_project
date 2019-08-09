package model;

import java.util.List;

public class ProdOption {
	private int opt_id;
	private int prod_id;
	private String opt_name;
	private int opt_order;
	private List<OptionDetail> optiondetail;
	
	public ProdOption() {}

	public ProdOption(int opt_id, int prod_id, String opt_name, int opt_order, List<OptionDetail> optiondetail) {
		this.opt_id = opt_id;
		this.prod_id = prod_id;
		this.opt_name = opt_name;
		this.opt_order = opt_order;
		this.optiondetail = optiondetail;
	}

	public int getOpt_id() {
		return opt_id;
	}

	public void setOpt_id(int opt_id) {
		this.opt_id = opt_id;
	}

	public int getProd_id() {
		return prod_id;
	}

	public void setProd_id(int prod_id) {
		this.prod_id = prod_id;
	}

	public String getOpt_name() {
		return opt_name;
	}

	public void setOpt_name(String opt_name) {
		this.opt_name = opt_name;
	}

	public int getOpt_order() {
		return opt_order;
	}

	public void setOpt_order(int opt_order) {
		this.opt_order = opt_order;
	}

	public List<OptionDetail> getOptiondetail() {
		return optiondetail;
	}

	public void setOptiondetail(List<OptionDetail> optiondetail) {
		this.optiondetail = optiondetail;
	}

	@Override
	public String toString() {
		return "ProdOption [opt_id=" + opt_id + ", prod_id=" + prod_id + ", opt_name=" + opt_name + ", opt_order="
				+ opt_order + ", optiondetail=" + optiondetail + "]";
	}

}
