package cn.xhu.softwareengineering.bean;

import java.util.List;

import com.google.gson.annotations.SerializedName;

public class Province {
	private @SerializedName("code")String province_code;
    private @SerializedName("name")String province_name;
    private List<City> cityList;

    public Province() {
		super();
	}

	public Province(String province_code, String province_name, List<City> cityList) {
		super();
		this.province_code = province_code;
		this.province_name = province_name;
		this.cityList = cityList;
	}

	public String getProvince_code() {
		return province_code;
	}

	public void setProvince_code(String province_code) {
		this.province_code = province_code;
	}

	public String getProvince_name() {
		return province_name;
	}

	public void setProvince_name(String province_name) {
		this.province_name = province_name;
	}

	public List<City> getCityList() {
        return cityList;
    }

    public void setCityList(List<City> cityList) {
        this.cityList = cityList;
    }
}