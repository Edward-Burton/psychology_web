package cn.xhu.softwareengineering.potal.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.xhu.softwareengineering.bean.PsychoArticle;
import cn.xhu.softwareengineering.potal.dao.ArticleMapper;
import cn.xhu.softwareengineering.potal.service.ArticleService;

@Service
public class ArticleServiceImpl implements ArticleService {

	@Autowired
	private ArticleMapper articleMapper;
	
	@Override
	public List<PsychoArticle> showAllArticle() {
		List<PsychoArticle> listArticle = articleMapper.selectAllArticles();
		System.out.println("service");
		System.out.println(listArticle.size());
		System.out.println(listArticle.toString());
		System.out.println("---------");
		for(PsychoArticle pa:listArticle) {
			if(pa!=null) {
				System.out.println(pa.getArticleTitle());
				System.out.println(pa.getPsychoCategory().getCategoryName());
			}
		}
		//通过分类ID获得文章
		List<PsychoArticle> listArticle0 = articleMapper.selectArticlesByCategoryId(2);
		for(PsychoArticle pa:listArticle0) {
			if(pa!=null) {
				System.out.println("通过分类查："+pa.getArticleTitle()+"--"+pa.getPsychoCategory().getCategoryName());
			}
		}
		return listArticle;
	}

}
