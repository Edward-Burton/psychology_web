package cn.xhu.softwareengineering.potal.dao;

import java.util.Map;

import cn.xhu.softwareengineering.bean.PsychoUser;

public interface UserMapper {

	PsychoUser queryUserlogin(Map<String, Object> paramMap);

}
