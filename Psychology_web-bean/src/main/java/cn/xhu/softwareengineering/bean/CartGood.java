package cn.xhu.softwareengineering.bean;

public class CartGood {
	private int cart_id;
	private int cart_user_id;
	private SKU sku;
	private int cart_good_num;
	
	public CartGood() {
		super();
	}
	public CartGood(int cart_id, int cart_user_id, SKU sku, int cart_good_num) {
		super();
		this.cart_id = cart_id;
		this.cart_user_id = cart_user_id;
		this.sku = sku;
		this.cart_good_num = cart_good_num;
	}
	
	
	public int getCart_id() {
		return cart_id;
	}
	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}
	public int getCart_user_id() {
		return cart_user_id;
	}
	public void setCart_user_id(int cart_user_id) {
		this.cart_user_id = cart_user_id;
	}
	public SKU getSku() {
		return sku;
	}
	public void setSku(SKU sku) {
		this.sku = sku;
	}
	public int getCart_good_num() {
		return cart_good_num;
	}
	public void setCart_good_num(int cart_good_num) {
		this.cart_good_num = cart_good_num;
	}
	
	

}
