package cn.xhu.softwareengineering.manager.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.xhu.softwareengineering.bean.User;
import cn.xhu.softwareengineering.manager.dao.TestDao;
import cn.xhu.softwareengineering.manager.service.TestService;

@Service
public class TestServiceImpl implements TestService {

	static int i=0;
	@Autowired
	private TestDao testDao;
	
	@Override
	public void insert() {
		Map map = new HashMap();
		map.put("name", "tester"+i);
		i++;
		System.out.println("testServiceImpl");
		testDao.insert(map);

	}

	@Override
	public void regist(User user) {
		System.out.println("testServiceImpl");
		testDao.addUser(user);
		
	}

}
