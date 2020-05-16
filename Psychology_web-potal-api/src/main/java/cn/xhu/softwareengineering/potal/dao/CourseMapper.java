package cn.xhu.softwareengineering.potal.dao;

import java.util.List;
import java.util.Map;

import cn.xhu.softwareengineering.bean.CourseCatalog;
import cn.xhu.softwareengineering.bean.CourseProfession;
import cn.xhu.softwareengineering.bean.CourseTeacher;
import cn.xhu.softwareengineering.bean.Lesson;
import cn.xhu.softwareengineering.bean.Order;
import cn.xhu.softwareengineering.bean.PsychoCourse;
import cn.xhu.softwareengineering.bean.SaleComment;
import cn.xhu.softwareengineering.bean.SalesQuestion;

public interface CourseMapper {

	Integer queryCourseCount(Map<String, Object> paramMap);

	List<PsychoCourse> queryCoursePage(Map<String, Object> paramMap);

	List<PsychoCourse> queryCourseBy(Map<String, Object> paramMap);

	List<CourseTeacher> queryInstructor();

	List<CourseProfession> queryProfession();

	PsychoCourse queryCourseByid(Integer id);

	Order queryOrder(Map<String, Object> paramMap);

	Integer queryCatalogMaxLevel(Integer courseid);

	List<CourseCatalog> queryCourseCatalog(Integer courseid);

	List<SaleComment> queryCourseComment(Integer courseid);

	List<SalesQuestion> queryCourseQuestion(Integer courseid);

	int addCourseComment(Map<String, Object> paramMap);

	int addCourseQuestion(Map<String, Object> paramMap);

	int addQuestionAnswer(Map<String, Object> paramMap);

	int deleteCourseQuestion(Integer Commentid);

	List<Lesson> queryTryList(Integer courseid);


}
