package cn.xhu.softwareengineering.bean;

public class Order_Good {
	private SKU sku;
	private int order_sku_num;
	private int card_id;
	
	public Order_Good() {
		super();
	}
	
	
	
	public Order_Good(SKU sku, int order_sku_num, int card_id) {
		super();
		this.sku = sku;
		this.order_sku_num = order_sku_num;
		this.card_id = card_id;
	}

	public int getCard_id() {
		return card_id;
	}
	public void setCard_id(int card_id) {
		this.card_id = card_id;
	}
	public SKU getSku() {
		return sku;
	}
	public void setSku(SKU sku) {
		this.sku = sku;
	}
	public int getOrder_sku_num() {
		return order_sku_num;
	}
	public void setOrder_sku_num(int order_sku_num) {
		this.order_sku_num = order_sku_num;
	}
	
	
}
