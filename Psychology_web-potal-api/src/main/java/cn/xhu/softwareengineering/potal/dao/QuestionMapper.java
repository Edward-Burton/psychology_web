package cn.xhu.softwareengineering.potal.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import cn.xhu.softwareengineering.bean.PsychoLabel;
import cn.xhu.softwareengineering.bean.QuestionAnswer;
import cn.xhu.softwareengineering.bean.UserQuestions;

public interface QuestionMapper {

	int insertQuestion(Map<String, Object> parammap);
	List<UserQuestions> getQuestionsByUserId(@Param("id")int userId);
	List<UserQuestions> queryQuestionPage(Map<String, Object> parammap);
	Integer queryQuestionCount();
	UserQuestions queryQuestionById(@Param("question_id")Integer questionId);
	//Integer queryAnswerCount(Integer questionId);
	Integer queryAnswerCount(Map<String, Object> parammap);
	List<QuestionAnswer> queryQuestionAnswerPage(Map<String, Object> parammap);
	Integer addQuestionAnswer(Map<String, Object> parammap);
	List<QuestionAnswer> queryAnswerPage(Map<String, Object> parammap);
	int updatequestion(Map<String, Object> parammap);
	int queryReadCount(Integer questionid);
	List<Integer> querycollectuserById(Integer questionid);
	List<PsychoLabel> querySubTags();
	List<PsychoLabel> queryTags();
	int addQuestionLabel(Map<String, Object> parammap);
}
