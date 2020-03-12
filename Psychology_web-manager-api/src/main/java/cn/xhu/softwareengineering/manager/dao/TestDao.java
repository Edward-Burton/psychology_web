package cn.xhu.softwareengineering.manager.dao;

import java.util.Map;

import cn.xhu.softwareengineering.bean.User;


public interface TestDao {
	
	public void insert(Map map);
	public void addUser(User user);
}
