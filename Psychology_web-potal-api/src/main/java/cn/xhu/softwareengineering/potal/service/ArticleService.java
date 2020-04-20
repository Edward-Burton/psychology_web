package cn.xhu.softwareengineering.potal.service;

import java.util.List;
import java.util.Map;

import cn.xhu.softwareengineering.bean.ArticleComments;
import cn.xhu.softwareengineering.bean.PsychoArticle;
import cn.xhu.softwareengineering.bean.PsychoCategory;
import cn.xhu.softwareengineering.util.Page;

public interface ArticleService {
	
	List<PsychoArticle> queryArticlePage();
	int addArticle(PsychoArticle psychoArticle);
	Page<PsychoArticle> queryArticlePage(Map<String ,Object> paramMap);
	PsychoArticle getArticleById(Integer id);
	List<PsychoCategory> queryCategory(Map<String,Object> paramMap);
	List<ArticleComments> queryComment(Map<String, Object> paramMap);
	int queryUserIsLike(Map<String, Integer> likemap);
	int queryLikeCountById(Map<String, Integer> likemap);
	int updateReadNum(Integer articleid);
	int addComment(Map<String, Object> paramMap);
}
