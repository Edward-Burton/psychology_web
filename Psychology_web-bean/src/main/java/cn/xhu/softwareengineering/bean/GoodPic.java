package cn.xhu.softwareengineering.bean;

public class GoodPic {

	private int sale_pic_id;
	private int sale_good_id;
	private String sale_pic_addr;
	
	public GoodPic() {
		super();
	}
	public GoodPic(int sale_pic_id, int sale_good_id, String sale_pic_addr) {
		super();
		this.sale_pic_id = sale_pic_id;
		this.sale_good_id = sale_good_id;
		this.sale_pic_addr = sale_pic_addr;
	}
	public int getSale_pic_id() {
		return sale_pic_id;
	}
	public void setSale_pic_id(int sale_pic_id) {
		this.sale_pic_id = sale_pic_id;
	}
	public int getSale_good_id() {
		return sale_good_id;
	}
	public void setSale_good_id(int sale_good_id) {
		this.sale_good_id = sale_good_id;
	}
	public String getSale_pic_addr() {
		return sale_pic_addr.replaceAll("\\\\", "/").substring(sale_pic_addr.indexOf("/img"));
	}
	public void setSale_pic_addr(String sale_pic_addr) {
		this.sale_pic_addr = sale_pic_addr;
	}
	
	
	
}
