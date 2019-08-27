package dao;

import java.util.List;

import model.OptionDetail;

public interface OptionDetailDao {

	List<OptionDetail> selectByOption(int opt_id);
	public int insertOptionDetail(OptionDetail detail);
}
