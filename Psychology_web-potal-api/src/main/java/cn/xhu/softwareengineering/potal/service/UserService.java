package cn.xhu.softwareengineering.potal.service;

import java.util.Map;

import cn.xhu.softwareengineering.bean.PsychoUser;

public interface UserService {
	/* Ctrl + t :找到实现类 */
	PsychoUser queryUserlogin(Map<String, Object> paramMap);

}
