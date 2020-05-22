package cn.xhu.softwareengineering.bean;

public class Area {
    private String district_code;
    private String district_name;

    
    
    public Area() {
		super();
	}

	public Area(String district_code, String district_name) {
		super();
		this.district_code = district_code;
		this.district_name = district_name;
	}

	public String getDistrict_code() {
		return district_code;
	}

	public void setDistrict_code(String district_code) {
		this.district_code = district_code;
	}

	public String getDistrict_name() {
		return district_name;
	}

	public void setDistrict_name(String district_name) {
		this.district_name = district_name;
	}

}