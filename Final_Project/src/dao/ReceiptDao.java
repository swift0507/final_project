package dao;

import java.util.HashMap;
import java.util.List;

import model.Receipt;

public interface ReceiptDao {
	public List<Receipt> selectReceiptListByMember(String mem_id);
	public List<Receipt> selectReceiptListBySeller(String sel_id);
	public int insertReceipt(Receipt receipt);
	public Receipt selectReceiptByReceiptId(int receipt_id);
	public void finalizeOrder(int receipt_id);
	public void changeOrder(int receipt_id);
	public void cancelOrder(int receipt_id);
	public Integer todaySales(HashMap<String, Object> param);
	public Integer todayOrder(HashMap<String, Object> param);
}
