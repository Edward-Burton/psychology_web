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

import cn.xhu.softwareengineering.bean.Message;
import cn.xhu.softwareengineering.bean.PsychoArticle;
import cn.xhu.softwareengineering.bean.PsychoUser;
import cn.xhu.softwareengineering.bean.UserCollection;
import cn.xhu.softwareengineering.potal.service.UserService;
import cn.xhu.softwareengineering.util.AjaxResult;
import cn.xhu.softwareengineering.util.Const;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService userService;
	
	@ResponseBody
	@RequestMapping("/doTalkerList")
	public Object doTalkerList(@RequestParam(value = "userid", required = true) Integer userid) {
		AjaxResult result = new AjaxResult();
		try {
			List<PsychoUser> talkerList = userService.queryTalkerByUserid(userid);
			result.setData(talkerList);
			result.setSuccess(true);
		} catch (Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
			result.setMessage("文章查询失败！！！");
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/doMessageList")
	public Object doMessageList(Integer userid,Integer toid) {
		AjaxResult result = new AjaxResult();
		try {
			Map<String,Object> paramMap = new HashMap<String,Object>();
			paramMap.put("fromid", userid);
			paramMap.put("toid", toid);
			List<Message> messageList = userService.queryMessageList(paramMap);
			result.setData(messageList);
			result.setSuccess(true);
		} catch (Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
			result.setMessage("文章查询失败！！！");
		}
		return result;
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
	@RequestMapping("/doUserQa")
	public Object doUserQa(Integer userid) {
		AjaxResult result = new AjaxResult();
		try{
			PsychoUser user = userService.queryUserQaById(userid);
			result.setData(user);
			result.setSuccess(true);
		}catch(Exception e) {
			e.printStackTrace();
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
				result.setMessage("获取是否收藏失败！！！");
			}
		}else {
			result.setSuccess(false);
			result.setMessage("未登录，即将进入登录界面");
		}
		return result;

	}
	
	@ResponseBody
	@RequestMapping("/doUserCollect")
	public Object doUserCollect(HttpSession session,@RequestParam(value = "typeid")Integer typeid) {
		System.out.println("typeid:"+typeid);
		AjaxResult result = new AjaxResult();
		PsychoUser user =(PsychoUser) session.getAttribute(Const.LOGIN_USER);
		if (user != null) {
			Integer fromuserid=user.getPsychouser_id();
			try {
				Map<String, Integer> paramMap = new HashMap<String, Integer>();
				paramMap.put("userid", fromuserid);
				paramMap.put("typeid", typeid);
				UserCollection userCollect = userService.queryUserCollect(paramMap);
				System.out.println("userCollect："+userCollect);
				result.setData(userCollect);
				result.setSuccess(true);
			} catch (Exception e) {
				e.printStackTrace();
				result.setSuccess(false);
				result.setMessage("获取用户收藏失败！！！");
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
					result.setMessage("收藏失败！！！");
				}else {
					result.setMessage("取消收藏失败！！！");
				}
			}
		}else {
			result.setSuccess(false);
			result.setMessage("未登录，即将进入登录界面");
		}
		return result;

	}


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
	@RequestMapping("/doContent")
	public Object doContent(HttpSession session) {
		AjaxResult result = new AjaxResult();
		PsychoUser user = (PsychoUser) session.getAttribute(Const.LOGIN_USER);
		if (user!= null) {
			try {
				int count = userService.queryLikeByUserId(user.getPsychouser_id());
				result.setSuccess(true);
				result.setData(count);
			}catch (Exception e) {
				e.printStackTrace();
				result.setSuccess(false);
				result.setMessage("查询用户获赞失败！！！");
			}
		}
		return result;
	}

	@RequestMapping("/toContent")
	public String toContent() {
		return "user/content_m";
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
				}else {
					result.setSuccess(false);
					result.setMessage("关注失败！");
				}
				
			} catch (Exception e) {
				e.printStackTrace();
				result.setSuccess(false);
				result.setMessage("关注失败！！！");
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
