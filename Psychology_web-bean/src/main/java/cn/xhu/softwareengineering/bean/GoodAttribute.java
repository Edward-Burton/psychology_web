package cn.xhu.softwareengineering.bean;

import java.util.List;

public class GoodAttribute {
	private int good_attribute_id;
	private String good_attribute_name;
	private int of_good_id;
	private int good_attribute_desc_type;
	private List<GoodFeature> goodFeature;
	
	public GoodAttribute() {
		super();
	}

	

	public GoodAttribute(int good_attribute_id, String good_attribute_name, int of_good_id,
			int good_attribute_desc_type, List<GoodFeature> goodFeature) {
		super();
		this.good_attribute_id = good_attribute_id;
		this.good_attribute_name = good_attribute_name;
		this.of_good_id = of_good_id;
		this.good_attribute_desc_type = good_attribute_desc_type;
		this.goodFeature = goodFeature;
	}



	public List<GoodFeature> getGoodFeature() {
		return goodFeature;
	}



	public void setGoodFeature(List<GoodFeature> goodFeature) {
		this.goodFeature = goodFeature;
	}



	public int getGood_attribute_id() {
		return good_attribute_id;
	}

	public void setGood_attribute_id(int good_attribute_id) {
		this.good_attribute_id = good_attribute_id;
	}

	public String getGood_attribute_name() {
		return good_attribute_name;
	}

	public void setGood_attribute_name(String good_attribute_name) {
		this.good_attribute_name = good_attribute_name;
	}

	public int getOf_good_id() {
		return of_good_id;
	}

	public void setOf_good_id(int of_good_id) {
		this.of_good_id = of_good_id;
	}

	public int getGood_attribute_desc_type() {
		return good_attribute_desc_type;
	}

	public void setGood_attribute_desc_type(int good_attribute_desc_type) {
		this.good_attribute_desc_type = good_attribute_desc_type;
	}

	
	
}
