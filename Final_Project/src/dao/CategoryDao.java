package dao;

import java.util.List;

import model.Category;

public interface CategoryDao {
	
	public List<Category> getCategoryList();
	
	public String selectNameById(int category_id);
}
