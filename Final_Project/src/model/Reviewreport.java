package model;

public class Reviewreport {
	private int rreport_id;
	private int review_id;
	private String rreport_reason;
	private String rreport_singo;
	private String rreport_psingo;
	private String rreport_content;
	private int rreport_status;
	
	public Reviewreport() {}

	public Reviewreport(int rreport_id, int review_id, String rreport_reason, String rreport_singo,
			String rreport_psingo, String rreport_content, int rreport_status) {
		this.rreport_id = rreport_id;
		this.review_id = review_id;
		this.rreport_reason = rreport_reason;
		this.rreport_singo = rreport_singo;
		this.rreport_psingo = rreport_psingo;
		this.rreport_content = rreport_content;
		this.rreport_status = rreport_status;
	}

	public int getRreport_id() {
		return rreport_id;
	}

	public void setRreport_id(int rreport_id) {
		this.rreport_id = rreport_id;
	}

	public int getReview_id() {
		return review_id;
	}

	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}

	public String getRreport_reason() {
		return rreport_reason;
	}

	public void setRreport_reason(String rreport_reason) {
		this.rreport_reason = rreport_reason;
	}

	public String getRreport_singo() {
		return rreport_singo;
	}

	public void setRreport_singo(String rreport_singo) {
		this.rreport_singo = rreport_singo;
	}

	public String getRreport_psingo() {
		return rreport_psingo;
	}

	public void setRreport_psingo(String rreport_psingo) {
		this.rreport_psingo = rreport_psingo;
	}

	public String getRreport_content() {
		return rreport_content;
	}

	public void setRreport_content(String rreport_content) {
		this.rreport_content = rreport_content;
	}

	public int getRreport_status() {
		return rreport_status;
	}

	public void setRreport_status(int rreport_status) {
		this.rreport_status = rreport_status;
	}

	@Override
	public String toString() {
		return "Reviewreport [rreport_id=" + rreport_id + ", review_id=" + review_id + ", rreport_reason="
				+ rreport_reason + ", rreport_singo=" + rreport_singo + ", rreport_psingo=" + rreport_psingo
				+ ", rreport_content=" + rreport_content + ", rreport_status=" + rreport_status + "]";
	}
	
	
}
