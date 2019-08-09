package model;

import java.sql.Date;

public class Answer {
	private int review_id;
	private String answer_content;
	private Date answer_date;
	
	public Answer() {}

	public Answer(int review_id, String answer_content, Date answer_date) {
		this.review_id = review_id;
		this.answer_content = answer_content;
		this.answer_date = answer_date;
	}

	public int getReview_id() {
		return review_id;
	}

	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}

	public String getAnswer_content() {
		return answer_content;
	}

	public void setAnswer_content(String answer_content) {
		this.answer_content = answer_content;
	}

	public Date getAnswer_date() {
		return answer_date;
	}

	public void setAnswer_date(Date answer_date) {
		this.answer_date = answer_date;
	}

	@Override
	public String toString() {
		return "Answer [review_id=" + review_id + ", answer_content=" + answer_content + ", answer_date=" + answer_date
				+ "]";
	}
	
}
