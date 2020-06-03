package cn.xhu.softwareengineering.potal.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.xhu.softwareengineering.bean.PsychoLabel;
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
	public int insertQuestion(Map<String, Object> parammap) {
		if(questionMapper.insertQuestion(parammap)>0) {
			return questionMapper.addQuestionLabel(parammap);
		}
		return 0;
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
	public Integer addQuestionAnswer(Map<String, Object> parammap) {
		return questionMapper.addQuestionAnswer(parammap);
	}

	@Override
	public Page<QuestionAnswer> queryAnswerPage(Map<String, Object> parammap) {
		Page<QuestionAnswer> page = new Page<QuestionAnswer>((Integer)parammap.get("pageno"), (Integer)parammap.get("pagesize"));
		parammap.put("startIndex",page.getStartIndex());
		List<QuestionAnswer> questionAnswer = questionMapper.queryAnswerPage(parammap);
		page.setData(questionAnswer);
		Integer totalsize = questionMapper.queryAnswerCount(new HashMap<String,Object>());
		System.out.println(totalsize);
		page.setTotalsize(totalsize);
		return page;
	}

	@Override
	public int updateReadNum(Integer questionid) {
		int cur = queryReadCount(questionid);
		cur+=1;
		Map<String, Object> parammap = new HashMap<String, Object>();
		parammap.put("questionid", questionid);
		parammap.put("viewnum", cur);
		return questionMapper.updatequestion(parammap);
	}

	@Override
	public int queryReadCount(Integer questionid) {
		return questionMapper.queryReadCount(questionid);
	}

	@Override
	public List<Integer> queryCollectusers(Integer questionid) {
		
		return questionMapper.querycollectuserById(questionid);
	}

	@Override
	public List<PsychoLabel> querySubTags() {
		return questionMapper.querySubTags();
	}

	@Override
	public List<PsychoLabel> queryTags() {
		return questionMapper.queryTags();
	}

	@Override
	public int updateHugNum(Integer questionid) {
		if(questionMapper.updateHugNum(questionid)>0) {
			return questionMapper.queryHugNum(questionid);
		}
		return 0;
	}

	@Override
	public List<PsychoLabel> queryCategoryList() {
		return questionMapper.queryCategoryList();
	}

}
