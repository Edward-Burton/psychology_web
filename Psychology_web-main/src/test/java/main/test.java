package main;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.springframework.util.ResourceUtils;

import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;

import cn.xhu.softwareengineering.util.AreaBaseUtil;
import cn.xhu.softwareengineering.util.DBaseUtil;
import cn.xhu.softwareengineering.util.PropertiesConfig;

public class test {
	
	public static void test1() {
		Map<String,Object> baseParams=null;
		try {
			File jsonFile = ResourceUtils.getFile("classpath:config/jdbc.properties");
			List<String> json = FileUtils.readLines(jsonFile);
			System.out.println(json);
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
		System.out.println(baseParams);
	}
	
	public static void test2() {
		System.out.println(PropertiesConfig.getKey("gatewayUrl"));
        System.out.println(PropertiesConfig.getKey("app_id"));
		AlipayClient alipayClient = new DefaultAlipayClient(
                PropertiesConfig.getKey("gatewayUrl"),//支付宝网关
                PropertiesConfig.getKey("app_id"),//appid
                PropertiesConfig.getKey("merchant_private_key"),//商户私钥
                "json",
                PropertiesConfig.getKey("charset"),//字符编码格式
                PropertiesConfig.getKey("alipay_public_key"),//支付宝公钥
                PropertiesConfig.getKey("sign_type")//签名方式
        );
	}
	
	public static void test3() {
		System.out.println(AreaBaseUtil.getBaseProperties("classpath:config/jdbc.properties"));
	}
	
	
	public static void main(String[] args) {
		Connection con = DBaseUtil.getConn(AreaBaseUtil.getBaseProperties("classpath:config/jdbc.properties"));
		DBaseUtil.deleteData(con);
		DBaseUtil.insertDate(AreaBaseUtil.getProvinceList(), con);
	}
}
