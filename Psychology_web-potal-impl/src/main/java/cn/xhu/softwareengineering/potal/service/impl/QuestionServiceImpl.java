package cn.xhu.softwareengineering.potal.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.xhu.softwareengineering.bean.QuestionAnswer;
import cn.xhu.softwareengineering.bean.UserQuestions;
import cn.xhu.softwareengineering.potal.dao.QuestionMapper;
import cn.xhu.softwareengineering.potal.service.QuestionService;
import cn.xhu.softwareengineering.util.Page;

@Service
public class QuestionServiceImpl implements QuestionService {
	
	@Autowired
	QuestionMapper questionMapper;

	@Override
	public int insertQuestion(UserQuestions question) {
		return questionMapper.insertQuestion(question);
	}

	@Override
	public List<UserQuestions> getQuestionsByUserId(int userId) {
		
		return questionMapper.getQuestionsByUserId(userId);
	}

	@Override
	public Page<UserQuestions> queryQuestionPage(Map<String, Object> parammap) {
		Page<UserQuestions> page = new Page<UserQuestions>((Integer)parammap.get("pageno"), (Integer)parammap.get("pagesize"));
		parammap.put("startIndex",page.getStartIndex());
		List<UserQuestions> userQuestions = questionMapper.queryQuestionPage(parammap);
		page.setData(userQuestions);
		Integer totalsize = questionMapper.queryQuestionCount();
		page.setTotalsize(totalsize);
		return page;
	}

	@Override
	public UserQuestions queryQuestionById(Integer questionId) {
		return questionMapper.queryQuestionById(questionId);
	}

	@Override
	public Integer queryAnswerCount(Map<String, Object> param) {
		return questionMapper.queryAnswerCount(param);
	}

	@Override
	public Page<QuestionAnswer> queryQuestionAnswerPage(Map<String, Object> parammap) {
		Page<QuestionAnswer> questionAnswerpage = new Page<QuestionAnswer>((Integer)parammap.get("pageno"),(Integer)parammap.get("pagesize"));
		Integer startIndex=questionAnswerpage.getStartIndex();
		parammap.put("startIndex", startIndex);
		questionAnswerpage.setData(questionMapper.queryQuestionAnswerPage(parammap));
		Map<String,Object> param = new HashMap<String,Object>();
		param.put("questionId", parammap.get("questionId"));
		questionAnswerpage.setTotalsize(questionMapper.queryAnswerCount(param));
		return questionAnswerpage;
	}

	@Override
	public Integer addQuestionAnswer(QuestionAnswer questionAnswer) {
		return questionMapper.addQuestionAnswer(questionAnswer);
	}

	@Override
	public Page<QuestionAnswer> queryAnswerPage(Map<String, Object> parammap) {
		Page<QuestionAnswer> page = new Page<QuestionAnswer>((Integer)parammap.get("pageno"), (Integer)parammap.get("pagesize"));
		parammap.put("startIndex",page.getStartIndex());
		List<QuestionAnswer> questionAnswer = questionMapper.queryAnswerPage(parammap);
		page.setData(questionAnswer);
		Integer totalsize = questionMapper.queryAnswerCount(new HashMap<String,Object>());
		page.setTotalsize(totalsize);
		return page;
	}

}
