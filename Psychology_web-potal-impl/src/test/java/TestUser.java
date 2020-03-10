import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.xhu.softwareengineering.manager.service.TestService;

@RunWith(SpringJUnit4ClassRunner.class)
public class TestUser {
	ApplicationContext ioc = new ClassPathXmlApplicationContext("classpath*:spring/spring-context.xml");
	@Test
	public void test() {
		System.out.println(ioc.getBean(TestService.class).getClass());
	}

}
