package cn.xhu.softwareengineering.potal.service.impl;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import cn.xhu.softwareengineering.bean.UploadFile;

@Service
public class FileService {
	private static Logger logger = Logger.getLogger(FileService.class);

	public UploadFile saveFile(HttpServletRequest request, String type) throws IOException {
		logger.debug("获取上传文件...");

		// 转换为文件类型的request
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;

		// 获取对应file对象
		Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
		Iterator<String> fileIterator = multipartRequest.getFileNames();

		// 获取项目的相对路径（http://localhost:8080/file）
		String requestURL = request.getRequestURL().toString();
		String prePath = requestURL.substring(0, requestURL.indexOf("Psychology_web-main"));

		while (fileIterator.hasNext()) {
			String fileKey = fileIterator.next();
			logger.debug("文件名为：" + fileKey);
			System.out.println("文件名为：" + fileKey);
			// 获取对应文件
			MultipartFile multipartFile = fileMap.get(fileKey);

			if (multipartFile.getSize() != 0L) {
				if (type == "img") {
					validateImage(multipartFile);
					String saveDirectory = request.getSession().getServletContext()
							.getRealPath("img" + File.separator + "articleimages");

					// 调用saveImage方法保存
					UploadFile file = saveImage(multipartFile, saveDirectory);
					file.setPrePath(prePath);
					return file;
				}
			}
		}

		return null;
	}

	private UploadFile saveImage(MultipartFile image, String saveDirectory) throws IOException {
		String originalFilename = image.getOriginalFilename();
		logger.debug("文件原始名称为:" + originalFilename);
		System.out.println("文件原始名称为:" + originalFilename);
		String contentType = image.getContentType();
		String type = contentType.substring(contentType.indexOf("/") + 1);
		String fileName = System.currentTimeMillis() + new Random().nextInt(100) + "." + type;

		// 封装一个简单的file对象
		UploadFile file = new UploadFile(saveDirectory, fileName);
		file.setContentType(contentType);

		logger.debug("文件保存路径：" + file.getSaveDirectory());
		System.out.println("文件保存路径：" + file.getSaveDirectory());
		// 通过org.apache.commons.io.FileUtils的writeByteArrayToFile对图片进行保存
		FileUtils.writeByteArrayToFile(file.getFile(), image.getBytes());

		return file;
	}
	
	public UploadFile saveFileByPath(HttpServletRequest request,String path) throws Exception {
		try{
			 /* path = path.replace("file:///",""); //去掉file前缀
			pathName_ = "/image/" + Instant.now().getEpochSecond() + "/" +
	                UUIDUtil.uuid() + "." +
	                StringUtils.substringAfterLast(path+"", ".");
			 *  */  
	        String type = FilenameUtils.getExtension(path);
	        String fileName = System.currentTimeMillis() + new Random().nextInt(100) + "." + type;
	        String saveDirectory = request.getSession().getServletContext()
					.getRealPath("img" + File.separator + "articleimages");
	        String filepath = saveDirectory+File.separator+fileName;
	        
	        UploadFile file = new UploadFile(saveDirectory, fileName);
			file.setContentType(type);
	        file.getFile();
	        file.setPrePath(request.getRequestURL().toString().substring(0, request.getRequestURL().toString().indexOf("Psychology_web-main")));
			System.out.println("saveDirectory:"+file.getSaveDirectory());
			System.out.println("fileName:"+file.getFileName());
	        System.out.println("accesspath: "+file.getCompleteSavePath());
	        
			System.out.println("filepath:"+filepath);
			File targetFile = new File(filepath);
			if (!targetFile.exists()) {
				targetFile.getParentFile().mkdirs();
			}
	        
	      //读取文件(字节流)
			URL url = new URL(path);
			InputStream in = new BufferedInputStream(url.openStream());
			/* InputStream in = new FileInputStream(path); */
	        //写入相应的文件
	        OutputStream out = new FileOutputStream(filepath);
	        //读取数据
	        //一次性取多少字节
	        byte[] bytes = new byte[2048];
	        //接受读取的内容(n就代表的相关数据，只不过是数字的形式)
	        int n = -1;
	        //循环取出数据
	        while ((n = in.read(bytes,0,bytes.length)) != -1) {
	            //转换成字符串
	            //String str = new String(bytes,0,n,"UTF-8");//这里可以实现字节到字符串的转换，比较实用
	            // System.out.println(str);
	            //写入相关文件
	            out.write(bytes, 0, n);
	        }
	        //关闭流
	        in.close();
	        out.close();
	        return file;
	    }catch (Exception e){
	        e.printStackTrace();
	        throw  new Exception("上传失败");
	    }
	}

	private void validateImage(MultipartFile image) {

	}

	public boolean deletefile(HttpServletRequest request,String imgSrc) {
		boolean flag = false;  
		System.out.println("已获取的src ："+imgSrc);
		String realname =  imgSrc.substring(imgSrc.lastIndexOf("articleimages/"));
		System.out.println("已获取的文件名："+realname);
	    String sPath = request.getSession().getServletContext()
				.getRealPath("img" +File.separator+realname);
	    System.out.print("sPath："+sPath);
	    File file = new File(sPath);  
	    // 路径为文件且不为空则进行删除  
	    if (file.isFile() && file.exists()) {  
	        file.delete();  
	        flag = true;  
	    }
	    
		return flag;
	}

}
