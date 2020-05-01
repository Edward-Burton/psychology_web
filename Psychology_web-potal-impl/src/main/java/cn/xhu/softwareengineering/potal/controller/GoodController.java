package cn.xhu.softwareengineering.potal.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.xhu.softwareengineering.bean.GoodType;
import cn.xhu.softwareengineering.bean.PsychoGood;
import cn.xhu.softwareengineering.bean.SaleTheme;
import cn.xhu.softwareengineering.potal.service.GoodService;
import cn.xhu.softwareengineering.util.AjaxResult;
import cn.xhu.softwareengineering.util.Page;

@Controller
@RequestMapping("good")
public class GoodController {
	
	@Autowired
	GoodService goodService;

	@RequestMapping("index")
	public String index() {
		return "good/index";
	}
	
	@ResponseBody
	@RequestMapping("doTypeList")
	public Object doTypeList() {
		AjaxResult result = new AjaxResult();
		try {
			List<GoodType> typeList = goodService.queryTypeList();
			result.setData(typeList);
			result.setSuccess(true);
		}catch(Exception e) {
			result.setSuccess(false);
			result.setMessage("查询分类失败！！！");
		}
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping("dosaleTheme")
	public Object dosaleTheme() {
		AjaxResult result = new AjaxResult();
		try {
			List<SaleTheme> themeList = goodService.querySlideList();
			result.setData(themeList);
			result.setSuccess(true);
		}catch(Exception e) {
			result.setSuccess(false);
			result.setMessage("查询分类失败！！！");
		}
		
		return result;
	}
	
	
	@ResponseBody
	@RequestMapping("doSaleList")
	public Object doSaleList(@RequestParam(value = "pageno", required = false, defaultValue = "1") Integer pageno,
			@RequestParam(value = "pagesize", required = false, defaultValue = "10") Integer pagesize,@RequestParam(value="sale_theme_typeid",required=true)Integer typeid) {
		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("pageno",pageno);
			paramMap.put("pagesize",pagesize);
			paramMap.put("theme_typeid", typeid);
			Page<PsychoGood> goodList = goodService.queryGoodList(paramMap);
			result.setPage(goodList);
			result.setSuccess(true);
		}catch(Exception e) {
			result.setSuccess(false);
			result.setMessage("查询分类失败！！！");
		}
		
		return result;
	}
	
}
