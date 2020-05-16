package cn.xhu.softwareengineering.potal.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.xhu.softwareengineering.bean.PsychoLabel;
import cn.xhu.softwareengineering.bean.PsychoUser;
import cn.xhu.softwareengineering.bean.QuestionAnswer;
import cn.xhu.softwareengineering.bean.UserQuestions;
import cn.xhu.softwareengineering.potal.service.QuestionService;
import cn.xhu.softwareengineering.util.AjaxResult;
import cn.xhu.softwareengineering.util.Const;
import cn.xhu.softwareengineering.util.Page;

@Controller
@RequestMapping("/question")
public class QuestionController {

	@Autowired
	QuestionService questionService;

	@RequestMapping("/index")
	public Object index() {
		return "question/index";
	}

	@ResponseBody
	@RequestMapping("/doIndex")
	public Object doIndex(@RequestParam(value = "pageno", required = false, defaultValue = "1") Integer pageno,
			@RequestParam(value = "pagesize", required = false, defaultValue = "10") Integer pagesize) {
		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> parammap = new HashMap<String, Object>();
			parammap.put("pageno", pageno);
			parammap.put("pagesize", pagesize);
			Page<UserQuestions> userQuestionsPage = questionService.queryQuestionPage(parammap);
			List<UserQuestions> list = (List<UserQuestions>) (userQuestionsPage.getData());

			for (UserQuestions q : list) {
				System.out.println(q.getUser_question_title());
			}

			System.out.println(userQuestionsPage.getTotalsize());
			result.setPage(userQuestionsPage);
			result.setSuccess(true);
			result.setMessage("查询成功！！！");
		} catch (Exception e) {
			result.setSuccess(false);
			result.setMessage("查询失败！！！");
			e.printStackTrace();
		}
		return result;
	}

	@ResponseBody
	@RequestMapping("/addReadNum")
	public Object addReadNum(@RequestParam(value = "questionid") Integer questionid) {
		AjaxResult result = new AjaxResult();
		try {
			if (questionService.updateReadNum(questionid)>0) {
				result.setData(questionService.queryReadCount(questionid));
			} else {
				result.setSuccess(false);
				result.setMessage("添加失败！！！");
			}
		} catch (Exception e) {
			result.setSuccess(false);
			result.setMessage("添加失败！！！");
		}
		result.setSuccess(true);
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/getCollect")
	public Object getCollect(Integer questionid) {
		AjaxResult result = new AjaxResult();
		try {
			List<Integer> collectusers = questionService
					.queryCollectusers(questionid);
			result.setData(collectusers);
			result.setSuccess(true);
			result.setMessage("查询成功");
		} catch (NullPointerException e) {
			result.setSuccess(false);
			e.printStackTrace();
			result.setMessage("查询数据失败！");
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/getTags")
	public Object getTags() {
		AjaxResult result = new AjaxResult();
		try {
			List<PsychoLabel> tags = questionService
					.queryTags();
			result.setData(tags);
			result.setSuccess(true);
			result.setMessage("查询成功");
		} catch (NullPointerException e) {
			result.setSuccess(false);
			e.printStackTrace();
			result.setMessage("查询数据失败！");
		}
		return result;
	}

	@ResponseBody
	@RequestMapping("/getSubTags")
	public Object getSubTags() {
		AjaxResult result = new AjaxResult();
		try {
			List<PsychoLabel> tags = questionService
					.querySubTags();
			result.setData(tags);
			result.setSuccess(true);
			result.setMessage("查询成功");
		} catch (NullPointerException e) {
			result.setSuccess(false);
			e.printStackTrace();
			result.setMessage("查询数据失败！");
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/doAnswerIndex")
	public Object doAnswerIndex(@RequestParam(value = "pageno", required = false, defaultValue = "1") Integer pageno,
			@RequestParam(value = "pagesize", required = false, defaultValue = "10") Integer pagesize) {
		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> parammap = new HashMap<String, Object>();
			parammap.put("pageno", pageno);
			parammap.put("pagesize", pagesize);
			Page<QuestionAnswer> userAnswerPage = questionService.queryAnswerPage(parammap);
			List<QuestionAnswer> list = (List<QuestionAnswer>) (userAnswerPage.getData());

			for (QuestionAnswer q : list) {
				System.out.println(q.getAnswerUser().getPsychouser_name());
				System.out.println(q.getQuestion().getUser_question_title());
			}

			System.out.println(userAnswerPage.getTotalsize());
			result.setPage(userAnswerPage);
			result.setSuccess(true);
			result.setMessage("查询成功！！！");
		} catch (Exception e) {
			result.setSuccess(false);
			result.setMessage("查询失败！！！");
			e.printStackTrace();
		}
		return result;
	}

	@RequestMapping("/toAdd")
	public String toAdd(String title, String content, HttpSession session) {
		return "question/addquestion";
	}

	@ResponseBody
	@RequestMapping("/doAdd")
	public Object doAdd(@RequestParam(value = "anonym", required = false, defaultValue = "1")Integer anonym, @RequestParam(value = "tags", required = false)String tags,String title, String content, HttpSession session) {
		PsychoUser user = (PsychoUser) session.getAttribute(Const.LOGIN_USER);
		AjaxResult result = new AjaxResult();
		if(user!=null) {
			List<Integer> tagList=new ArrayList<Integer>();
			try {
				title=URLDecoder.decode(title,"utf-8");
				content=URLDecoder.decode(content,"utf-8");
				tags=URLDecoder.decode(tags,"utf-8");
				for(String a:tags.split(",")) {
					tagList.add(Integer.valueOf(a));
				}
				
			} catch (UnsupportedEncodingException e1) {
				e1.printStackTrace();
			}
			System.out.println("这里"+title+content);
			System.out.println(tags);
			Map<String, Object> parammap = new HashMap<String, Object>();
			parammap.put("title", title);
			parammap.put("content", content);
			parammap.put("pultime", new Date());
			parammap.put("masterid", user.getPsychouser_id());
			parammap.put("tags", tagList);
			parammap.put("anonym", anonym);
			parammap.put("id", 0);
			try {
				questionService.insertQuestion(parammap);
				result.setSuccess(true);
			}catch(Exception e) {
				e.printStackTrace();
				result.setSuccess(false);
				result.setMessage("添加问题失败！！！");
			}
		}else {
			result.setSuccess(false);
			result.setMessage("未登录！！！");
		}
		return result;
	}

	@RequestMapping("/toQuestion")
	public String toQuestion(Integer id,HttpSession session, Map<String, Object> map) {

		UserQuestions question = questionService.queryQuestionById(id);
		map.put("question", question);
		return "question/question_detail";
	}
	

	@ResponseBody
	@RequestMapping("/doQuestionAnswer")
	public Object doQuestionAnswer(@RequestParam(value = "pageno", required = false, defaultValue = "1") Integer pageno,
			@RequestParam(value = "pagesize", required = false, defaultValue = "5") Integer pagesize,
			@RequestParam(value = "questionId", required = false) Integer questionId) {
		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> parammap = new HashMap<String, Object>();
			parammap.put("pageno", pageno);
			parammap.put("pagesize", pagesize);
			parammap.put("questionId", questionId);
			Page<QuestionAnswer> questionAnswerPage = questionService.queryQuestionAnswerPage(parammap);
			List<QuestionAnswer> list = (List<QuestionAnswer>) (questionAnswerPage.getData());
			/*
			 * System.out.println("回复列表："); for (QuestionAnswer a : list) {
			 * System.out.println(a.getQuestion_answer_content());
			 * System.out.println(a.getAnswerUser().getPsychouser_name()); }
			 */
			System.out.println(questionAnswerPage.getTotalsize());
			result.setPage(questionAnswerPage);
			result.setSuccess(true);
			result.setMessage("查询成功！！！");
		} catch (Exception e) {
			result.setSuccess(false);
			result.setMessage("查询失败！！！");
			e.printStackTrace();
		}
		return result;
	}

	@ResponseBody
	@RequestMapping("/doAddAnswer")
	public Object doAddAnswer(@RequestParam(value="answerpid",required=false)Integer parentanswerid,Integer userid, Integer questionId, String content) {
		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> parammap = new HashMap<String, Object>();
			parammap.put("userid", userid);
			parammap.put("questionId", questionId);
			parammap.put("content", URLDecoder.decode(content,"utf-8"));
			parammap.put("userid", userid);
			parammap.put("pultime",new Date());
			if(parentanswerid!=null) {
				parammap.put("parentanswerid",parentanswerid);
			}
			Integer addStatus = questionService.addQuestionAnswer(parammap);
			if (addStatus > 0) {
				result.setSuccess(true);
				result.setMessage("添加成功！！！");
			} else {
				result.setSuccess(false);
				result.setMessage("添加失败！！！");
			}
		} catch (Exception e) {
			result.setSuccess(false);
			result.setMessage("添加失败！！！");
			e.printStackTrace();
		}
		return result;
	}

	@RequestMapping("/toMyquestion")
	public String toMyquestion() {
		return "question/myquestion";
	}

	@ResponseBody
	@RequestMapping("/doMyquestion")
	public Object doMyquetion(HttpSession session) {
		AjaxResult result = new AjaxResult();
		List<UserQuestions> questions = questionService
				.getQuestionsByUserId(((PsychoUser) (session.getAttribute(Const.LOGIN_USER))).getPsychouser_id());
		try {
			result.setData(questions);
			result.setSuccess(true);
			result.setMessage("查询成功");
		} catch (NullPointerException e) {
			result.setSuccess(false);
			e.printStackTrace();
			result.setMessage("查询数据失败！");
		}
		return result;
	}

}
