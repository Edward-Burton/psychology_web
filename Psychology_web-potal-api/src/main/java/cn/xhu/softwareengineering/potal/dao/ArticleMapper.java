package cn.xhu.softwareengineering.potal.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.xhu.softwareengineering.bean.ArticleComments;
import cn.xhu.softwareengineering.bean.PsychoArticle;

public interface ArticleMapper {

	List<PsychoArticle> selectAllArticles();
	
	List<PsychoArticle> selectArticlesByCategoryId(@Param("id")int categoryId);
	
	PsychoArticle selectArticleById(@Param("id")int articleId);
	
	int insertArticleComment(ArticleComments articleComment);
}
