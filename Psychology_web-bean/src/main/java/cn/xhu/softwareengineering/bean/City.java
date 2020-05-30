package cn.xhu.softwareengineering.bean;

import java.util.List;

import com.google.gson.annotations.SerializedName;

public class City {
    private @SerializedName("code")String city_code;
    private @SerializedName("name")String city_name;
    private List<Area> areaList;
    
    

    public City() {
		super();
	}

	public City(String city_code, String city_name, List<Area> areaList) {
		super();
		this.city_code = city_code;
		this.city_name = city_name;
		this.areaList = areaList;
	}

	public String getCity_code() {
		return city_code;
	}

	public void setCity_code(String city_code) {
		this.city_code = city_code;
	}

	public String getCity_name() {
		return city_name;
	}

	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}

	public List<Area> getAreaList() {
        return areaList;
    }

    public void setAreaList(List<Area> areaList) {
        this.areaList = areaList;
    }
}