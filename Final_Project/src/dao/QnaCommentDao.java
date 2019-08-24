package dao;

import model.QnAComment;

public interface QnaCommentDao {

	//Q&A 답변 가져오기
	public QnAComment selectByQnAId(int qna_id);
}
