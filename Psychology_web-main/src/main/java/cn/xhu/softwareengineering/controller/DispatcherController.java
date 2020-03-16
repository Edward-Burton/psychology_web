package cn.xhu.softwareengineering.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.xhu.softwareengineering.bean.PsychoUser;
import cn.xhu.softwareengineering.potal.service.UserService;
import cn.xhu.softwareengineering.util.Const;

@Controller
public class DispatcherController {
	
	@Autowired
	UserService userService;

	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/main")
	public String main() {
		return "testsuccess";
	}
	
	@RequestMapping("/doLogin")
	public String doLogin(String psychouser_acct,String psychouser_password,HttpSession session) {
		Map<String,Object> paramMap = new HashMap<String,Object>();
		paramMap.put("psychouser_acct", psychouser_acct);
		paramMap.put("psychouser_password", psychouser_password);
		
		PsychoUser pu = userService.queryUserlogin(paramMap);
		/*
		 * service的方法名涉及事务操作 
		 * 若此处抛出异常，则会走配置文件springmvc-context.xml中的异常解析器
		 * 若异常解析器捕获到LoginFailException异常，则处理该异常
		 * 并将异常对象默认以键值对的值为“exception”的方式放在request域
		 * 则根据异常解析器的配置往登录页面跳转 
		 * 同时页面可通过EL表达式获取exception异常对象的message来显示异常信息
		 */
		
		session.setAttribute(Const.LOGIN_USER, pu);
		
		return "redirect:/main.htm";
		/*
		 * 这里做重定向操作而不是直接返回到main页面是
		 * 因为如果直接返回到页面则登录和调整的页面是一个转发操作
		 * 转发操作刷新浏览器会重复提交表单操作
		 * 重定向后刷新浏览器也是刷新main页面，而没有刷新doLogin方法
		 */
		}
}
