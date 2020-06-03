package cn.xhu.softwareengineering.potal.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import cn.xhu.softwareengineering.bean.ArticleComments;
import cn.xhu.softwareengineering.bean.PsychoArticle;
import cn.xhu.softwareengineering.bean.PsychoCategory;
import cn.xhu.softwareengineering.bean.PsychoUser;
import cn.xhu.softwareengineering.potal.service.ArticleService;
import cn.xhu.softwareengineering.potal.service.UserService;
import cn.xhu.softwareengineering.util.AjaxResult;
import cn.xhu.softwareengineering.util.Const;
import cn.xhu.softwareengineering.util.Page;
import cn.xhu.softwareengineering.util.StringUtil;

@Controller
@RequestMapping("/article")
public class ArticleController {

	@Autowired
	private ArticleService articleService;

	@Autowired
	private UserService userService;

	@RequestMapping("/index")
	public String toIndex(Map<String, Object> map) {
		List<PsychoCategory> categoryList = articleService.queryCategory(new HashMap<String, Object>());
		for (PsychoCategory pc : categoryList) {
			System.out.println("分类: " + pc.getPsycho_category_name());
		}
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("sub_category", "all");
		List<PsychoCategory> subcategoryList = articleService.queryCategory(paramMap);
		for (PsychoCategory pc : subcategoryList) {
			System.out.println("分类: " + pc.getPsycho_category_name());
		}
		map.put("category", categoryList);
		map.put("subcategory", subcategoryList);
		return "article/index";
	}

