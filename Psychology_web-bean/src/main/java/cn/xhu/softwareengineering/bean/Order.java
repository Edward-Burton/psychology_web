package cn.xhu.softwareengineering.bean;

public class Order {
	private String order_id;
	private PsychoUser user;
	private Object orderobj;
	private int order_level;
	private int type;
	
	
	
	public Order() {
		super();
	}



	public Order(String order_id, PsychoUser user, Object orderobj, int order_level, int type) {
		super();
		this.order_id = order_id;
		this.user = user;
		this.orderobj = orderobj;
		this.order_level = order_level;
		this.type = type;
	}



	public String getOrder_id() {
		return order_id;
	}



	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}



	public PsychoUser getUser() {
		return user;
	}



	public void setUser(PsychoUser user) {
		this.user = user;
	}



	public Object getOrderobj() {
		return orderobj;
	}



	public void setOrderobj(Object orderobj) {
		this.orderobj = orderobj;
	}



	public int getOrder_level() {
		return order_level;
	}



	public void setOrder_level(int order_level) {
		this.order_level = order_level;
	}



	public int getType() {
		return type;
	}



	public void setType(int type) {
		this.type = type;
	}
	
	
	
	
	
}
