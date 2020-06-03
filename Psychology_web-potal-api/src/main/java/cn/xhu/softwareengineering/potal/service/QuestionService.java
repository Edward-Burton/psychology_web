package cn.xhu.softwareengineering.potal.service;

import java.util.List;
import java.util.Map;

import cn.xhu.softwareengineering.bean.PsychoLabel;
import cn.xhu.softwareengineering.bean.QuestionAnswer;
import cn.xhu.softwareengineering.bean.UserQuestions;
import cn.xhu.softwareengineering.util.Page;

public interface QuestionService {
	
	int insertQuestion(Map<String, Object> parammap);
	List<UserQuestions> getQuestionsByUserId(int userId);
	Page<UserQuestions> queryQuestionPage(Map<String, Object> parammap);
	UserQuestions queryQuestionById(Integer questionId);
	//Integer queryAnswerCount(Integer id);
	Integer queryAnswerCount(Map<String, Object> param);
	Page<QuestionAnswer> queryQuestionAnswerPage(Map<String, Object> parammap);
	Integer addQuestionAnswer(Map<String, Object> parammap);
	Page<QuestionAnswer> queryAnswerPage(Map<String, Object> parammap);
	int updateReadNum(Integer questionid);
	int queryReadCount(Integer questionid);
	List<Integer> queryCollectusers(Integer questionid);
	List<PsychoLabel> querySubTags();
	List<PsychoLabel> queryTags();
	int updateHugNum(Integer questionid);
	List<PsychoLabel> queryCategoryList();
}
