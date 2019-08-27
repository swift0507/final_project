package dao;

import java.util.HashMap;
import java.util.List;

import model.Product;

public interface ProductDao {
	public Product selectOne(int prod_id);
	public void updateReadCount(int prod_id);
	public List<Product> selectByReadCount(HashMap<String, Object> params);
	public List<Product> selectByLatest(HashMap<String, Object> params);
	public List<Product> selectByKeyword(HashMap<String, Object> params);
	
	public int getCount();
	public List<Product> selectByReadCountForMain();
	public List<Product> selectByLatestForMain();
	public List<Integer> selectProdIds(String sel_id);
	public List<Product> selectForSeller(HashMap<String, Object> params);
	public int insertProd(Product p);

}
