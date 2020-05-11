package cn.xhu.softwareengineering.bean;

import java.util.List;

public class TrasformAddr {
	private List<Province> provinceList;

	public List<Province> getProvinceList() {
		return provinceList;
	}

	public void setProvinceList(List<Province> provinceList) {
		this.provinceList = provinceList;
	}

	public TrasformAddr(List<Province> provinceList) {
		super();
		this.provinceList = provinceList;
	}

	public TrasformAddr() {
		super();
	}
	
}
