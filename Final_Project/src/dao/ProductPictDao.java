package dao;

import java.util.List;

import model.ProductPict;

public interface ProductPictDao {

	public void insertProductPict(ProductPict pict);
	public List<ProductPict> getProductPict(int prod_id);
}
