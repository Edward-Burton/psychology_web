package cn.xhu.softwareengineering.bean;

import java.util.Date;

public class SaleTheme {
	private int sale_theme_id;
	private String sale_theme_name;
	private String sale_theme_pic;
	private String sale_theme_desc;
	private int sale_theme_leve;
	private Date sale_start_time;
	private int sale_theme_type;
	
	
	public SaleTheme() {
		super();
	}
	
	public SaleTheme(int sale_theme_id, String sale_theme_name, String sale_theme_pic, String sale_theme_desc,
			int sale_theme_leve, Date sale_start_time, int sale_theme_type) {
		super();
		this.sale_theme_id = sale_theme_id;
		this.sale_theme_name = sale_theme_name;
		this.sale_theme_pic = sale_theme_pic;
		this.sale_theme_desc = sale_theme_desc;
		this.sale_theme_leve = sale_theme_leve;
		this.sale_start_time = sale_start_time;
		this.sale_theme_type = sale_theme_type;
	}
	
	public int getSale_theme_id() {
		return sale_theme_id;
	}
	public void setSale_theme_id(int sale_theme_id) {
		this.sale_theme_id = sale_theme_id;
	}
	public String getSale_theme_name() {
		return sale_theme_name;
	}
	public void setSale_theme_name(String sale_theme_name) {
		this.sale_theme_name = sale_theme_name;
	}
	public String getSale_theme_pic() {
		return sale_theme_pic.replaceAll("\\\\", "/").substring(sale_theme_pic.indexOf("img"));
	}
	public void setSale_theme_pic(String sale_theme_pic) {
		this.sale_theme_pic = sale_theme_pic;
	}
	public String getSale_theme_desc() {
		return sale_theme_desc;
	}
	public void setSale_theme_desc(String sale_theme_desc) {
		this.sale_theme_desc = sale_theme_desc;
	}
	public int getSale_theme_leve() {
		return sale_theme_leve;
	}
	public void setSale_theme_leve(int sale_theme_leve) {
		this.sale_theme_leve = sale_theme_leve;
	}
	public Date getSale_start_time() {
		return sale_start_time;
	}
	public void setSale_start_time(Date sale_start_time) {
		this.sale_start_time = sale_start_time;
	}
	public int getSale_theme_type() {
		return sale_theme_type;
	}
	public void setSale_theme_type(int sale_theme_type) {
		this.sale_theme_type = sale_theme_type;
	}
	
	

}
