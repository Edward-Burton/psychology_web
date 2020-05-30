package cn.xhu.softwareengineering.potal.controller;

import java.net.URLDecoder;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.xhu.softwareengineering.bean.AlipayBean;
import cn.xhu.softwareengineering.bean.CourseCatalog;
import cn.xhu.softwareengineering.bean.CourseProfession;
import cn.xhu.softwareengineering.bean.CourseTeacher;
import cn.xhu.softwareengineering.bean.Lesson;
import cn.xhu.softwareengineering.bean.Order;
import cn.xhu.softwareengineering.bean.PsychoCourse;
import cn.xhu.softwareengineering.bean.PsychoUser;
import cn.xhu.softwareengineering.bean.SaleComment;
import cn.xhu.softwareengineering.bean.SalesQuestion;
import cn.xhu.softwareengineering.potal.service.CourseService;
import cn.xhu.softwareengineering.potal.service.PayService;
import cn.xhu.softwareengineering.util.AjaxResult;
import cn.xhu.softwareengineering.util.Const;
import cn.xhu.softwareengineering.util.Page;

@Controller
@RequestMapping("/course")
public class CourseController {

	@Autowired
	private CourseService CourseService;
	
	@Autowired
	private PayService payService;

	@RequestMapping("/index")
	public String toIndex() {
		return "course/index";
	}

