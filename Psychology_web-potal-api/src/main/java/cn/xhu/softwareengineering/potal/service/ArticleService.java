package cn.xhu.softwareengineering.potal.service;

import java.util.List;

import cn.xhu.softwareengineering.bean.PsychoArticle;
import cn.xhu.softwareengineering.util.Page;

public interface ArticleService {
	
	List<PsychoArticle> queryArticlePage();
	int addArticle(PsychoArticle psychoArticle);
	Page<PsychoArticle> queryArticlePage(Integer pageno, Integer pagesize);
}
