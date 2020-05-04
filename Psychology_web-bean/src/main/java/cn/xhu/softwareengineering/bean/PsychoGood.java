package cn.xhu.softwareengineering.bean;

import java.util.Date;
import java.util.List;

public class PsychoGood {
	private int good_id;
	private String good_name;
	private String good_description;
	private float good_price;
	private Date good_sale_time;
	private int good_num;
	private List<GoodAttribute> goodFeatureList;
	private List<GoodPic> goodPicList;
	private List<GoodFeature> feaList;
	private List<Product> productList;

	public PsychoGood() {
		super();
	}
	

	public PsychoGood(int good_id, String good_name, String good_description, float good_price, Date good_sale_time,
			int good_num, List<GoodAttribute> goodFeatureList, List<GoodPic> goodPicList, List<GoodFeature> feaList,
			List<Product> productList) {
		super();
		this.good_id = good_id;
		this.good_name = good_name;
		this.good_description = good_description;
		this.good_price = good_price;
		this.good_sale_time = good_sale_time;
		this.good_num = good_num;
		this.goodFeatureList = goodFeatureList;
		this.goodPicList = goodPicList;
		this.feaList = feaList;
		this.productList = productList;
	}




	public List<Product> getProductList() {
		return productList;
	}



	public void setProductList(List<Product> productList) {
		this.productList = productList;
	}



	public int getGood_num() {
		return good_num;
	}

	

	public List<GoodFeature> getFeaList() {
		return feaList;
	}

	public void setFeaList(List<GoodFeature> feaList) {
		this.feaList = feaList;
	}

	public void setGood_num(int good_num) {
		this.good_num = good_num;
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

	public List<GoodPic> getGoodPicList() {
		return goodPicList;
	}

	public void setGoodPicList(List<GoodPic> goodPicList) {
		this.goodPicList = goodPicList;
	}

}
