package cn.xhu.softwareengineering.potal.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import cn.xhu.softwareengineering.bean.PsychoArticle;
import cn.xhu.softwareengineering.bean.PsychoCategory;
import cn.xhu.softwareengineering.bean.PsychoUser;
import cn.xhu.softwareengineering.potal.service.ArticleService;
import cn.xhu.softwareengineering.util.AjaxResult;
import cn.xhu.softwareengineering.util.Const;
import cn.xhu.softwareengineering.util.Page;
import cn.xhu.softwareengineering.util.StringUtil;

@Controller
@RequestMapping("/article")
public class ArticleController {

	@Autowired
	private ArticleService articleService;

	@RequestMapping("/index")
	public String toIndex(Map<String, Object> map) {
		List<PsychoCategory> categoryList= articleService.queryCategory(new HashMap<String,Object>());
		for(PsychoCategory pc:categoryList) {
			System.out.println("分类: " + pc.getPsycho_category_name());
		}
		map.put("category", categoryList);
		return "article/index";
	}
	
	@RequestMapping("/toArticle")
	public String toArticle(Integer id,Map<String, PsychoArticle> map) {
		
		PsychoArticle pa = articleService.getArticleById(id);
		map.put("pa",pa);
		
		return "article/articledetail";
	}
	
	
	@ResponseBody
	@RequestMapping("/doCategory")
	public Object doCategory(int parentid) {
		System.out.println("parentid: " + parentid);
		AjaxResult result = new AjaxResult();
		List<PsychoCategory> categoryList;
		try {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("parentid", parentid);
			categoryList = articleService.queryCategory(paramMap);

			result.setData(categoryList);
			result.setSuccess(true);

		} catch (Exception e) {
			result.setSuccess(false);
			e.printStackTrace();
			result.setMessage("查询数据失败！");
		}

		return result;// 将result对象序列化为JSON字符串，以流的形式返回。
	}

	// 3.条件查询
	@ResponseBody
	@RequestMapping("/doIndex")
	public Object doIndex(@RequestParam(value = "pageno", required = false, defaultValue = "1") Integer pageno,

			@RequestParam(value = "pagesize", required = false, defaultValue = "2") Integer pagesize,
			String queryText,Integer categoryId) {
		System.out.println("queryText: " + queryText);
		AjaxResult result = new AjaxResult();
		Page<PsychoArticle> page;
		try {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("pageno", pageno);
			paramMap.put("pagesize", pagesize);

			if (StringUtil.isNotEmpty(queryText)) {

				if (queryText.contains("%")) {
					queryText = queryText.replaceAll("%", "\\\\%");
					//此处需要四个斜杠，两个斜线作转义用，转义后得到两个斜线
				    //replaceAll底层是一个正则表达式，正则表达式中的斜线也需要进行转义，故最后只剩一个真正意义的斜线
					//此处记得将替换后的值再赋值给queryText
				}

				paramMap.put("queryText", queryText);
				
			}
			if(categoryId!=null) {
				paramMap.put("categoryId", categoryId);
			}
			
			page = articleService.queryArticlePage(paramMap);

			List<PsychoArticle> ls = page.getData();
			/* System.out.println("时间："+ls.get(0).getPubTime()); */
			result.setPage(page);
			result.setSuccess(true);

		} catch (Exception e) {
			result.setSuccess(false);
			e.printStackTrace();
			result.setMessage("查询数据失败！");
		}

		return result;// 将result对象序列化为JSON字符串，以流的形式返回。
	}

	// 2.异步请求需要加上@ResponseBody,
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping("/index") public Object queryArticlePage(@RequestParam(value
	 * = "pageno", required = false, defaultValue = "1") Integer pageno,
	 * 
	 * @RequestParam(value = "pagesize", required = false, defaultValue = "2")
	 * Integer pagesize) {
	 * 
	 * AjaxResult result = new AjaxResult(); try { Page<PsychoArticle> page =
	 * articleService.queryArticlePage(pageno, pagesize); List<PsychoArticle> ls =
	 * page.getData(); System.out.println(ls.get(0).getArticleTitle());
	 * result.setPage(page); result.setSuccess(true); } catch (Exception e) {
	 * result.setSuccess(false); e.printStackTrace(); result.setMessage("查询数据失败！");
	 * }
	 * 
	 * return result;//将result对象序列化为JSON字符串，以流的形式返回。 }
	 */

	// 1.同步请求
	/*
	 * @RequestMapping("/index") public String queryArticlePage(@RequestParam(value
	 * = "pageno", required = false, defaultValue = "1") Integer pageno,
	 * 
	 * @RequestParam(value = "pagesize", required = false, defaultValue = "2")
	 * Integer pagesize, Map map) {
	 * 
	 * Page<PsychoArticle> page = articleService.queryArticlePage(pageno, pagesize);
	 * map.put("page", page); // model.addAttribute("page", page);
	 * 
	 * return "article/index"; }
	 */

	@RequestMapping("/toAddArticle")
	public String addArticle(PsychoArticle pa, Model model) {
		model.addAttribute("psychoArticle", pa);

		return "article/addarticle";

	}

	/* @ResponseBody */
	@RequestMapping("/doAddArticle")
	public String addArticle(PsychoArticle pa, HttpSession session, HttpServletRequest request) {

		MultipartHttpServletRequest mreq = (MultipartHttpServletRequest) request;

		MultipartFile attach = mreq.getFile("indexImg");// 临时目录下的文件

		String sqlPath = null;
		String path = request.getSession().getServletContext().getRealPath("img" + File.separator + "articleimages");

		String oldFileName = attach.getOriginalFilename();
		String prefix = FilenameUtils.getExtension(oldFileName);
		int filesize = 5000000;
		if (attach.getSize() > filesize) {
			request.setAttribute("uploadFileError", "上传文件不得超过5000KB");
			return "addarticle";
		} else if (prefix.equalsIgnoreCase("jpg") || prefix.equalsIgnoreCase("png") || prefix.equalsIgnoreCase("jpeg")
				|| prefix.equalsIgnoreCase("pneg")) {
			String fileName = System.currentTimeMillis() + "_Article.jpg";
			File targetFile = new File(path, fileName);
			if (!targetFile.exists()) {
				targetFile.mkdirs();
			}
			try {
				attach.transferTo(targetFile);
			} catch (IllegalStateException e) {
				e.printStackTrace();
				request.setAttribute("uploadFileError", "上传失败！");
				return "addarticle";
			} catch (IOException e) {
				e.printStackTrace();
				request.setAttribute("uploadFileError", "上传失败！");
				return "addarticle";
			}
			sqlPath = path + File.separator + fileName;
		} else {
			request.setAttribute("uploadFileError", "*上传图片格式不正确");
			return "article/addarticle";
		}
		pa.setArticleUser((PsychoUser)session.getAttribute(Const.LOGIN_USER));
		PsychoUser pu = new PsychoUser();
		pu.setPsychouser_id(2);
		pa.setArticleUser(pu);
		pa.setPubTime(new Date());
		pa.setArticleImg(sqlPath);
		System.out.println(pa.getArticleImg());
		System.out.println(pa.getPubTime());

		if (articleService.addArticle(pa) > 0) {
			request.setAttribute("uploadFileError", "添加成功");
			return "article/index";
		}

		// model.addAttribute("msag", "添加成功");
		return "article/addarticle";

	}

}
