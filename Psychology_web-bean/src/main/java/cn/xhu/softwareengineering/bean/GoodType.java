package cn.xhu.softwareengineering.bean;

import java.util.List;

public class GoodType {
	private int sale_type_id;
	private String sale_type_name;
	private String sale_type_image;
	private List<GoodType> sub_type_list;
	
	public GoodType(int sale_type_id, String sale_type_name, String sale_type_image, List<GoodType> sub_type_list) {
		super();
		this.sale_type_id = sale_type_id;
		this.sale_type_name = sale_type_name;
		this.sale_type_image = sale_type_image;
		this.sub_type_list = sub_type_list;
	}
	public GoodType() {
		super();
	}
	public int getSale_type_id() {
		return sale_type_id;
	}
	public void setSale_type_id(int sale_type_id) {
		this.sale_type_id = sale_type_id;
	}
	public String getSale_type_name() {
		return sale_type_name;
	}
	public void setSale_type_name(String sale_type_name) {
		this.sale_type_name = sale_type_name;
	}
	public String getSale_type_image() {
		return sale_type_image;
	}
	public void setSale_type_image(String sale_type_image) {
		this.sale_type_image = sale_type_image;
	}
	public List<GoodType> getSub_type_list() {
		return sub_type_list;
	}
	public void setSub_type_list(List<GoodType> sub_type_list) {
		this.sub_type_list = sub_type_list;
	}
	
	
	
	
}
