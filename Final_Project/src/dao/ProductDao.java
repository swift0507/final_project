package dao;

import java.util.List;

import model.Product;

public interface ProductDao {
	public Product selectOne(int prod_id);
	public void updateReadCount(int prod_id);
	public List<Product> selectByReadCount();
	public List<Product> selectByLatest();
}
