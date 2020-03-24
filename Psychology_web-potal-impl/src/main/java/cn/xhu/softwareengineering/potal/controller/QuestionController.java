package cn.xhu.softwareengineering.potal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/question")
public class QuestionController {
	
	 @RequestMapping ("/index")
	    public String index() {
	    	return "question/index";
	    }


    @RequestMapping ("/toAdd")
    public String toAdd() {
    	return "question/addquestion";
    }
}
