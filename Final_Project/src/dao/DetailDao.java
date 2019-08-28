package dao;

import java.util.List;

import model.Detail;

public interface DetailDao {

	public void insertDetail(Detail detail);

	public List<Detail> selectDetailByProdId(int prod_id);
}
