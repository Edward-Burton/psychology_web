package cn.xhu.softwareengineering.potal.service;

import java.util.List;
import java.util.Map;

import cn.xhu.softwareengineering.bean.QuestionAnswer;
import cn.xhu.softwareengineering.bean.UserQuestions;
import cn.xhu.softwareengineering.util.Page;

public interface QuestionService {
	
	int insertQuestion(UserQuestions quetion);
	List<UserQuestions> getQuestionsByUserId(int userId);
	Page<UserQuestions> queryQuestionPage(Map<String, Object> parammap);
	UserQuestions queryQuestionById(Integer questionId);
	Integer queryAnswerCount(Integer id);
	Page<QuestionAnswer> queryQuestionAnswerPage(Map<String, Object> parammap);
}
