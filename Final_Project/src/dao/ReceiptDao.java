package dao;

import java.util.List;

import model.Receipt;

public interface ReceiptDao {
	public List<Receipt> selectReceiptListByMember(String mem_id);
	public int insertReceipt(Receipt receipt);
	
}
