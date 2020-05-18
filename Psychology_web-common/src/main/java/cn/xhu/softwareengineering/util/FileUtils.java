package cn.xhu.softwareengineering.util;
import java.io.File;
import java.io.IOException;

public class FileUtils {
	public static String getProjectDir(){
		String path = FileUtils.class.getResource("/area").getPath();
		System.out.println(path);
        File directory = new File(path);// 参数为空
        String courseFile = null;
        try {
            courseFile = directory.getCanonicalPath();
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println(courseFile);
        return courseFile;
    }
}
