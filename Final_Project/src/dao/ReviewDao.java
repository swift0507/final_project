package dao;

import java.util.List;

import model.Review;

public interface ReviewDao {
	
	public int insertReview(Review review);
	public int updateReview(Review review);
	public int deleteReview(int review_id);
	public List<Review> selectAll();
}
