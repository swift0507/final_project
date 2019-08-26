package dao;

import java.util.HashMap;
import java.util.List;

import model.QnA;

public interface QnaDao {

	//상품아이디, 페이지별 Q&A 가져오기
	public List<QnA> selectById(HashMap<String, Object> params);

	//상품별 Q&A 갯수
	public int getCountById(int prod_id);
	
	//Q&A 답변 작성시 Q&A 답변상태 업데이트
	public void updateQnaAnswerById(int qna_id);

	public int deleteQnAById(int qna_id);

}
