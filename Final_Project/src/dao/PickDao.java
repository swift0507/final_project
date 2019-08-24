package dao;

import java.util.List;

import model.Pick;
import model.Product;

public interface PickDao {
	
	public List<Product> selectPickList(String mem_id);
}
