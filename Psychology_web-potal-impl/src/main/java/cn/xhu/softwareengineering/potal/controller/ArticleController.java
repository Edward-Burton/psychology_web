package cn.xhu.softwareengineering.potal.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.xhu.softwareengineering.bean.PsychoArticle;
import cn.xhu.softwareengineering.potal.service.ArticleService;

@Controller
public class ArticleController {

	@Autowired
	private ArticleService articleService;
	
	@RequestMapping("/Article")
	public String showAllArticle(Model model) {
		List<PsychoArticle> list = articleService.showAllArticle();
		model.addAttribute("articlelist",list);
		System.out.println(((PsychoArticle)list.get(1)).getArticleTitle());
		
		return "article_index";
	}
	
}
