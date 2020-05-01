package cn.xhu.softwareengineering.bean;

import java.util.Date;
import java.util.List;

public class PsychoGood {
	private int good_id;
	private String good_name;
	private String good_description;
	private float good_price;
	private Date good_sale_time;
	private List<GoodAttribute> goodFeatureList;
	private List<String> goodPicList;
	
	
	public PsychoGood() {
		super();
	}


	public PsychoGood(int good_id, String good_name, String good_description, float good_price, Date good_sale_time,
			List<GoodAttribute> goodFeatureList, List<String> goodPicList) {
		super();
		this.good_id = good_id;
		this.good_name = good_name;
		this.good_description = good_description;
		this.good_price = good_price;
		this.good_sale_time = good_sale_time;
		this.goodFeatureList = goodFeatureList;
		this.goodPicList = goodPicList;
	}


	public int getGood_id() {
		return good_id;
	}


	public void setGood_id(int good_id) {
		this.good_id = good_id;
	}


	public String getGood_name() {
		return good_name;
	}


	public void setGood_name(String good_name) {
		this.good_name = good_name;
	}


	public String getGood_description() {
		return good_description;
	}


	public void setGood_description(String good_description) {
		this.good_description = good_description;
	}


	public float getGood_price() {
		return good_price;
	}


	public void setGood_price(float good_price) {
		this.good_price = good_price;
	}


	public Date getGood_sale_time() {
		return good_sale_time;
	}


	public void setGood_sale_time(Date good_sale_time) {
		this.good_sale_time = good_sale_time;
	}


	public List<GoodAttribute> getGoodFeatureList() {
		return goodFeatureList;
	}


	public void setGoodFeatureList(List<GoodAttribute> goodFeatureList) {
		this.goodFeatureList = goodFeatureList;
	}


	public List<String> getGoodPicList() {
		return goodPicList;
	}


	public void setGoodPicList(List<String> goodPicList) {
		this.goodPicList = goodPicList;
	}
	
	
	
	
	
	
	
}
