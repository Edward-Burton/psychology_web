package cn.xhu.softwareengineering.potal.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import cn.xhu.softwareengineering.bean.ArticleComments;
import cn.xhu.softwareengineering.bean.PsychoArticle;
import cn.xhu.softwareengineering.bean.PsychoCategory;

public interface ArticleMapper {

	List<PsychoArticle> selectAllArticles();
	
	List<PsychoArticle> selectArticlesByCategoryId(@Param("id")int categoryId);
	
	PsychoArticle selectArticleById(@Param("id")int articleId);
	
	int insertArticleComment(ArticleComments articleComment);
	
	int addArticle(PsychoArticle psychoArticle);

	List<PsychoArticle> queryList(@Param("startIndex")Integer startIndex, @Param("pagesize")Integer pagesize);
	Integer queryCount();
	
	List<PsychoArticle> queryList(Map<String,Object> paramMap);

	Integer queryCount(Map<String,Object> paramMap);
	
	List<PsychoCategory> queryCategory(Map<String,Object> paramMap);

	List<ArticleComments> queryComment(Map<String, Object> paramMap);

	int queryUserIsLike(Map<String, Integer> likemap);

	int queryLikeCountById(Map<String, Integer> likemap);

	int updateArticle(Map<String, Object> parammap);

	int addComment(Map<String, Object> paramMap);
}
