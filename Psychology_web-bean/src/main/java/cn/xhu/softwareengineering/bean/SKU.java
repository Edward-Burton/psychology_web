package cn.xhu.softwareengineering.bean;

import java.util.List;

public class SKU {
	private int sku_id;
	private PsychoGood ofGood;
	private int sku_num;
	private float sku_price;
	private List<GoodAttribute> attrList;
	private List<GoodFeature> feaList;
	
	
	public SKU() {
		super();
	}
	
	


	public SKU(int sku_id, PsychoGood ofGood, int sku_num, float sku_price, List<GoodAttribute> attrList,
			List<GoodFeature> feaList) {
		super();
		this.sku_id = sku_id;
		this.ofGood = ofGood;
		this.sku_num = sku_num;
		this.sku_price = sku_price;
		this.attrList = attrList;
		this.feaList = feaList;
	}




	public List<GoodAttribute> getAttrList() {
		return attrList;
	}




	public void setAttrList(List<GoodAttribute> attrList) {
		this.attrList = attrList;
	}




	public List<GoodFeature> getFeaList() {
		return feaList;
	}



	public void setFeaList(List<GoodFeature> feaList) {
		this.feaList = feaList;
	}



	public float getSku_price() {
		return sku_price;
	}



	public void setSku_price(float sku_price) {
		this.sku_price = sku_price;
	}



	public int getSku_id() {
		return sku_id;
	}
	public void setSku_id(int sku_id) {
		this.sku_id = sku_id;
	}
	public PsychoGood getOfGood() {
		return ofGood;
	}
	public void setOfGood(PsychoGood ofGood) {
		this.ofGood = ofGood;
	}
	public int getSku_num() {
		return sku_num;
	}
	public void setSku_num(int sku_num) {
		this.sku_num = sku_num;
	}
	
}
