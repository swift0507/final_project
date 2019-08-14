package dao;

import model.Product;

public interface ProductDao {
	public Product selectOne(int prod_id);
}
