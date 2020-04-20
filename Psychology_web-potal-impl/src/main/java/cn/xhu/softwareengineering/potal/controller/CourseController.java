package cn.xhu.softwareengineering.potal.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/course")
public class CourseController {
	
	@RequestMapping("/index")
	public String toIndex(Map<String, Object> map) {
		return "course/index";
	}
	
	@RequestMapping("/doindex")
	public String doIndex(Map<String, Object> map) {
		return "course/index";
	}
	
	@RequestMapping("/course")
	public String toCourse(Map<String, Object> map) {
		return "course/course";
	}

}
