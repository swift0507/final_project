package dao;

import java.util.List;

import model.OptionDetail;

public interface OptionDetailDao {

	public List<OptionDetail> selectByOption(int opt_id);

	public int getOptionDQuantitySum(int prod_id);

	public int insertOptionDetail(OptionDetail detail);

}
