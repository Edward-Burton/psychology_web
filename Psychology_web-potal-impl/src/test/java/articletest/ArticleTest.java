package articletest;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.xhu.softwareengineering.potal.service.ArticleService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath*:spring/spring-*.xml")
public class ArticleTest {
	//ApplicationContext ioc = new ClassPathXmlApplicationContext("classpath*:spring/spring-context.xml");
	
	@Autowired
	ArticleService articleService;
	
	@Test
	public void test() {
		articleService.queryArticlePage();
	}

}
