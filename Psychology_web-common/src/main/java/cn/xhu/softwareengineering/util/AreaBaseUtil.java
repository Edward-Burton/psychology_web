package cn.xhu.softwareengineering.util;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.springframework.core.io.ClassPathResource;
import org.springframework.util.ResourceUtils;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;

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
		ClassPathResource resource = new ClassPathResource("area/2020年1月中华人民共和国县以上行政区划代码.json");
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		File jsonFile = new File("area.txt");
		String json;
		List<Province> pList=null;
		try {
			InputStream inputStream = resource.getInputStream();
			OutputStream os = null;
			try {
				os = new FileOutputStream(jsonFile);
				int len = 0;
				byte[] buffer = new byte[8192];

				while ((len = inputStream.read(buffer)) != -1) {
					os.write(buffer, 0, len);
				}
			} finally {
				os.close();
				inputStream.close();
			}
			json = FileUtils.readFileToString(jsonFile);
			pList = gson.fromJson(json, new TypeToken<List<Province>>(){}.getType());
		} catch (IOException e) {
			e.printStackTrace();
		}
		return pList;
	}

	
	public static void main(String[]args) {
		AreaBaseUtil.getProvinceList();
		
	}
	
}
