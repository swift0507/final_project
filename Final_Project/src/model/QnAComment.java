package model;

import java.sql.Date;

public class QnAComment {
	private int qna_id;
	private String comm_content;
	private Date comm_date;
	
	public QnAComment() {}

	public QnAComment(int qna_id, String comm_content, Date comm_date) {
		this.qna_id = qna_id;
		this.comm_content = comm_content;
		this.comm_date = comm_date;
	}

	public int getQna_id() {
		return qna_id;
	}

	public void setQna_id(int qna_id) {
		this.qna_id = qna_id;
	}

	public String getComm_content() {
		return comm_content;
	}

	public void setComm_content(String comm_content) {
		this.comm_content = comm_content;
	}

	public Date getComm_date() {
		return comm_date;
	}

	public void setComm_date(Date comm_date) {
		this.comm_date = comm_date;
	}

	@Override
	public String toString() {
		return "QnAComment [qna_id=" + qna_id + ", comm_content=" + comm_content + ", comm_date=" + comm_date + "]";
	}
	
	
}
