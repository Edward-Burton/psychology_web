package cn.xhu.softwareengineering.potal.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.xhu.softwareengineering.bean.CourseCatalog;
import cn.xhu.softwareengineering.bean.CourseProfession;
import cn.xhu.softwareengineering.bean.CourseTeacher;
import cn.xhu.softwareengineering.bean.Lesson;
import cn.xhu.softwareengineering.bean.Order;
import cn.xhu.softwareengineering.bean.PsychoCourse;
import cn.xhu.softwareengineering.bean.SaleComment;
import cn.xhu.softwareengineering.bean.SalesQuestion;
import cn.xhu.softwareengineering.potal.dao.CourseMapper;
import cn.xhu.softwareengineering.potal.service.CourseService;
import cn.xhu.softwareengineering.util.Page;

@Service
public class CourseServiceImpl implements CourseService{
	
	@Autowired
	CourseMapper courseMapper;

	@Override
	public Page<PsychoCourse> queryCoursePage(Map<String, Object> paramMap) {
		Page<PsychoCourse> coursePage = new Page<PsychoCourse>((Integer)paramMap.get("pageno"),(Integer)paramMap.get("pagesize"));
		Integer startIndex=coursePage.getStartIndex();
		paramMap.put("startIndex", startIndex);
		coursePage.setData(courseMapper.queryCoursePage(paramMap));
		Map<String,Object> param = new HashMap<String,Object>();
		Integer totalsize = courseMapper.queryCourseCount(paramMap);
		coursePage.setTotalsize(totalsize);
		return coursePage;
	}

	@Override
	public List<PsychoCourse> queryRecommendCourse(Map<String, Object> paramMap) {
		
		return courseMapper.queryCourseBy(paramMap);
	}

	@Override
	public List<CourseTeacher> queryInstructor() {
		return courseMapper.queryInstructor();
	}

	@Override
	public List<CourseProfession> queryProfession() {
		return courseMapper.queryProfession();
	}

	@Override
	public PsychoCourse queryCourseByid(Integer id) {
		return courseMapper.queryCourseByid(id);
	}

	@Override
	public Order queryOrder(Map<String, Object> paramMap) {
		return courseMapper.queryOrder(paramMap);
	}

	@Override
	public List<CourseCatalog> queryCourseCatalog(Integer courseid) {
		return courseMapper.queryCourseCatalog(courseid);
	}

	@Override
	public List<SaleComment> queryCourseComment(Integer courseid) {
		return courseMapper.queryCourseComment(courseid);
	}

	@Override
	public List<SalesQuestion> queryCourseQuestion(Integer courseid) {
		return courseMapper.queryCourseQuestion(courseid);
	}

	@Override
	public int addCourseComment(Map<String, Object> paramMap) {
		return courseMapper.addCourseComment(paramMap);
	}

	@Override
	public int addCourseQuestion(Map<String, Object> paramMap) {
		return courseMapper.addCourseQuestion(paramMap);
	}

	@Override
	public int addQuestionAnswer(Map<String, Object> paramMap) {
		return courseMapper.addQuestionAnswer(paramMap);
	}

	@Override
	public int deleteCourseQuestion(Integer Commentid) {
		return courseMapper.deleteCourseQuestion(Commentid);
	}

	@Override
	public List<Lesson> queryTryList(Integer courseid) {
		return courseMapper.queryTryList(courseid);
	}

	@Override
	public Order addOrder(Order order) {
		if(courseMapper.addOrder(order)>0) {
			return order;
		}
		return null;
	}

	
	
}
