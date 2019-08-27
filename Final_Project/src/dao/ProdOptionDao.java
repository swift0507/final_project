package dao;

import java.util.List;

import model.ProdOption;

public interface ProdOptionDao {

	List<ProdOption> selectByProd(int prod_id);
	public int insertProdOption(ProdOption option);
}
