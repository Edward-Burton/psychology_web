package cn.xhu.softwareengineering.potal.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.xhu.softwareengineering.bean.PsychoUser;
import cn.xhu.softwareengineering.exception.LoginFailException;
import cn.xhu.softwareengineering.potal.dao.UserMapper;
import cn.xhu.softwareengineering.potal.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public PsychoUser queryUserlogin(Map<String, Object> paramMap) {
		PsychoUser psychoUser = userMapper.queryUserlogin(paramMap);
		if(psychoUser == null) {
			throw new LoginFailException("用户账号或密码不正确！");
		}
		
		return psychoUser;
	}

}
