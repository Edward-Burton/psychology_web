package articletest;

import org.junit.Test;

import redis.clients.jedis.Jedis;

public class JedisTest {

	@Test
	public void test() {
		Jedis jedis = new Jedis("localhost");
		jedis.auth("psychology");
		System.out.println("连接成功");
		System.out.println("服务正在运行："+jedis.ping());
	}

}
