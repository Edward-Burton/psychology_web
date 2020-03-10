package testcon;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.junit.Test;


public class TestCon {
	Connection con;
    public Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");  System.out.println("数据库驱动加载成功");
        } catch(ClassNotFoundException e){
            e.printStackTrace();
        }
        try {
            con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/practice?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT","root","root123");
            System.out.println("数据库连接成功");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return con;
    }

	@Test
	public void test() {
		TestCon c = new TestCon();
        try {
			Statement st = c.getConnection().createStatement();
			ResultSet rt = st.executeQuery("select * from client");
			while(rt.next()) {
				System.out.println(rt.getString("clientName"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		fail("Not yet implemented");
	}

}
