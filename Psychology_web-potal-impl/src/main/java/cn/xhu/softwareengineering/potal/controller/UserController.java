package cn.xhu.softwareengineering.potal.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.xhu.softwareengineering.bean.PsychoArticle;
import cn.xhu.softwareengineering.bean.PsychoUser;
import cn.xhu.softwareengineering.potal.service.UserService;
import cn.xhu.softwareengineering.util.AjaxResult;
import cn.xhu.softwareengineering.util.Const;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService userService;

	@RequestMapping("/toUserIndex")
	public String toUserIndex(@RequestParam(value = "userid", required = true) Integer userid,
			Map<String, PsychoUser> paramMap) {
		PsychoUser user = userService.queryUserById(userid);
		paramMap.put("user", user);
		return "user/user-index";
	}
	
	@ResponseBody
	@RequestMapping("/doIsSelf")
	public Object doIsSelf(@RequestParam(value = "userid", required = true) Integer UserId, HttpSession session) {
		AjaxResult result = new AjaxResult();
		PsychoUser user = (PsychoUser) session.getAttribute(Const.LOGIN_USER);
		if ( user!= null) {
			if(user.getPsychouser_id()==UserId) {
				result.setData(true);
			}else {
				result.setData(false);
			}
			result.setSuccess(true);
		} else{
			result.setSuccess(false);
			result.setMessage("未登录");
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/doLikeNum")
	public Object doLikeNum(@RequestParam(value = "userid") Integer UserId) {
		AjaxResult result = new AjaxResult();
		try {
			int count = userService.queryLikeByUserId(UserId);
			result.setSuccess(true);
			result.setData(count);
		}catch (Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
			result.setMessage("查询用户获赞失败！！！");
		}
		return result;
	}


	@ResponseBody
	@RequestMapping("/doUserArticle")
	public Object doUserArticle(@RequestParam(value = "userid", required = true) Integer userid) {
		AjaxResult result = new AjaxResult();
		try {
			List<PsychoArticle> articleList = userService.queryArticleByUserId(userid);
			result.setData(articleList);
			result.setSuccess(true);
		} catch (Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
			result.setMessage("文章查询失败！！！");
		}
		return result;
	}

	@ResponseBody
	@RequestMapping("/doIsFollow")
	public Object doIsFollow(@RequestParam(value = "followuserid", required = true) Integer followUserId, HttpSession session) {
		AjaxResult result = new AjaxResult();
		PsychoUser user = (PsychoUser) session.getAttribute(Const.LOGIN_USER);
		if ( user!= null) {
			try {
				Map<String, Object> paramMap = new HashMap<>();
				paramMap.put("followUserId", followUserId);
				paramMap.put("curUserId", user.getPsychouser_id());
				if(userService.queryFollow(paramMap)>0) {
					result.setData(true);
				}else {
					result.setData(false);
				}
				result.setSuccess(true);
			} catch (Exception e) {
				e.printStackTrace();
				result.setSuccess(false);
				result.setMessage("关注查询失败！！！");
			}
		} else{
			result.setSuccess(false);
			result.setMessage("未登录");
		}
		return result;
	}

	@ResponseBody
	@RequestMapping("/doFollow")
	public Object doFollow(@RequestParam(value = "followuserid", required = true) Integer followUserId, Integer action,HttpSession session) {
		AjaxResult result = new AjaxResult();
		PsychoUser user = (PsychoUser) session.getAttribute(Const.LOGIN_USER);
		if ( user!= null) {
			if(user.getPsychouser_id()!=followUserId) {
			try {
				Map<String, Object> paramMap = new HashMap<>();
				paramMap.put("followUserId", followUserId);
				paramMap.put("curUserId", user.getPsychouser_id());
				if(userService.doFollow(paramMap,action)>0) {
					result.setSuccess(true);
				}
			} catch (Exception e) {
				e.printStackTrace();
				result.setSuccess(false);
				result.setMessage("文章查询失败！！！");
			}
			}else {
				result.setSuccess(false);
				result.setMessage("不能关注自己");
			}
		}else{
			result.setSuccess(false);
			result.setMessage("未登录");
		}
		return result;
	}

}
