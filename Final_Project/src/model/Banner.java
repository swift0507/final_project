package model;

public class Banner {
	private String banner_pict;
	private String banner_url;
	private int banner_order;
	
	public Banner() {}

	public Banner(String banner_pict, String banner_url, int banner_order) {
		this.banner_pict = banner_pict;
		this.banner_url = banner_url;
		this.banner_order = banner_order;
	}

	public String getBanner_pict() {
		return banner_pict;
	}

	public void setBanner_pict(String banner_pict) {
		this.banner_pict = banner_pict;
	}

	public String getBanner_url() {
		return banner_url;
	}

	public void setBanner_url(String banner_url) {
		this.banner_url = banner_url;
	}

	public int getBanner_order() {
		return banner_order;
	}

	public void setBanner_order(int banner_order) {
		this.banner_order = banner_order;
	}

	@Override
	public String toString() {
		return "Banner [banner_pict=" + banner_pict + ", banner_url=" + banner_url + ", banner_order=" + banner_order
				+ "]";
	}
	
	
}
