package cn.xhu.softwareengineering.bean;

import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Order {
	private int order_id;
	private PsychoUser user;
	private Object orderobj;
	private List<Order_Good> objList;
	private int order_level;
	private int type;
	private CustomerAddr addr;
	private int addr_id;
	private String out_trade_no;
	private float order_total_amount;
	@JsonFormat(locale="zh", timezone="GMT", pattern="yyyy-MM-dd HH:mm:ss")
	private Date order_createtime;
	
	
	public Order() {
		super();
	}

	

	public Order(int order_id, PsychoUser user, Object orderobj, List<Order_Good> objList, int order_level, int type,
			CustomerAddr addr, int addr_id, String out_trade_no, float order_total_amount, Date order_createtime) {
		super();
		this.order_id = order_id;
		this.user = user;
		this.orderobj = orderobj;
		this.objList = objList;
		this.order_level = order_level;
		this.type = type;
		this.addr = addr;
		this.addr_id = addr_id;
		this.out_trade_no = out_trade_no;
		this.order_total_amount = order_total_amount;
		this.order_createtime = order_createtime;
	}



	public Object getOrderobj() {
		return orderobj;
	}



	public void setOrderobj(Object orderobj) {
		this.orderobj = orderobj;
	}



	public Date getOrder_createtime() {
		return order_createtime;
	}


	public void setOrder_createtime(Date order_createtime) {
		this.order_createtime = order_createtime;
	}





	public int getAddr_id() {
		return addr_id;
	}





	public void setAddr_id(int addr_id) {
		this.addr_id = addr_id;
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



	

	public List<Order_Good> getObjList() {
		return objList;
	}



	public void setObjList(List<Order_Good> objList) {
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
