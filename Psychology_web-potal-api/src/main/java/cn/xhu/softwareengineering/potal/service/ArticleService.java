package cn.xhu.softwareengineering.potal.service;

import java.util.List;

import cn.xhu.softwareengineering.bean.PsychoArticle;

public interface ArticleService {
	
	List<PsychoArticle> showAllArticle();
	int addArticle(PsychoArticle psychoArticle);
}
