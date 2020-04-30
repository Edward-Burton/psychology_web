package cn.xhu.softwareengineering.potal.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.xhu.softwareengineering.bean.UploadFile;
import cn.xhu.softwareengineering.potal.service.impl.FileService;
import cn.xhu.softwareengineering.util.AjaxResult;

@Controller
@RequestMapping(value = "/file")
public class FileController {
	private static Logger logger = Logger.getLogger(FileController.class);

	@Autowired
	private FileService fileService;

	@ResponseBody
	@RequestMapping("/img")
	public Object index(HttpServletRequest request) {
		logger.debug("获取上传文件...");
		AjaxResult result = new AjaxResult();
		try {
			UploadFile uploadFiles = fileService.saveFile(request, "img");
			result.setSuccess(true);
			result.setData(uploadFiles);
			result.setMessage("文件上传成功");
		} catch (Exception e) {
			logger.error(e.getMessage());
			logger.error(e.getMessage(), e);
			result.setSuccess(false);
			result.setMessage("文件上传失败");
		}
		return result;
	}

	@ResponseBody
	@RequestMapping("/pathupload")
	public Object pathupload(HttpServletRequest request, String imgpath) {
		logger.debug("获取上传文件...");
		AjaxResult result = new AjaxResult();
		try {
			UploadFile uploadFiles = fileService.saveFileByPath(request, imgpath);
			result.setSuccess(true);
			result.setData(uploadFiles);
			result.setMessage("文件上传成功");
		} catch (Exception e) {
			logger.error(e.getMessage());
			logger.error(e.getMessage(), e);
			result.setSuccess(false);
			result.setMessage("文件上传失败");
		}
		return result;
	}

	@ResponseBody
	@RequestMapping("/deletefile")
	public Object deletefile(HttpServletRequest request,@RequestParam(value =  "imgSrc" , required = false) String imgSrc) {
		logger.debug("获取上传文件...");
		System.out.println("已获取的src ："+imgSrc);
		AjaxResult result = new AjaxResult();
		try {
			if (fileService.deletefile(request,imgSrc)) {
				result.setSuccess(true);
				result.setMessage("文件删除成功");
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
			logger.error(e.getMessage(), e);
			result.setSuccess(false);
			result.setMessage("文件删除失败");
		}
		return result;
	}
}
