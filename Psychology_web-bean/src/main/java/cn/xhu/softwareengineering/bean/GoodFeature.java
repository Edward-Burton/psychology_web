package cn.xhu.softwareengineering.bean;

import java.util.List;

public class GoodFeature {
	private int feature_type;
	private int feature_des_type;
	private List<GoodAttribute> attrList;
	
	public GoodFeature(int feature_type, int feature_des_type, List<GoodAttribute> attrList) {
		super();
		this.feature_type = feature_type;
		this.feature_des_type = feature_des_type;
		this.attrList = attrList;
	}
	public GoodFeature() {
		super();
	}
	public int getFeature_type() {
		return feature_type;
	}
	public void setFeature_type(int feature_type) {
		this.feature_type = feature_type;
	}
	public int getFeature_des_type() {
		return feature_des_type;
	}
	public void setFeature_des_type(int feature_des_type) {
		this.feature_des_type = feature_des_type;
	}
	public List<GoodAttribute> getAttrList() {
		return attrList;
	}
	public void setAttrList(List<GoodAttribute> attrList) {
		this.attrList = attrList;
	}
	
}
