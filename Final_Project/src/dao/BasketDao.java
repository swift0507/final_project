package dao;

import java.util.HashMap;
import java.util.List;

import model.Basket;

public interface BasketDao {
	
	public int countBasket(String mem_id);
	public List<String> groupBySeller(String mem_id);
	public List<Basket> selectBySeller(HashMap<String, String> param);
}
