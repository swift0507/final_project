package dao;

import java.util.HashMap;
import java.util.List;

import model.Review;

public interface ReviewDao {

	public int insertReview(Review review);
	public int updateReview(Review review);
	public int deleteReview(int review_id);
	public Review selectOne(int review_id);
	public List<Review> selectAll(HashMap<String, Object> params);
	public int getCount(); //전체 게시물 수 구하기

	//상품아이디, 페이지별 후기 가져오기
	public List<Review> selectById(HashMap<String, Object> params);

	//상품별 후기 갯수
	public int getCountById(int prod_id);
	//prod_Id로 후기가져오기
	public List<Integer> selectReview(int prod_id);

	//나의 후기 가져오기
	public List<Review> getmyReview(HashMap<String, Object> params);

	public List<Review> selectByStatus(int prod_id);
	
	//후기 작성 시 구매한 상품 가져오기
	public List<HashMap<String, Object>> getReviewProd(String mem_id); //여기여기여기여기
	
	//후기 작성 시 상품 아이디 가져오기
	public int getProdid(int receiptorder_id);

	//후기 작성 시 상품 아이디 가져오기
	public String getProdname(int prod_id);
	
}
