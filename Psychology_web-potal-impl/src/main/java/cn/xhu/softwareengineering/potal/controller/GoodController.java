package cn.xhu.softwareengineering.potal.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
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
	public Object doTypeList(@RequestParam(value = "level",required=false)Integer level,@RequestParam(value="typeid",required=false)Integer typeid) {
		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			if(level!=null) {
				paramMap.put("level",level);
			}
			if(typeid!=null) {
				paramMap.put("typeid", typeid);
			}
			List<GoodType> typeList = goodService.queryTypeList(paramMap);
			result.setData(typeList);
			result.setSuccess(true);
		}catch(Exception e) {
			result.setSuccess(false);
			result.setMessage("查询分类失败！！！");
		}
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping("doTypeSearch")
	public Object doTypeSearch(@RequestParam(value = "pageno", required = false, defaultValue = "1") Integer pageno,
			@RequestParam(value = "pagesize", required = false, defaultValue = "32") Integer pagesize,@RequestParam(value = "level")Integer level,@RequestParam(value="typeid")Integer typeid,@RequestParam(value="sortid")Integer sortid,@RequestParam(value="isup", required=false, defaultValue="1")Integer isup) {
		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("pageno",pageno);
			paramMap.put("pagesize",pagesize);
			paramMap.put("level",level);
			paramMap.put("typeid", typeid);
			paramMap.put("sortid",sortid);
			paramMap.put("isup",isup);
			Page<PsychoGood> goodList = goodService.queryGoodList(paramMap);
			result.setPage(goodList);
			result.setSuccess(true);
		}catch(Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
			result.setMessage("查询分类失败！！！");
		}
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping("doParentType")
	public Object doParentType(@RequestParam(value="typeid")Integer typeid,@RequestParam(value = "level",required=false)Integer level) {
		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			if(level!=null) {
				paramMap.put("level",level);
			}
			if(typeid!=null) {
				paramMap.put("typeid", typeid);
			}
			result.setData(goodService.queryParentType(paramMap));
			result.setSuccess(true);
		}catch(Exception e) {
			e.printStackTrace();
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
			e.printStackTrace();
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
	
	@RequestMapping("good")
	public String toGood(@RequestParam(value = "id") Integer goodid,Map<String, Integer> map) {
		try {
			/*
			 * Map<String, Object> paramMap = new HashMap<String, Object>(); PsychoGood good
			 * = goodService.queryGoodById(goodid);
			 */
			map.put("id", goodid);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return "good/good";
	}
	
	@ResponseBody
	@RequestMapping("doGood")
	public Object doGood(@RequestParam(value = "id") Integer goodid) {
		AjaxResult result = new AjaxResult();
		try {
			 PsychoGood good = goodService.queryGoodById(goodid);
			 result.setData(good);
			 result.setSuccess(true);
		}catch(Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
			result.setMessage("查询分类失败！！！");
		}
		
		return result;
	}
	
	@RequestMapping("toType")
	public String toType(@RequestParam(value = "level")Integer level,@RequestParam(value = "typeid")Integer typeid,Map<String,Object> map) {
		map.put("typeid", typeid);
		map.put("level", level);
		return "good/type";
	}
	
	@RequestMapping("toSearch")
	public String doSearch(@RequestParam(value = "inputValue") String value,Map<String,Object> map) {
		try {
			map.put("inputValue",URLDecoder.decode(value,"utf-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return "good/search";
	}
	
	@ResponseBody
	@RequestMapping("doSearch")
	public Object doSearch(@RequestParam(value = "pageno", required = false, defaultValue = "1") Integer pageno,
			@RequestParam(value = "pagesize", required = false, defaultValue = "40") Integer pagesize,@RequestParam(value = "inputValue") String value,@RequestParam(value = "sortid", required = false, defaultValue = "0") Integer sortid) {
		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("pageno",pageno);
			paramMap.put("pagesize",pagesize);
			paramMap.put("sortid",sortid);
			paramMap.put("searchValue", URLDecoder.decode(value,"utf-8"));
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
