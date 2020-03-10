package cn.xhu.softwareengineering.manager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.xhu.softwareengineering.bean.User;
import cn.xhu.softwareengineering.manager.service.TestService;

@Controller
public class TestController {
	
	@Autowired
	private TestService testService;
	
	@RequestMapping("/test")
	public String test() {
		System.out.println("TestController");
		testService.insert();
		return "testsuccess";
	}
	@RequestMapping("/regist")
	public String regist(User user,Model model){
		
		System.out.println("用户注册："+user.getUsername()+user.getPassword());
		
		user.setId(3);
		testService.regist(user);
		
		model.addAttribute("msg", "注册成功");
		//注册成功后跳转success.jsp页面
		return "success";
	}
}
