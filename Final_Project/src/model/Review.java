package model;

import java.sql.Date;

public class Review {
	private int review_id;
	private int prod_id;
	private String prod_name;
	private String review_writer;
	private int review_score;
	private String review_content;
	private Date review_date;
	private int review_answer;
	private String review_pict;
	private int review_status;
	private Answer answer;

	public Review() {}

	public Review(int review_id, int prod_id, String prod_name, String review_writer, int review_score,
			String review_content, Date review_date, int review_answer, String review_pict, int review_status,
			Answer answer) {
		this.review_id = review_id;
		this.prod_id = prod_id;
		this.prod_name = prod_name;
		this.review_writer = review_writer;
		this.review_score = review_score;
		this.review_content = review_content;
		this.review_date = review_date;
		this.review_answer = review_answer;
		this.review_pict = review_pict;
		this.review_status = review_status;
		this.answer = answer;
	}

	public int getReview_id() {
		return review_id;
	}

	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}

	public int getProd_id() {
		return prod_id;
	}

	public void setProd_id(int prod_id) {
		this.prod_id = prod_id;
	}

	public String getProd_name() {
		return prod_name;
	}

	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}

	public String getReview_writer() {
		return review_writer;
	}

	public void setReview_writer(String review_writer) {
		this.review_writer = review_writer;
	}

	public int getReview_score() {
		return review_score;
	}

	public void setReview_score(int review_score) {
		this.review_score = review_score;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public Date getReview_date() {
		return review_date;
	}

	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}

	public int getReview_answer() {
		return review_answer;
	}

	public void setReview_answer(int review_answer) {
		this.review_answer = review_answer;
	}

	public String getReview_pict() {
		return review_pict;
	}

	public void setReview_pict(String review_pict) {
		this.review_pict = review_pict;
	}

	public int getReview_status() {
		return review_status;
	}

	public void setReview_status(int review_status) {
		this.review_status = review_status;
	}

	public Answer getAnswer() {
		return answer;
	}

	public void setAnswer(Answer answer) {
		this.answer = answer;
	}

	@Override
	public String toString() {
		return "Review [review_id=" + review_id + ", prod_id=" + prod_id + ", prod_name=" + prod_name
				+ ", review_writer=" + review_writer + ", review_score=" + review_score + ", review_content="
				+ review_content + ", review_date=" + review_date + ", review_answer=" + review_answer
				+ ", review_pict=" + review_pict + ", review_status=" + review_status + ", answer=" + answer + "]";
	}
	
}
