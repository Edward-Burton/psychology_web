package cn.xhu.softwareengineering.potal.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import cn.xhu.softwareengineering.bean.PsychoArticle;
import cn.xhu.softwareengineering.bean.PsychoUser;
import cn.xhu.softwareengineering.potal.service.ArticleService;
import cn.xhu.softwareengineering.util.Page;

@Controller
@RequestMapping("/article")
public class ArticleController {

	@Autowired
	private ArticleService articleService;

	@RequestMapping("/index")
	public String queryArticlePage(@RequestParam(value="pageno",required=false,defaultValue="1")Integer pageno, 
			@RequestParam(value="pagesize",required=false,defaultValue="2")Integer pagesize, Map map) {

		System.out.println("页面传参pageno:"+pageno);
		System.out.println("页面传参pagesize:"+pagesize);
		Page<PsychoArticle> page = articleService.queryArticlePage(pageno, pagesize);
		map.put("page", page);
		//model.addAttribute("page", page);
		List<PsychoArticle> list = page.getData();
		System.out.println("controller:"+list.get(0).getArticleTitle());
		System.out.println("Totalno:"+page.getTotalno());
		System.out.println("pagesize:"+page.getPagesize());
		System.out.println("pageno:"+page.getPageno());
		/*
		 * List<PsychoArticle> list = articleService.queryArticlePage();
		 * model.addAttribute("articlelist", list); System.out.println(((PsychoArticle)
		 * list.get(1)).getArticleTitle());
		 */

		return "article/index";
	}

	@RequestMapping("/addArticle.htm")
	public String addArticle(PsychoArticle pa, Model model) {
		model.addAttribute("psychoArticle", pa);

		return "article/addarticle";

	}

	// @RequestBody
	@RequestMapping("/addArticle.do")
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
			return "addarticle";
		}

		/*
		 * pa.setCreatedBy((User)session.getAttribute(Constants.USER_SESSION)).getId());
		 */
		PsychoUser pu = new PsychoUser();
		pu.setPsychouser_id(2);
		pa.setArticleUser(pu);
		pa.setPubTime(new Date());
		pa.setArticleImg(sqlPath);
		System.out.println(pa.getArticleImg());
		System.out.println(pa.toString());

		if (articleService.addArticle(pa) > 0) {
			request.setAttribute("uploadFileError", "添加成功");
			return "addarticle";
		}

		// model.addAttribute("msag", "添加成功");
		return "addarticle";

	}

}
