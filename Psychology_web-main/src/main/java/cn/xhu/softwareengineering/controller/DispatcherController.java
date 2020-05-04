package cn.xhu.softwareengineering.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.xhu.softwareengineering.bean.PsychoUser;
import cn.xhu.softwareengineering.potal.service.UserService;
import cn.xhu.softwareengineering.util.AjaxResult;
import cn.xhu.softwareengineering.util.Const;
import cn.xhu.softwareengineering.util.MD5Util;

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

	@RequestMapping("/register")
	public String register() {
		return "register";
	}

	@RequestMapping("/main")
	public String main() {
		return "index";
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();// 销毁session对象,或清理session域.

		return "redirect:/index.htm";
	}

	@RequestMapping("/doRegister")
	public String doRegister() {
		return "register_success";
	}

	@ResponseBody
	@RequestMapping("/doLike")
	public Object doLike(HttpSession session, @RequestParam(value = "toid")Integer toid, @RequestParam(value = "mainid", required = false)Integer mainid, @RequestParam(value = "maintype", required = false)Integer maintype, @RequestParam(value = "typeid")Integer typeid, @RequestParam(value = "action")Integer action) {
		System.out.println(toid);
		AjaxResult result = new AjaxResult();
		PsychoUser user =(PsychoUser) session.getAttribute(Const.LOGIN_USER);
		if (user != null) {
			Integer fromuserid=user.getPsychouser_id();
			try {
				Map<String, Integer> paramMap = new HashMap<String, Integer>();
				paramMap.put("userid", fromuserid);
				paramMap.put("toid", toid);
				paramMap.put("typeid", typeid);
				if (mainid != null) {
					paramMap.put("mainid", mainid);
				}
				if (maintype != null) {
					paramMap.put("maintype", maintype);
				}
				int likenum = userService.handleUserLike(paramMap, action);
				System.out.println("likenum："+likenum);
				result.setData(likenum);
				result.setSuccess(true);
			} catch (Exception e) {
				result.setSuccess(false);
				result.setMessage("点赞失败！！！");
			}
		}else {
			result.setSuccess(false);
			result.setMessage("未登录，即将进入登录界面");
		}
		return result;

	}
	
	@ResponseBody
	@RequestMapping("/doUserId")
	public Object doUserId(HttpSession session) {
		AjaxResult result = new AjaxResult();
		PsychoUser user =(PsychoUser) session.getAttribute(Const.LOGIN_USER);
		if (user != null) {
			Integer userid=user.getPsychouser_id();
			result.setData(userid);
			result.setSuccess(true);
		}else {
			result.setSuccess(false);
			result.setMessage("未登录，即将进入登录界面");
		}
		return result;

	}
	
	@ResponseBody
	@RequestMapping("/doUser")
	public Object doUser(HttpSession session) {
		AjaxResult result = new AjaxResult();
		PsychoUser user =(PsychoUser) session.getAttribute(Const.LOGIN_USER);
		System.out.println(user);
		if (user != null) {
			result.setData(user);
			result.setSuccess(true);
		}else {
			result.setSuccess(false);
			result.setMessage("未登录，即将进入登录界面");
		}
		return result;

	}
	
	
	@ResponseBody
	@RequestMapping("/doIsCollect")
	public Object doIsCollect(HttpSession session, @RequestParam(value = "toid")Integer toid, @RequestParam(value = "typeid")Integer typeid) {
		System.out.println(toid);
		AjaxResult result = new AjaxResult();
		PsychoUser user =(PsychoUser) session.getAttribute(Const.LOGIN_USER);
		if (user != null) {
			Integer fromuserid=user.getPsychouser_id();
			try {
				Map<String, Integer> paramMap = new HashMap<String, Integer>();
				paramMap.put("userid", fromuserid);
				paramMap.put("toid", toid);
				paramMap.put("typeid", typeid);
				int iscollect = userService.queryIsCollect(paramMap);
				System.out.println("iscollect："+iscollect);
				result.setData(iscollect);
				result.setSuccess(true);
			} catch (Exception e) {
				e.printStackTrace();
				result.setSuccess(false);
				result.setMessage("点赞失败！！！");
			}
		}else {
			result.setSuccess(false);
			result.setMessage("未登录，即将进入登录界面");
		}
		return result;

	}
	
	@ResponseBody
	@RequestMapping("/doCollect")
	public Object doCollect(HttpSession session, @RequestParam(value = "toid")Integer toid, @RequestParam(value = "typeid")Integer typeid, @RequestParam(value = "iscollect")Integer iscollect) {
		System.out.println(toid);
		AjaxResult result = new AjaxResult();
		PsychoUser user =(PsychoUser) session.getAttribute(Const.LOGIN_USER);
		if (user != null) {
			Integer fromuserid=user.getPsychouser_id();
			try {
				Map<String, Integer> paramMap = new HashMap<String, Integer>();
				paramMap.put("userid", fromuserid);
				paramMap.put("toid", toid);
				paramMap.put("typeid", typeid);
				int collectstatus = userService.handleUserCollect(paramMap, iscollect);
				System.out.println("collectstatus："+collectstatus);
				result.setData(collectstatus);
				result.setSuccess(true);
			} catch (Exception e) {
				e.printStackTrace();
				result.setSuccess(false);
				if(iscollect==0) {
					result.setMessage("点赞失败！！！");
				}else {
					result.setMessage("取消点赞失败！！！");
				}
			}
		}else {
			result.setSuccess(false);
			result.setMessage("未登录，即将进入登录界面");
		}
		return result;

	}

	// 异步请求
	// @ResponseBody 结合Jackson组件，将返回结果转换为字符串，将JSON串以流的形式返回给客户端。
	@ResponseBody
	@RequestMapping("/doLogin")
	public Object doLogin(String psychouser_acct, String psychouser_password, HttpSession session) {
		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("psychouser_acct", psychouser_acct);
			paramMap.put("psychouser_password", MD5Util.digest(psychouser_password));
			PsychoUser pu = userService.queryUserlogin(paramMap);
			session.setAttribute(Const.LOGIN_USER, pu);
			result.setSuccess(true);
			// {"success":true}
		} catch (Exception e) {
			result.setMessage("登录失败");
			e.printStackTrace();
			result.setSuccess(false);
			// {"success":false,"message":"登录失败！"}
		}
		/*
		 * service的方法名涉及事务操作 若此处抛出异常，则会走配置文件springmvc-context.xml中的异常解析器
		 * 若异常解析器捕获到LoginFailException异常，则处理该异常 并将异常对象默认以键值对的值为“exception”的方式放在request域
		 * 则根据异常解析器的配置往登录页面跳转 同时页面可通过EL表达式获取exception异常对象的message来显示异常信息
		 */

		return result;
	}

	// 同步请求处理
	/*
	 * @RequestMapping("/doLogin") public String doLogin(String
	 * psychouser_acct,String psychouser_password,HttpSession session) {
	 * Map<String,Object> paramMap = new HashMap<String,Object>();
	 * paramMap.put("psychouser_acct", psychouser_acct);
	 * paramMap.put("psychouser_password", psychouser_password);
	 * 
	 * PsychoUser pu = userService.queryUserlogin(paramMap);
	 * 
	 * service的方法名涉及事务操作 若此处抛出异常，则会走配置文件springmvc-context.xml中的异常解析器
	 * 若异常解析器捕获到LoginFailException异常，则处理该异常 并将异常对象默认以键值对的值为“exception”的方式放在request域
	 * 则根据异常解析器的配置往登录页面跳转 同时页面可通过EL表达式获取exception异常对象的message来显示异常信息
	 * 
	 * 
	 * session.setAttribute(Const.LOGIN_USER, pu);
	 * 
	 * return "redirect:/main.htm";
	 * 
	 * 这里做重定向操作而不是直接返回到main页面是 因为如果直接返回到页面则登录和调整的页面是一个转发操作 转发操作刷新浏览器会重复提交表单操作
	 * 重定向后刷新浏览器也是刷新main页面，而没有刷新doLogin方法
	 * 
	 * }
	 */
}