	@RequestMapping("/toArticle")
	public String toArticle(Integer id, HttpSession session, Map<String, Object> map) {
		/* 当前用户是否喜欢 */
		PsychoUser loginuser = (PsychoUser) session.getAttribute(Const.LOGIN_USER);
		if (loginuser != null) {
			Map<String, Integer> likemap = new HashMap<String, Integer>();
			likemap.put("from_user_id", loginuser.getPsychouser_id());
			likemap.put("to_article_id", id);
			likemap.put("liketype", 1);
			int islike = articleService.queryUserIsLike(likemap);
			map.put("islike", islike);
			System.out.println(islike);
			/*
			 * Map<String, Integer>collectmap=new HashMap<String, Integer>();
			 */
		} else {
			map.put("islike", -1);
		}

		/* 获取文章点赞总数 */
		Map<String, Integer> likemap = new HashMap<String, Integer>();
		likemap.put("liketype", 1);
		likemap.put("id", id);
		int likecount = articleService.queryLikeCountById(likemap);
		map.put("likecount", likecount);

		// 获取文章详细信息
		PsychoArticle pa = articleService.getArticleById(id);
		map.put("pa", pa);
		for (ArticleComments pc : pa.getArticleComments()) {
			System.out.println("评论: " + pc.getArticle_comment_pulcontent() + pc.getComment_user().getPsychouser_name());
		}
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

	@ResponseBody
	@RequestMapping("/updateReadNum")
	public Object updateReadNum(Integer articleid) {
		AjaxResult result = new AjaxResult();
		try {
			int readnum = articleService.updateReadNum(articleid);
			result.setData(readnum);
			result.setSuccess(true);
		} catch (Exception e) {
			result.setSuccess(false);
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/doSubCategory")
	public Object doSubCategory() {
		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("sub_category", "all");
			List<PsychoCategory> subcategoryList = articleService.queryCategory(paramMap);
			for (PsychoCategory pc : subcategoryList) {
				System.out.println("分类: " + pc.getPsycho_category_name());
			}
			result.setData(subcategoryList);
			result.setSuccess(true);
		} catch (Exception e) {
			result.setSuccess(false);
		}
		return result;
	}

	@ResponseBody
	@RequestMapping("/doComment")
	public Object doComment(int articleid) {
		AjaxResult result = new AjaxResult();
		List<ArticleComments> commentList;
		try {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("articleid", articleid);
			commentList = articleService.queryComment(paramMap);
			for (ArticleComments pc : commentList) {
				System.out.println(

						"分类: " + pc.getArticle_comment_pulcontent() + pc.getComment_user().getPsychouser_name());
			}
			result.setData(commentList);
			result.setSuccess(true);

		} catch (Exception e) {
			result.setSuccess(false);
			e.printStackTrace();
			result.setMessage("查询数据失败！");
		}

		return result;
		// 将result对象序列化为JSON字符串，以流的形式返回。
	}

	@ResponseBody
	@RequestMapping("/dolikeComment")
	public Object dolikeComment(int articleid, HttpSession session) {
		AjaxResult result = new AjaxResult();
		PsychoUser loginuser = (PsychoUser) session.getAttribute(Const.LOGIN_USER);
		if (loginuser != null) {
			try {
				List<Integer> likecommentList;
				Map<String, Object> paramMap = new HashMap<String, Object>();
				paramMap.put("mainid", articleid);
				paramMap.put("userid", loginuser.getPsychouser_id());
				paramMap.put("typeid", 3);
				paramMap.put("maintype", 1);
				likecommentList = userService.queryUserlikeComment(paramMap);
				for (int pc : likecommentList) {
					System.out.println("看这里---------------评论ID: " + pc);
				}
				result.setData(likecommentList);
				result.setSuccess(true);
			} catch (Exception e) {
				result.setSuccess(false);
				e.printStackTrace();
				result.setMessage("查询数据失败！");
			}
		} else {
			result.setSuccess(false);
			result.setMessage("请登录！！！");
		}
		return result;
		// 将result对象序列化为JSON字符串，以流的形式返回。
	}

	// 3.条件查询
	@ResponseBody
	@RequestMapping("/doIndex")
	public Object doIndex(@RequestParam(value = "pageno", required = false, defaultValue = "1") Integer pageno,
			@RequestParam(value = "pagesize", required = false, defaultValue = "2") Integer pagesize, String queryText,
			Integer categoryId, Integer pcategoryId) {
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
					// 此处需要四个斜杠，两个斜线作转义用，转义后得到两个斜线
					// replaceAll底层是一个正则表达式，正则表达式中的斜线也需要进行转义，故最后只剩一个真正意义的斜线
					// 此处记得将替换后的值再赋值给queryText
				}

				paramMap.put("queryText", queryText);

			}
			if (categoryId != null) {
				paramMap.put("categoryId", categoryId);
			}
			if (pcategoryId != null) {
				paramMap.put("pcategoryId", pcategoryId);
			}

			page = articleService.queryArticlePage(paramMap);
			for (PsychoArticle pa : page.getData()) {
				System.out.println("文章图片路劲: " + pa.getArticleImg());
			}
			// List<PsychoArticle> ls = page.getData();
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

	@ResponseBody
	@RequestMapping(value = "/doAddComment", method = RequestMethod.POST)
	public Object doAddComment(Integer articleid, String inputValue,
			@RequestParam(value = "pcommentid", required = false) Integer pcommentid, HttpSession session) {
		AjaxResult result = new AjaxResult();
		PsychoUser loginuser = (PsychoUser) session.getAttribute(Const.LOGIN_USER);
		if (loginuser != null) {
			try {
				System.out.println("inputValue: " + URLDecoder.decode(inputValue, "utf-8"));
				Map<String, Object> paramMap = new HashMap<String, Object>();
				paramMap.put("articleid", articleid);
				paramMap.put("inputValue",URLDecoder.decode(inputValue, "utf-8"));
				if (pcommentid != null) {
					paramMap.put("pcommentid", pcommentid);
				}
				paramMap.put("userid", loginuser.getPsychouser_id());
				paramMap.put("curtime", new Date());
				if (articleService.addComment(paramMap) > 0) {
					result.setSuccess(true);
				}
			} catch (Exception e) {
				result.setSuccess(false);
				e.printStackTrace();
				result.setMessage("评论添加失败！！！");
			}
		} else {
			result.setSuccess(false);
			result.setMessage("请登录后操作！！！");
		}
		return result;
	}

	@RequestMapping("/toAddArticle")
	public String addArticle(PsychoArticle pa, Model model) {
		model.addAttribute("psychoArticle", pa);

		return "article/addarticle";

	}

	@ResponseBody
	@RequestMapping("/doAddArticle")
	public Object addArticle(@RequestParam(value = "articleImg", required = true) MultipartFile attach,
			@RequestParam(value = "articleTitle", required = true) String articleTitle,
			@RequestParam(value = "articleDesc", required = true) String articleDesc,
			@RequestParam(value = "content", required = true) String content,
			@RequestParam(value = "articleLabels", required = false) String[] tags,
			@RequestParam(value = "categoryId", required = false, defaultValue="0") Integer categoryId,
			HttpSession session,
			HttpServletRequest request) {
		for(String tag:tags) {
			System.out.println(tag);
		}
		AjaxResult result = new AjaxResult();
		PsychoUser user = (PsychoUser) session.getAttribute(Const.LOGIN_USER);
		if (user != null) {
			String sqlPath = null;
			String path = request.getSession().getServletContext()
					.getRealPath("img" + File.separator + "articleimages");
			System.out.println("path----------------" + path);
			System.out.println("path----------------" + request.getRequestURL().toString());
			String oldFileName = attach.getOriginalFilename();
			String prefix = FilenameUtils.getExtension(oldFileName);
			int filesize = 5000000;
			if (attach.getSize() > filesize) {
				request.setAttribute("uploadFileError", "上传文件不得超过5000KB");
				return "addarticle";
			} else if (prefix.equalsIgnoreCase("jpg") || prefix.equalsIgnoreCase("png")
					|| prefix.equalsIgnoreCase("jpeg") || prefix.equalsIgnoreCase("pneg")) {
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
			PsychoArticle pa = new PsychoArticle();
			pa.setArticleTitle(articleTitle);
			pa.setDesc(articleDesc);
			pa.setContent(content);
			pa.setArticleUser(user);
			pa.setCategoryId(categoryId);
			/*
			 * PsychoUser pu = new PsychoUser(); pu.setPsychouser_id(2);
			 * pa.setArticleUser(pu);
			 */
			pa.setPubTime(new Date());
			pa.setArticleImg(sqlPath);

			if (articleService.addArticle(pa) > 0) {
				result.setSuccess(true);
				result.setMessage("添加成功");
				/* return "article/index"; */
			}
		} else {
			result.setSuccess(false);
			result.setMessage("请登录！！！");
		}

		// model.addAttribute("msag", "添加成功");
		/* return "article/addarticle"; */
		return result;
	}

}
