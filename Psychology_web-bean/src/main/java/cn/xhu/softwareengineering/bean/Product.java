package cn.xhu.softwareengineering.bean;

public class Product {
	private int product_id;
	private int of_goodid;
	private int product_size;
	private int product_color;
	private int product_style;
	private int product_num;
	public Product(int product_id, int of_goodid, int product_size, int product_color, int product_style,
			int product_num) {
		super();
		this.product_id = product_id;
		this.of_goodid = of_goodid;
		this.product_size = product_size;
		this.product_color = product_color;
		this.product_style = product_style;
		this.product_num = product_num;
	}
	
	
	
	public Product() {
		super();
	}

	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getOf_goodid() {
		return of_goodid;
	}
	public void setOf_goodid(int of_goodid) {
		this.of_goodid = of_goodid;
	}
	public int getProduct_size() {
		return product_size;
	}
	public void setProduct_size(int product_size) {
		this.product_size = product_size;
	}
	public int getProduct_color() {
		return product_color;
	}
	public void setProduct_color(int product_color) {
		this.product_color = product_color;
	}
	public int getProduct_style() {
		return product_style;
	}
	public void setProduct_style(int product_style) {
		this.product_style = product_style;
	}
	public int getProduct_num() {
		return product_num;
	}
	public void setProduct_num(int product_num) {
		this.product_num = product_num;
	}
	
	
	
}
