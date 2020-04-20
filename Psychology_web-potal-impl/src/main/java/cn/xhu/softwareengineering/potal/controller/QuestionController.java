package cn.xhu.softwareengineering.potal.controller;

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
				System.out.println(q.getQuestion_answer_content());
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
	public Object doAdd(String title, String content, HttpSession session) {
		AjaxResult result = new AjaxResult();
		UserQuestions question = new UserQuestions();
		Date now = new Date();
		question.setUser_question_title(title);
		question.setUser_question_content(content);
		question.setUser_question_pultime(now);
		question.setQuestion_master_id(1);
		// question.setUser_question_id(((PsychoUser)(session.getAttribute(Const.LOGIN_USER))).getPsychouser_id());

		if (questionService.insertQuestion(question) > 0) {
			System.out.println("这里");
			System.out.println(question.getUser_question_id() + question.getUser_question_title()
					+ question.getUser_question_content());
			result.setSuccess(true);
			return "question/myquestion";
			// return result;
		}
		result.setSuccess(false);
		return result;
	}

	@RequestMapping("/toQuestion")
	public String toQuestion(Integer id, Map<String, Object> map) {

		UserQuestions question = questionService.queryQuestionById(id);
		map.put("question", question);
		Map<String,Object> param = new HashMap<String,Object>();
		param.put("questionId",id);
		int answerCount = questionService.queryAnswerCount(param);
		map.put("answerCount", answerCount);

		return "question/question";
	}

	@ResponseBody
	@RequestMapping("/doQuestionAnswer")
	public Object doQuestionAnswer(@RequestParam(value = "pageno", required = false, defaultValue = "1") Integer pageno,
			@RequestParam(value = "pagesize", required = false, defaultValue = "5") Integer pagesize,
			@RequestParam(value = "questionId", required = false) Integer questionId) {

		System.out.println(questionId);

		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> parammap = new HashMap<String, Object>();
			parammap.put("pageno", pageno);
			parammap.put("pagesize", pagesize);
			parammap.put("questionId", questionId);
			Page<QuestionAnswer> questionAnswerPage = questionService.queryQuestionAnswerPage(parammap);
			List<QuestionAnswer> list = (List<QuestionAnswer>) (questionAnswerPage.getData());
			System.out.println("回复列表：");
			for (QuestionAnswer a : list) {
				System.out.println(a.getQuestion_answer_content());
				System.out.println(a.getAnswerUser().getPsychouser_name());
			}

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
	public Object doAddAnswer(QuestionAnswer qa,HttpSession session) {
		qa.setQuestion_answer_pultime(new Date());
		qa.setAnswerUser((PsychoUser)session.getAttribute(Const.LOGIN_USER));;
		System.out.println(qa.getQuestion_id());
		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> parammap = new HashMap<String, Object>();
			parammap.put("questionAnswer", qa);
			Integer addStatus = questionService.addQuestionAnswer(qa);
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
