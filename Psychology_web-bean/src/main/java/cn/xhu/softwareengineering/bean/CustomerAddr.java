package cn.xhu.softwareengineering.bean;

import java.util.Date;
import java.util.List;

public class CustomerAddr {
	private int customer_addr_id;
	private int customer_user_id;
	private int province;
	private int city;
	private int district;
	private int town;
	private String address;
	private int is_default;
	private Date modified_time;
	private String accept_customer_name;
	private String phone_num;
	private List<String> areaList;
	private String allAddress;
	
	public CustomerAddr() {
		super();
	}
	
	public CustomerAddr(int customer_addr_id, int customer_user_id, int province, int city, int district, int town,
			String address, int is_default, Date modified_time, String accept_customer_name, String phone_num) {
		super();
		this.customer_addr_id = customer_addr_id;
		this.customer_user_id = customer_user_id;
		this.province = province;
		this.city = city;
		this.district = district;
		this.town = town;
		this.address = address;
		this.is_default = is_default;
		this.modified_time = modified_time;
		this.accept_customer_name = accept_customer_name;
		this.phone_num = phone_num;
	}
	
	

	public String getAllAddress() {
		return allAddress;
	}

	public void setAllAddress(String allAddress) {
		this.allAddress = allAddress;
	}

	public List<String> getAreaList() {
		return areaList;
	}

	public void setAreaList(List<String> areaList) {
		this.areaList = areaList;
	}

	public int getCustomer_addr_id() {
		return customer_addr_id;
	}
	public void setCustomer_addr_id(int customer_addr_id) {
		this.customer_addr_id = customer_addr_id;
	}
	public int getCustomer_user_id() {
		return customer_user_id;
	}
	public void setCustomer_user_id(int customer_user_id) {
		this.customer_user_id = customer_user_id;
	}
	public int getProvince() {
		return province;
	}
	public void setProvince(int province) {
		this.province = province;
	}
	public int getCity() {
		return city;
	}
	public void setCity(int city) {
		this.city = city;
	}
	public int getDistrict() {
		return district;
	}
	public void setDistrict(int district) {
		this.district = district;
	}
	public int getTown() {
		return town;
	}
	public void setTown(int town) {
		this.town = town;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getIs_default() {
		return is_default;
	}
	public void setIs_default(int is_default) {
		this.is_default = is_default;
	}
	public Date getModified_time() {
		return modified_time;
	}
	public void setModified_time(Date modified_time) {
		this.modified_time = modified_time;
	}
	public String getAccept_customer_name() {
		return accept_customer_name;
	}
	public void setAccept_customer_name(String accept_customer_name) {
		this.accept_customer_name = accept_customer_name;
	}
	public String getPhone_num() {
		return phone_num;
	}
	public void setPhone_num(String phone_num) {
		this.phone_num = phone_num;
	}
	
	
	
}
