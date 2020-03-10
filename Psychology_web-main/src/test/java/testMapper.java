import javax.activation.DataSource;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.xhu.softwareengineering.manager.dao.TestDao;


public class testMapper {
	String resource = "mybatis-config.xml";
	//SqlSession sqlSession = (SqlSession) new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream(resource));

	@Autowired
	private TestDao testDao;
	
	ApplicationContext ac =null;
	
	@Test
	public void testInsert() {
		ac=new ClassPathXmlApplicationContext("classpath:springmvc-context.xml");
		DataSource dataSource = ac.getBean(DataSource.class);
		
//		Map map = new HashMap();
//		map.put("name", "tester");
//		testDao.insert(map);
		System.out.println(dataSource.getName());
		
	}

}