	@ResponseBody
	@RequestMapping("/doindex")
	public Object doIndex(@RequestParam(value = "pageno", required = false, defaultValue = "1") Integer pageno,
			@RequestParam(value = "pagesize", required = false, defaultValue = "2") Integer pagesize, Integer tag,
			@RequestParam(value = "teacherid", required = false) Integer teacherid,
			@RequestParam(value = "professionid", required = false) Integer professionid) {
		AjaxResult result = new AjaxResult();
		Map<String, Object> paramMap = new HashMap<String, Object>();
		if (tag <= 1) {
			paramMap.put("tag", tag);
			try {
				List<PsychoCourse> recommendList = CourseService.queryRecommendCourse(paramMap);
				result.setSuccess(true);
				result.setData(recommendList);
			} catch (Exception e) {
				e.printStackTrace();
				result.setSuccess(false);
				result.setMessage("查找推荐失败！！！！");
			}
		} else {
			paramMap.put("pageno", pageno);
			paramMap.put("pagesize", pagesize);
			paramMap.put("professionid", professionid);
			paramMap.put("teacherid", teacherid);
			System.out.println("p:"+professionid);
			System.out.println("p"+teacherid);
			try {
				Page<PsychoCourse> page = CourseService.queryCoursePage(paramMap);
				result.setSuccess(true);
				result.setPage(page);
			} catch (Exception e) {
				e.printStackTrace();
				result.setSuccess(false);
				result.setMessage("查找课程失败！！！！");
			}
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/doInstructor")
	public Object doInstructor() {
		AjaxResult result = new AjaxResult();
		try {
			List<CourseTeacher> instructorList = CourseService.queryInstructor();
			result.setSuccess(true);
			result.setData(instructorList);
		}catch(Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
			result.setMessage("查询讲师失败");
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/doTryList")
	public Object doTryList(Integer courseid) {
		AjaxResult result = new AjaxResult();
		try {
			List<Lesson> instructorList = CourseService.queryTryList(courseid);
			result.setSuccess(true);
			result.setData(instructorList);
		}catch(Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
			result.setMessage("查看试听列表失败");
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/doProfession")
	public Object doProfession() {
		AjaxResult result = new AjaxResult();
		try {
			List<CourseProfession> proList = CourseService.queryProfession();
			result.setSuccess(true);
			result.setData(proList);
		}catch(Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
			result.setMessage("主题分类查询失败");
		}
		return result;
	}

	@RequestMapping("/course")
	public String toCourse(Integer id,Map<String, Object> map) {
		PsychoCourse course = CourseService.queryCourseByid(id);
		map.put("course",course);
		System.out.println("---------->"+course.getInstructor().getInstructor_name());
		return "course/course";
	}
	
	@ResponseBody
	@RequestMapping("/doComment")
	public Object doComment(@RequestParam(value = "courseid")Integer courseid) {
		AjaxResult result = new AjaxResult();
		try {
			List<SaleComment> saleComment = CourseService.queryCourseComment(courseid);
			result.setData(saleComment);
			result.setSuccess(true);
		}catch(Exception e) {
			result.setSuccess(false);
			e.printStackTrace();
			result.setMessage("查询评论失败！！");
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/doQuestion")
	public Object doQuestion(@RequestParam(value = "courseid")Integer courseid) {
		System.out.println("questioncourseid:"+courseid);
		AjaxResult result = new AjaxResult();
		try {
			List<SalesQuestion> saleQuestion = CourseService.queryCourseQuestion(courseid);
			for(SalesQuestion s: saleQuestion) {
				System.out.println("-*-*->"+s.getSales_question_content()+s.getSales_question_pultime());
			}
			result.setData(saleQuestion);
			result.setSuccess(true);
		}catch(Exception e) {
			result.setSuccess(false);
			e.printStackTrace();
			result.setMessage("查询问题失败！！");
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/doCatalog")
	public Object doCatalog(@RequestParam(value = "courseid")Integer courseid) {
		AjaxResult result = new AjaxResult();
		try {
			List<CourseCatalog> courseCatalog = CourseService.queryCourseCatalog(courseid);
			for(CourseCatalog c: courseCatalog) {
				System.out.println("--->"+c.getCatalog_name()+c.getSubcatalog());
			}
			result.setData(courseCatalog);
			result.setSuccess(true);
		}catch(Exception e) {
			result.setSuccess(false);
			e.printStackTrace();
			result.setMessage("查询课程目录失败！！");
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/doAddComment")
	public Object doAddComment(@RequestParam(value = "courseid")Integer courseid,@RequestParam(value = "content")String content,@RequestParam(value = "userid")Integer userid) {
		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("toid", courseid);
			paramMap.put("userid", userid);
			paramMap.put("content", URLDecoder.decode(content, "utf-8"));
			paramMap.put("pultime", new Date());
			if(CourseService.addCourseComment(paramMap)>0) {
				result.setSuccess(true);
			}
		}catch(Exception e) {
			result.setSuccess(false);
			e.printStackTrace();
			result.setMessage("添加评论失败！！");
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/doDeleteQuestion")
	public Object doDeleteQuestion(@RequestParam(value = "Commentid")Integer Commentid) {
		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			if(CourseService.deleteCourseQuestion(Commentid)>0) {
				result.setSuccess(true);
			}
		}catch(Exception e) {
			result.setSuccess(false);
			e.printStackTrace();
			result.setMessage("删除问题失败！！");
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/doAddQuestion")
	public Object doAddQuestion(@RequestParam(value = "courseid")Integer courseid,@RequestParam(value = "content")String content,@RequestParam(value = "userid")Integer userid) {
		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("salesid", courseid);
			paramMap.put("userid", userid);
			paramMap.put("content", URLDecoder.decode(content, "utf-8"));
			paramMap.put("pultime", new Date());
			if(CourseService.addCourseQuestion(paramMap)>0) {
				result.setSuccess(true);
			}
		}catch(Exception e) {
			result.setSuccess(false);
			e.printStackTrace();
			result.setMessage("添加问题失败！！");
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/doAddAnswer")
	public Object doAddAnswer(@RequestParam(value = "questionid")Integer questionid,@RequestParam(value = "content")String content,@RequestParam(value = "instructorid")Integer instructorid) {
		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("questionid", questionid);
			paramMap.put("instructorid", instructorid);
			paramMap.put("content", content);
			paramMap.put("pultime", new Date());
			if(CourseService.addQuestionAnswer(paramMap)>0) {
				result.setSuccess(true);
			}
		}catch(Exception e) {
			result.setSuccess(false);
			e.printStackTrace();
			result.setMessage("添加问题回复失败！！");
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/doIsOrder")
	public Object doIsOrder(@RequestParam(value = "courseid" )Integer courseid,HttpSession session) {
		AjaxResult result = new AjaxResult();
		PsychoUser user = (PsychoUser) session.getAttribute(Const.LOGIN_USER);
		if(user!=null) {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("courseid", courseid);
			paramMap.put("userid", user.getPsychouser_id());
			try {
				Order order = CourseService.queryOrder(paramMap);
				result.setSuccess(true);
				if(order!=null) {
					result.setData(order.getOrder_level());
				}else {
					result.setData(0);
				}
			}catch(Exception e) {
				e.printStackTrace();
				result.setSuccess(false);
				result.setMessage("订单查询失败");
			}
			return result;
		}else {
			result.setSuccess(false);
			result.setMessage("请登录");
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/doOrder")
	public Object doOrder(HttpServletResponse httpResponse,
			@RequestBody Order order, HttpSession session) {
		System.out.println("courseid:"+order.getOrderobjId());
		PsychoUser user = (PsychoUser) session.getAttribute(Const.LOGIN_USER);
		AjaxResult result = new AjaxResult();
		//请求的控制器
		if (user != null) {
			order.setUser(user);
			order.setOrder_createtime(new Date());
			order.setOut_trade_no();
			try {
				Order o = CourseService.addOrder(order);
				if (o.getOrder_id() > 0) {
					String form = payService.aliPay(new AlipayBean().setOut_trade_no(o.getOut_trade_no())
							.setTotal_amount(new StringBuffer().append(o.getOrder_total_amount()))
							.setSubject("订单编号："+String.valueOf(o.getOrder_id())));
					result.setData(form);
					result.setSuccess(true);
					return result;
				}
			} catch (Exception e) {
				result.setSuccess(false);
				result.setMessage("生成订单失败！！！");
				e.printStackTrace();
			}
		} else {
			result.setSuccess(false);
			result.setMessage("未登录，生成订单失败！！！");
			return result;
		}
		return result;
	}

}
