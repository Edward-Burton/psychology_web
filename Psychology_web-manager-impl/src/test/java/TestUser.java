import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.xhu.softwareengineering.manager.service.TestService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath*:spring/spring-*.xml"}) 
public class TestUser {
	
	@Autowired
	TestService testService;//=ioc.getBean(TestServiceImpl.class);
	
	@Test
	public void test() {
//		ApplicationContext ioc = new ClassPathXmlApplicationContext("classpath*:spring/spring-context.xml");
		
		testService.insert();
	}

}
 