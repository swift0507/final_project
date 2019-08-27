package dao;

import java.util.HashMap;
import java.util.List;

import model.OptionDetail;

public interface OptionDetailDao {

	List<OptionDetail> selectByOption(int opt_id);
<<<<<<< HEAD
	int getOptionDQuantitySum(int prod_id);

=======
	public int insertOptionDetail(OptionDetail detail);
>>>>>>> branch 'master' of https://github.com/swift0507/final_project.git
}
