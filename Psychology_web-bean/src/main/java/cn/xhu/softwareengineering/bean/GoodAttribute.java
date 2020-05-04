package cn.xhu.softwareengineering.bean;

public class GoodAttribute {
	private int good_feature_id;
	private int goodid;
	private String good_feature_content;
	private String good_feature_img;
	private int good_feature_type;
	private int good_feature_des_type;
	
	public GoodAttribute() {
		super();
	}

	

	public GoodAttribute(int good_feature_id, int goodid, String good_feature_content, String good_feature_img,
			int good_feature_type, int good_feature_des_type) {
		super();
		this.good_feature_id = good_feature_id;
		this.goodid = goodid;
		this.good_feature_content = good_feature_content;
		this.good_feature_img = good_feature_img;
		this.good_feature_type = good_feature_type;
		this.good_feature_des_type = good_feature_des_type;
	}
	
	



	public String getGood_feature_img() {
		if(good_feature_img==""||good_feature_img==null) {
			return "";
		}
		return good_feature_img.replaceAll("\\\\", "/").substring(good_feature_img.indexOf("/img"));
	}



	public void setGood_feature_img(String good_feature_img) {
		this.good_feature_img = good_feature_img;
	}



	public int getGood_feature_des_type() {
		return good_feature_des_type;
	}

	
	public void setGood_feature_des_type(int good_feature_des_type) {
		this.good_feature_des_type = good_feature_des_type;
	}


	public int getGood_feature_id() {
		return good_feature_id;
	}



	public void setGood_feature_id(int good_feature_id) {
		this.good_feature_id = good_feature_id;
	}



	public int getGoodid() {
		return goodid;
	}



	public void setGoodid(int goodid) {
		this.goodid = goodid;
	}



	public String getGood_feature_content() {
		return good_feature_content;
	}



	public void setGood_feature_content(String good_feature_content) {
		this.good_feature_content = good_feature_content;
	}



	public int getGood_feature_type() {
		return good_feature_type;
	}



	public void setGood_feature_type(int good_feature_type) {
		this.good_feature_type = good_feature_type;
	}
	
}
