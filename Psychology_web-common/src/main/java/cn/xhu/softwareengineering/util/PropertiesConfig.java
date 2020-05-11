package cn.xhu.softwareengineering.util;

import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import org.springframework.beans.factory.config.PropertiesFactoryBean;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

public class PropertiesConfig{

	//保存加载配置参数
    private static Map<String, String> aliPropertiesMap = new HashMap<String, String>();
    
    /*获取配置参数值*/
    public static String getKey(String key) {
        return aliPropertiesMap.get(key);
    }
    
    /*监听启动完成，执行配置加载到aliPropertiesMap*/
	/*
	 * @Override public void onApplicationEvent(ApplicationEvent event) {
	 * System.out.println("onApplicationEvent"); this.init(aliPropertiesMap); }
	 */
    
    /*初始化加载aliPropertiesMap*/
    public static void init() {
        // 获得PathMatchingResourcePatternResolver对象
        PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
        try {
        	System.out.println("onApplicationEvent");
            //加载resource文件(也可以加载resources)classpath:config/alipay.properties
            org.springframework.core.io.Resource resources = resolver.getResource("classpath:config/alipay.properties");
            PropertiesFactoryBean config = new PropertiesFactoryBean();
            config.setLocation(resources);
            config.afterPropertiesSet();
            Properties prop = config.getObject();
            //循环遍历所有得键值对并且存入集合
            for (String key : prop.stringPropertyNames()) {
            	System.out.println("onApplicationEvent--->"+prop.get(key));
            	aliPropertiesMap.put(key, (String) prop.get(key));
            }
        } catch (Exception e) {
            new Exception("配置文件加载失败");
            e.printStackTrace();
        }
    }


}
