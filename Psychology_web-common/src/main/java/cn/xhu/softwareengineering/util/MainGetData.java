package cn.xhu.softwareengineering.util;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import cn.xhu.softwareengineering.bean.Area;
import cn.xhu.softwareengineering.bean.City;
import cn.xhu.softwareengineering.bean.Province;

public class MainGetData {

	public static void main(String[] args) {
		try { // 2020年1月中华人民共和国县以上行政区划代码网页
			Document doc = Jsoup.connect("http://www.mca.gov.cn/article/sj/xzqh/2020/2020/202003061536.html")
					.maxBodySize(0).get();
			Elements elements = doc.getElementsByClass("xl7020844"); // 省和市 
			Elements elementsProAndCity = doc.getElementsByClass("xl7120844");
			List<String> stringListProAndCity = elementsProAndCity.eachText();
			List<String> stringList = elements.eachText();
			List<String> stringName = new ArrayList<String>();
			List<String> stringCode = new ArrayList<String>();
			stringListProAndCity.addAll(stringList);
			for (int i = 0; i < stringListProAndCity.size(); i++) {
				if (i % 2 == 0) { // 地区代码
					stringCode.add(stringListProAndCity.get(i));
				} else { // 地区名字
					stringName.add(stringListProAndCity.get(i));
				}
			} // 正常情况 两个 list size 应该 一样
			System.out.println("stringName  size= " + stringName.size() + "   stringCode   size= " + stringCode.size());
			if (stringName.size() != stringCode.size()) {
				throw new RuntimeException("数据错误");
			}
			List<Province> provinceList = processData(stringName, stringCode);
			
			for(Province p:provinceList) {
				System.out.println("provinceList:"+p.getProvince_code()+p.getProvince_name());
			}
			
			String path = FileUtils.getProjectDir() + "/2020年1月中华人民共和国县以上行政区划代码" + ".json";
			JSONFormatUtils.jsonWriter(provinceList, path);

		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 生成省份列表数据
	 *
	 * @param stringName
	 * @param stringCode
	 * @return
	 */

	private static List<Province> processData(List<String> stringName, List<String> stringCode) {
		List<Province> provinceList = new ArrayList<Province>();

		// 获取省
		for (int i = 0; i < stringCode.size(); i++) {
			String provinceName = stringName.get(i);
			String provinceCode = stringCode.get(i);
			if (provinceCode.endsWith("0000")) {
				Province province = new Province();
				
				province.setProvince_code(provinceCode);
				province.setProvince_name(provinceName);
				provinceList.add(province);
				List<City> cities = new ArrayList<City>();
				province.setCityList(cities);
			}
		}

		// 获取市
		for (int i = 0; i < provinceList.size(); i++) {
			String provinceName = provinceList.get(i).getProvince_name();
			String provinceCode = provinceList.get(i).getProvince_code();
			// 直辖市 城市和省份名称一样
			if (provinceName.contains("北京") || provinceName.contains("上海") || provinceName.contains("天津")
					|| provinceName.contains("重庆")) {
				City city = new City();
				List<Area> areas = new ArrayList<Area>();
				city.setCity_name(provinceName);
				city.setCity_code(provinceCode);
				city.setAreaList(areas);
				provinceList.get(i).getCityList().add(city);
			} else {
				for (int j = 0; j < stringCode.size(); j++) {
					String cityName = stringName.get(j);
					String cityCode = stringCode.get(j);
					if (!cityCode.equals(provinceCode)) {
						if (cityCode.startsWith(provinceCode.substring(0, 2))) {
							if (cityCode.endsWith("00")) {
								City city = new City();
								List<Area> areas = new ArrayList<Area>();
								city.setCity_name(cityName);
								city.setCity_code(cityCode);
								city.setAreaList(areas);
								provinceList.get(i).getCityList().add(city);
							}
						}
					}
				}
			}
		}

		// 获取区县
		for (Province province : provinceList) {
			List<City> cities = province.getCityList();
			for (City city : cities) {
				// 遍历获取县区
				String cityCode = city.getCity_code();
				String cityName = city.getCity_name();
				for (int k = 0; k < stringCode.size(); k++) {
					String areaName = stringName.get(k);
					String areaCode = stringCode.get(k);
					if (cityName.contains("北京") || cityName.contains("上海") || cityName.contains("天津")
							|| cityName.contains("重庆")) {
						if (!province.getProvince_code().equals(areaCode)
								&& areaCode.startsWith(province.getProvince_code().substring(0, 2))) {
							Area area = new Area();
							area.setDistrict_code(areaCode);
							area.setDistrict_name(areaName);
							city.getAreaList().add(area);
						}
					} else {
						if (!areaCode.equals(cityCode) && areaCode.startsWith(cityCode.substring(0, 4))) {
							Area area = new Area();
							area.setDistrict_name(areaName);
							area.setDistrict_code(areaCode);
							city.getAreaList().add(area);
						}
					}

				}

			}
		}

		// 已经处理的数据移除
		List<String> stringNameList = new ArrayList<>(stringName);
		List<String> stringCodeList = new ArrayList<>(stringCode);
		for (Province province : provinceList) {
			stringNameList.remove(province.getProvince_name());
			stringCodeList.remove(province.getProvince_code());
			List<City> cities = province.getCityList();
			for (City city : cities) {
				stringNameList.remove(city.getCity_name());
				stringCodeList.remove(city.getCity_code());
				List<Area> listArea = city.getAreaList();
				for (Area area : listArea) {
					stringNameList.remove(area.getDistrict_name());
					stringCodeList.remove(area.getDistrict_code());
				}
			}
		}

		// 处理石河子 特殊 市，City Code 不以00结尾
		for (Province province : provinceList) {
			for (int k = 0; k < stringCodeList.size(); k++) {
				if (stringCodeList.get(k).startsWith(province.getProvince_code().substring(0, 2))) {
					City city = new City();
					List<Area> areas = new ArrayList<Area>();
					city.setCity_name(stringNameList.get(k));
					city.setCity_code(stringCodeList.get(k));
					city.setAreaList(areas);
					province.getCityList().add(city);
				}
			}
		}

		return provinceList;
	}
}
