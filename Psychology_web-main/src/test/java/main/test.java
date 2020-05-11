package main;

import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;

import cn.xhu.softwareengineering.util.PropertiesConfig;

public class test {
	public static void main(String[] args) {

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
}
