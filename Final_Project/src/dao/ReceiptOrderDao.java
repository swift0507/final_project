package dao;

import java.util.List;

import model.ReceiptOrder;

public interface ReceiptOrderDao {
	
	public void insertReceiptOrder(ReceiptOrder receipitOrder);
	public List<ReceiptOrder> getReceiptOrderList(int receipt_id);
	public int getOrderQuantitySum(int prod_id);
	public int getOrderPriceSum(int prod_id);
}
