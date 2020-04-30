package cn.xhu.softwareengineering.bean;

public class RadioType {
	private int type_id;
	private String type_name;
	private int type_typeid;
	private String type_img;
	
	public RadioType(int type_id, String type_name, int type_typeid, String type_img) {
		super();
		this.type_id = type_id;
		this.type_name = type_name;
		this.type_typeid = type_typeid;
		this.type_img = type_img;
	}
	
	public RadioType() {
		super();
	}

	public int getType_id() {
		return type_id;
	}
	public void setType_id(int type_id) {
		this.type_id = type_id;
	}
	public String getType_name() {
		return type_name;
	}
	public void setType_name(String type_name) {
		this.type_name = type_name;
	}
	public int getType_typeid() {
		return type_typeid;
	}
	public void setType_typeid(int type_typeid) {
		this.type_typeid = type_typeid;
	}
	public String getType_img() {
		return type_img.replaceAll("\\\\", "/").substring(type_img.indexOf("img"));
	}
	public void setType_img(String type_img) {
		this.type_img = type_img;
	}
	
}
