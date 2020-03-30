package articletest;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.xhu.softwareengineering.bean.PsychoArticle;
import cn.xhu.softwareengineering.potal.service.ArticleService;
import cn.xhu.softwareengineering.potal.service.impl.ArticleServiceImpl;

public class ArticleTester {
	ApplicationContext ioc = new ClassPathXmlApplicationContext("classpath*:spring/spring-context.xml");

	@Test
	public void test() {
		ArticleService  articleService = ioc.getBean(ArticleServiceImpl.class);
		List<PsychoArticle> list=articleService.queryArticlePage();
		System.out.println(list.size());
		
	}

}
