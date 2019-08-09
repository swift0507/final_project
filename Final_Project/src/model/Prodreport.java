package model;

public class Prodreport {
	private int preport_id;
	private int prod_id;
	private String preport_reason;
	private String preport_singo;
	private String preport_psingo;
	private String preport_content;
	private int preport_status;
	
	public Prodreport() {}

	public Prodreport(int preport_id, int prod_id, String preport_reason, String preport_singo, String preport_psingo,
			String preport_content, int preport_status) {
		this.preport_id = preport_id;
		this.prod_id = prod_id;
		this.preport_reason = preport_reason;
		this.preport_singo = preport_singo;
		this.preport_psingo = preport_psingo;
		this.preport_content = preport_content;
		this.preport_status = preport_status;
	}

	public int getPreport_id() {
		return preport_id;
	}

	public void setPreport_id(int preport_id) {
		this.preport_id = preport_id;
	}

	public int getProd_id() {
		return prod_id;
	}

	public void setProd_id(int prod_id) {
		this.prod_id = prod_id;
	}

	public String getPreport_reason() {
		return preport_reason;
	}

	public void setPreport_reason(String preport_reason) {
		this.preport_reason = preport_reason;
	}

	public String getPreport_singo() {
		return preport_singo;
	}

	public void setPreport_singo(String preport_singo) {
		this.preport_singo = preport_singo;
	}

	public String getPreport_psingo() {
		return preport_psingo;
	}

	public void setPreport_psingo(String preport_psingo) {
		this.preport_psingo = preport_psingo;
	}

	public String getPreport_content() {
		return preport_content;
	}

	public void setPreport_content(String preport_content) {
		this.preport_content = preport_content;
	}

	public int getPreport_status() {
		return preport_status;
	}

	public void setPreport_status(int preport_status) {
		this.preport_status = preport_status;
	}

	@Override
	public String toString() {
		return "Prodreport [preport_id=" + preport_id + ", prod_id=" + prod_id + ", preport_reason=" + preport_reason
				+ ", preport_singo=" + preport_singo + ", preport_psingo=" + preport_psingo + ", preport_content="
				+ preport_content + ", preport_status=" + preport_status + "]";
	}
	
	
}
