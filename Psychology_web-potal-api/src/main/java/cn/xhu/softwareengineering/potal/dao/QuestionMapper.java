package cn.xhu.softwareengineering.potal.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import cn.xhu.softwareengineering.bean.QuestionAnswer;
import cn.xhu.softwareengineering.bean.UserQuestions;

public interface QuestionMapper {

	int insertQuestion(UserQuestions question);
	List<UserQuestions> getQuestionsByUserId(@Param("id")int userId);
	List<UserQuestions> queryQuestionPage(Map<String, Object> parammap);
	Integer queryQuestionCount();
	UserQuestions queryQuestionById(@Param("question_id")Integer questionId);
	//Integer queryAnswerCount(Integer questionId);
	Integer queryAnswerCount(Map<String, Object> parammap);
	List<QuestionAnswer> queryQuestionAnswerPage(Map<String, Object> parammap);
	Integer addQuestionAnswer(QuestionAnswer questionAnswer);
	List<QuestionAnswer> queryAnswerPage(Map<String, Object> parammap);
}
