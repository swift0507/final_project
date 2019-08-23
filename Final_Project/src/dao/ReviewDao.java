package dao;

import java.util.HashMap;
import java.util.List;

import model.Review;

public interface ReviewDao {

	//상품아이디, 페이지별 후기 가져오기
	public List<Review> selectById(HashMap<String, Object> params);

	//상품별 후기 갯수
	public int getCountById(int prod_id);
}
