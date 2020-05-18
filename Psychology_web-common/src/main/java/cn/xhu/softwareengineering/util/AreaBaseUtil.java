package cn.xhu.softwareengineering.util;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.springframework.util.ResourceUtils;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;

import cn.xhu.softwareengineering.bean.Area;
import cn.xhu.softwareengineering.bean.City;
import cn.xhu.softwareengineering.bean.Province;

public class AreaBaseUtil {
	
	private static List<Province> ProvinceList;
	private static Map<String,Object> BaseParams;
	
	public static List<Province> getProvinceList() {
		if(ProvinceList==null) {
			ProvinceList=jsonToBean();
		}
		return ProvinceList;
	}
	
	public static Map<String,Object> getBaseProperties(String propertiesFilePath){
		if(BaseParams==null) {
			BaseParams=baseProperties(propertiesFilePath);
		}
		return BaseParams;
	}
	
	private static Map<String,Object> baseProperties(String propertiesFilePath){
		Map<String,Object> baseParams=null;
		try {
			File jsonFile = ResourceUtils.getFile(propertiesFilePath);
			List<String> json = FileUtils.readLines(jsonFile);
			baseParams =new HashMap<String,Object>();
			for(String j:json) {
				String key=j.substring(j.indexOf(".")+1, j.indexOf("="));
				String value=j.substring(j.indexOf("=")+1);
				baseParams.put(key, value);
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return baseParams;
	}
	
	private static List<Province> jsonToBean() {
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		File jsonFile;
		String json;
		List<Province> pList=null;
		try {
			jsonFile = ResourceUtils.getFile("classpath:area/2020年1月中华人民共和国县以上行政区划代码.json");
			json = FileUtils.readFileToString(jsonFile);
			pList = gson.fromJson(json, new TypeToken<List<Province>>(){}.getType());
 			System.out.println("-省：");
			for(Province p:pList) {
				System.out.println(p.getCode()+p.getName());
				System.out.println("---市：");
				for(City c:p.getCityList()) {
					System.out.println(c.getCode()+c.getName());
					System.out.println("------地区：");
					for(Area a:c.getAreaList()) {
						System.out.println(a.getCode()+a.getName());
					}
					System.out.println("------此地区结束：");
				}
	        }
			return pList;
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return pList;
		
	}

	
	public static void main(String[]args) {
		AreaBaseUtil.getProvinceList(); 
	}
	
}
