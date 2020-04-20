package cn.xhu.softwareengineering.potal.service.impl;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.xhu.softwareengineering.bean.ArticleComments;
import cn.xhu.softwareengineering.bean.PsychoArticle;
import cn.xhu.softwareengineering.bean.PsychoCategory;
import cn.xhu.softwareengineering.bean.PsychoLabel;
import cn.xhu.softwareengineering.potal.dao.ArticleMapper;
import cn.xhu.softwareengineering.potal.service.ArticleService;
import cn.xhu.softwareengineering.util.Page;

@Service
public class ArticleServiceImpl implements ArticleService {

	@Autowired
	private ArticleMapper articleMapper;
	
	
	@Override
	public Page<PsychoArticle> queryArticlePage(Map<String ,Object> paramMap) {
		Page<PsychoArticle> page = new Page<PsychoArticle>((Integer)paramMap.get("pageno"),(Integer)paramMap.get("pagesize"));
		Integer startIndex = page.getStartIndex();
		paramMap.put("startIndex", startIndex);
		List<PsychoArticle> listArticle = articleMapper.queryList(paramMap);
		
		page.setData(listArticle);
		
		Integer totalsize =  articleMapper.queryCount(paramMap);
		
		page.setTotalsize(totalsize);
		
		System.out.println("article-service!!!");
		
		return page;
	}
	
	/*
	 * @Override public Page<PsychoArticle> queryArticlePage(Integer pageno, Integer
	 * pagesize) { Page<PsychoArticle> page = new
	 * Page<PsychoArticle>(pageno,pagesize); Integer startIndex =
	 * page.getStartIndex(); List<PsychoArticle> listArticle =
	 * articleMapper.queryList(startIndex,pagesize);
	 * 
	 * page.setData(listArticle);
	 * 
	 * Integer totalsize = articleMapper.queryCount();
	 * 
	 * page.setTotalsize(totalsize);
	 * 
	 * System.out.println("service:");
	 * 
	 * return page; }
	 */

	@Override
	public List<PsychoArticle> queryArticlePage() {
		System.out.println("service");

		//获得全部文章概览信息
		List<PsychoArticle> listArticle = articleMapper.selectAllArticles();
		System.out.println(listArticle.size());
		System.out.println(listArticle.toString());
		System.out.println("---------");
		for(PsychoArticle pa:listArticle) {
			if(pa!=null) {
				System.out.println(pa.getArticleTitle());
				if(pa.getPsychoCategory()!=null) {
					System.out.println(pa.getPsychoCategory().getPsycho_category_name());
				}
				
				//获得文章发布用户简单信息
				System.out.println(pa.getArticleUser().getPsychouser_name());
				System.out.println("文章发布时间:");
				//获取后台传来的时间并转换为长整形数据
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				 sdf.setTimeZone(TimeZone.getTimeZone("GMT")); 
				System.out.println(sdf.format(pa.getPubTime()));
				
				//获得文章标签
				List<PsychoLabel> listlabels = pa.getArticleLabels();
				for(PsychoLabel pl:listlabels) {
					System.out.print(pl.getPsycho_label_name()+"-");
				}
				System.out.println();
				
			}
		}
		
		//通过分类ID获得文章  
		List<PsychoArticle> listArticle0 = articleMapper.selectArticlesByCategoryId(2);
		for(PsychoArticle pa:listArticle0) {
			if(pa!=null) {
				System.out.println("通过分类查："+pa.getArticleTitle()+"--"+pa.getPsychoCategory().getPsycho_category_name());
			}
		}
		
		//通过文章ID获得文章详情信息
		PsychoArticle pa = articleMapper.selectArticleById(1);
		System.out.println(pa.getArticleTitle());
		System.out.println(pa.getContent());
		//获得文章评论列表
		System.out.println("评论：");
		List<ArticleComments> commentslist = pa.getArticleComments();
		for(ArticleComments ac:commentslist) {
					System.out.println(ac.getArticle_comment_pulcontent());
		}
		
		
		//文章下添加评论信息
		/*
		 * ArticleComments ac = new ArticleComments(); ac.setComment_article_id(2);
		 * ac.setArticle_comment_pultime("2020-03-13 22:48:34");
		 * ac.setComment_user_id(2); ac.setArticle_comment_pulcontent("有点意思"); int count
		 * = articleMapper.insertArticleComment(ac);
		 * System.out.println("影响行数 : "+count); int commentId =
		 * ac.getArticle_comment_id(); System.out.println("评论自增ID ： "+commentId);
		 */
		
		return listArticle;
	}

	@Override
	public int addArticle(PsychoArticle psychoArticle) {
		
		int n = articleMapper.addArticle(psychoArticle);
		int id = psychoArticle.getArticleId();
		System.out.println("影响行数 : "+n);
		System.out.println("文章自增ID ： "+id);
		return n;
	}

	@Override
	public PsychoArticle getArticleById(Integer id) {
		return articleMapper.selectArticleById(id);
	}

	@Override
	public List<PsychoCategory> queryCategory(Map<String,Object> paramMap) {
		return articleMapper.queryCategory(paramMap);
	}

	@Override
	public List<ArticleComments> queryComment(Map<String, Object> paramMap) {
		return articleMapper.queryComment(paramMap);
	}

	@Override
	public int queryUserIsLike(Map<String, Integer> likemap) {
		return articleMapper.queryUserIsLike(likemap);
	}

	@Override
	public int queryLikeCountById(Map<String, Integer> likemap) {
		return articleMapper.queryLikeCountById(likemap);
	}

	@Override
	public int updateReadNum(Integer articleid) {
		int curReadnum = articleMapper.selectArticleById(articleid).getReadsNum();
		int nowReadnum = curReadnum+1;
		
		Map<String,Object> parammap = new HashMap<String,Object>();
		parammap.put("articleid", articleid);
		parammap.put("nowReadnum", nowReadnum);
		articleMapper.updateArticle(parammap);
		
		return articleMapper.selectArticleById(articleid).getReadsNum();
	}

	@Override
	public int addComment(Map<String, Object> paramMap) {
		return articleMapper.addComment(paramMap);
	}



	

}
