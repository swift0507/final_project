package dao;

import model.Answer;

public interface AnswerDao {

	//후기 답변 가져오기
	public Answer selectByReviewId(int review_id);
}
