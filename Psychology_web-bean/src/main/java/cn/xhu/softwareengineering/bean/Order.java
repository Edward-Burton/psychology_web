package cn.xhu.softwareengineering.bean;

import java.util.List;

public class Order {
	private int order_id;
	private PsychoUser user;
	private Object orderobj;
	private List<Integer> objList;
	private int order_level;
	private int type;
	private CustomerAddr addr;
	private String out_trade_no;
	private float order_total_amount;
	
	
	
	public Order() {
		super();
	}
	
	
	
	public Order(int order_id, PsychoUser user, Object orderobj, List<Integer> objList, int order_level, int type,
			CustomerAddr addr, String out_trade_no, float order_total_amount) {
		super();
		this.order_id = order_id;
		this.user = user;
		this.orderobj = orderobj;
		this.objList = objList;
		this.order_level = order_level;
		this.type = type;
		this.addr = addr;
		this.out_trade_no = out_trade_no;
		this.order_total_amount = order_total_amount;
	}

	public float getOrder_total_amount() {
		return order_total_amount;
	}



	public void setOrder_total_amount(float order_total_amount) {
		this.order_total_amount = order_total_amount;
	}



	public void setOut_trade_no(String out_trade_no) {
		this.out_trade_no = out_trade_no;
	}



	public List<Integer> getObjList() {
		return objList;
	}


	public void setObjList(List<Integer> objList) {
		this.objList = objList;
	}


	public CustomerAddr getAddr() {
		return addr;
	}


	public void setAddr(CustomerAddr addr) {
		this.addr = addr;
	}


	public String getOut_trade_no() {
		/*
		 * String orderId =(System.currentTimeMillis() +
		 * "").substring(1)+(System.nanoTime() + "").substring(6, 10);
		 */
		return out_trade_no;
	}


	public void setOut_trade_no() {
		this.out_trade_no = (System.currentTimeMillis() + "").substring(1)+(System.nanoTime() + "").substring(6, 10);;
	}


	public int getOrder_id() {
		return order_id;
	}



	public void setOrder_id(int order_id) {
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
