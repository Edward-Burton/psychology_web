package cn.xhu.softwareengineering.bean;

public class GoodFeature {
	private int good_feature_id;
	private int good_attr_id;
	private String good_feature_content;
	private String good_feature_img;
	
	public GoodFeature(int good_feature_id, int good_attr_id, String good_feature_content, String good_feature_img) {
		super();
		this.good_feature_id = good_feature_id;
		this.good_attr_id = good_attr_id;
		this.good_feature_content = good_feature_content;
		this.good_feature_img = good_feature_img;
	}

	public GoodFeature() {
		super();
	}

	public int getGood_feature_id() {
		return good_feature_id;
	}

	public void setGood_feature_id(int good_feature_id) {
		this.good_feature_id = good_feature_id;
	}

	public int getGood_attr_id() {
		return good_attr_id;
	}

	public void setGood_attr_id(int good_attr_id) {
		this.good_attr_id = good_attr_id;
	}

	public String getGood_feature_content() {
		return good_feature_content;
	}

	public void setGood_feature_content(String good_feature_content) {
		this.good_feature_content = good_feature_content;
	}

	public String getGood_feature_img() {
		if(good_feature_img==null) {
			return "";
		}
		return good_feature_img.replaceAll("\\\\", "/").substring(good_feature_img.indexOf("/img"));
	}

	public void setGood_feature_img(String good_feature_img) {
		this.good_feature_img = good_feature_img;
	}
	
	
	
	
	
}
