package model;

import java.sql.Date;

public class QnA {
	private int qna_id;
	private int prod_id;
	private String mem_id;
	private String qna_content;
	private Date qna_date;
	private int qna_answer;
	private int qna_secret;
	private QnAComment qnacomment;
	
	public QnA() {}

	public QnA(int qna_id, int prod_id, String mem_id, String qna_content, Date qna_date, int qna_answer,
			int qna_secret, QnAComment qnacomment) {
		this.qna_id = qna_id;
		this.prod_id = prod_id;
		this.mem_id = mem_id;
		this.qna_content = qna_content;
		this.qna_date = qna_date;
		this.qna_answer = qna_answer;
		this.qna_secret = qna_secret;
		this.qnacomment = qnacomment;
	}

	public int getQna_id() {
		return qna_id;
	}

	public void setQna_id(int qna_id) {
		this.qna_id = qna_id;
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

	public String getQna_content() {
		return qna_content;
	}

	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}

	public Date getQna_date() {
		return qna_date;
	}

	public void setQna_date(Date qna_date) {
		this.qna_date = qna_date;
	}

	public int getQna_answer() {
		return qna_answer;
	}

	public void setQna_answer(int qna_answer) {
		this.qna_answer = qna_answer;
	}

	public int getQna_secret() {
		return qna_secret;
	}

	public void setQna_secret(int qna_secret) {
		this.qna_secret = qna_secret;
	}

	public QnAComment getQnacomment() {
		return qnacomment;
	}

	public void setQnacomment(QnAComment qnacomment) {
		this.qnacomment = qnacomment;
	}

	@Override
	public String toString() {
		return "QnA [qna_id=" + qna_id + ", prod_id=" + prod_id + ", mem_id=" + mem_id + ", qna_content=" + qna_content
				+ ", qna_date=" + qna_date + ", qna_answer=" + qna_answer + ", qna_secret=" + qna_secret
				+ ", qnacomment=" + qnacomment + "]";
	}
	
}
