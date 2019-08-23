package dao;

<<<<<<< HEAD
import java.util.List;
=======
import java.util.HashMap;
import java.util.List;

import model.Review;

public interface ReviewDao {
>>>>>>> branch 'master' of https://github.com/swift0507/final_project.git

<<<<<<< HEAD
import model.Review;

public interface ReviewDao {
	
	public int insertReview(Review review);
	public int updateReview(Review review);
	public int deleteReview(int review_id);
	public List<Review> selectAll();
=======
	//상품아이디, 페이지별 후기 가져오기
	public List<Review> selectById(HashMap<String, Object> params);

	//상품별 후기 갯수
	public int getCountById(int prod_id);
>>>>>>> branch 'master' of https://github.com/swift0507/final_project.git
}
