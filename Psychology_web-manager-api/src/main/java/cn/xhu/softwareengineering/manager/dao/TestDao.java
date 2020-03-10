package cn.xhu.softwareengineering.manager.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

import cn.xhu.softwareengineering.bean.User;

@Repository
public interface TestDao {
	
	public void insert(Map map);
	public void addUser(User user);
}
