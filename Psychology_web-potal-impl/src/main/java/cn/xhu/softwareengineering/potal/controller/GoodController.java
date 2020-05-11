package cn.xhu.softwareengineering.potal.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.xhu.softwareengineering.bean.AlipayBean;
import cn.xhu.softwareengineering.bean.Area;
import cn.xhu.softwareengineering.bean.CartGood;
import cn.xhu.softwareengineering.bean.City;
import cn.xhu.softwareengineering.bean.CustomerAddr;
import cn.xhu.softwareengineering.bean.GoodType;
import cn.xhu.softwareengineering.bean.Order;
import cn.xhu.softwareengineering.bean.Province;
import cn.xhu.softwareengineering.bean.PsychoGood;
import cn.xhu.softwareengineering.bean.PsychoUser;
import cn.xhu.softwareengineering.bean.SaleTheme;
import cn.xhu.softwareengineering.bean.TrasformAddr;
import cn.xhu.softwareengineering.potal.service.GoodService;
import cn.xhu.softwareengineering.potal.service.PayService;
import cn.xhu.softwareengineering.util.AjaxResult;
import cn.xhu.softwareengineering.util.Const;
import cn.xhu.softwareengineering.util.Page;
import net.sf.json.JSONObject;

@Controller
@RequestMapping("good")
public class GoodController {

	@Autowired
	GoodService goodService;
	
	@Autowired
    private PayService payService;

	@RequestMapping("index")
	public String index() {
		return "good/index";
	}

	@ResponseBody
	@RequestMapping("doTypeList")
	public Object doTypeList(@RequestParam(value = "level", required = false) Integer level,
			@RequestParam(value = "typeid", required = false) Integer typeid) {
		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			if (level != null) {
				paramMap.put("level", level);
			}
			if (typeid != null) {
				paramMap.put("typeid", typeid);
			}
			List<GoodType> typeList = goodService.queryTypeList(paramMap);
			result.setData(typeList);
			result.setSuccess(true);
		} catch (Exception e) {
			result.setSuccess(false);
			result.setMessage("查询分类失败！！！");
		}

		return result;
	}

	@ResponseBody
	@RequestMapping("doCartList")
	public Object doCartList(HttpSession session) {
		PsychoUser user = (PsychoUser) session.getAttribute(Const.LOGIN_USER);
		AjaxResult result = new AjaxResult();
		if (user != null) {
			try {
				Map<String, Object> paramMap = new HashMap<String, Object>();
				paramMap.put("userid", user.getPsychouser_id());
				List<CartGood> cartList = goodService.queryCartList(paramMap);
				result.setData(cartList);
				result.setSuccess(true);
			} catch (Exception e) {
				result.setSuccess(false);
				result.setMessage("购物车商品查询失败！！！");
			}
		} else {
			result.setSuccess(false);
			result.setMessage("未登录！！！");
		}
		return result;
	}

	@ResponseBody
	@RequestMapping("doSkuId")
	public Object doSkuId(@RequestParam(value = "goodid", required = false) Integer id,
			@RequestParam(value = "selected") String selected) {
		List<Integer> list = new ArrayList<Integer>();
		for (String i : selected.split(",")) {
			if (Integer.valueOf(i) != 0) {
				list.add(Integer.valueOf(i));
			}
		}
		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("goodid", id);
			paramMap.put("fealist", list);
			Integer sku_id = goodService.querySku(paramMap);
			result.setData(sku_id);
			result.setSuccess(true);
		} catch (Exception e) {
			result.setSuccess(false);
			result.setMessage("查询所选商品sku失败！！！");
		}

		return result;
	}

	@ResponseBody
	@RequestMapping("doAddCart")
	public Object doAddCart(@RequestParam(value = "skuid", required = false) Integer id,
			@RequestParam(value = "selectNum") String selectNum, HttpSession session) {
		PsychoUser user = (PsychoUser) session.getAttribute(Const.LOGIN_USER);
		AjaxResult result = new AjaxResult();
		if (user != null) {
			try {
				Map<String, Object> paramMap = new HashMap<String, Object>();
				paramMap.put("skuid", id);
				paramMap.put("selectNum", selectNum);
				paramMap.put("userid", user.getPsychouser_id());
				if (goodService.addCart(paramMap) > 0) {
					result.setSuccess(true);
				}
			} catch (Exception e) {
				e.printStackTrace();
				result.setSuccess(false);
				result.setMessage("加入购物车失败！！！");
			}
		} else {
			result.setSuccess(false);
			result.setMessage("未登录！！！");
		}
		return result;
	}

	@RequestMapping("toCart")
	public String toCart() {
		return "good/cart";
	}

	@ResponseBody
	@RequestMapping("doSaleOutfeaList")
	public Object doSaleOutfeaList(@RequestParam(value = "goodid") Integer id,
			@RequestParam(value = "selected") String selected) {
		List<Integer> list = new ArrayList<Integer>();
		for (String i : selected.split(",")) {
			if (Integer.valueOf(i) != 0) {
				list.add(Integer.valueOf(i));
			}
		}
		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("goodid", id);
			paramMap.put("fealist", list);
			paramMap.put("size", list.size());
			List<Integer> saleOutList = goodService.querySaleOutfeaList(paramMap);
			result.setData(saleOutList);
			result.setSuccess(true);
		} catch (Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
			result.setMessage("查询售罄商品特性列表失败！！！");
		}

		return result;
	}

	@ResponseBody
	@RequestMapping("doTypeSearch")
	public Object doTypeSearch(@RequestParam(value = "pageno", required = false, defaultValue = "1") Integer pageno,
			@RequestParam(value = "pagesize", required = false, defaultValue = "32") Integer pagesize,
			@RequestParam(value = "level") Integer level, @RequestParam(value = "typeid") Integer typeid,
			@RequestParam(value = "sortid") Integer sortid,
			@RequestParam(value = "isup", required = false, defaultValue = "1") Integer isup) {
		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("pageno", pageno);
			paramMap.put("pagesize", pagesize);
			paramMap.put("level", level);
			paramMap.put("typeid", typeid);
			paramMap.put("sortid", sortid);
			paramMap.put("isup", isup);
			Page<PsychoGood> goodList = goodService.queryGoodList(paramMap);
			result.setPage(goodList);
			result.setSuccess(true);
		} catch (Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
			result.setMessage("查询分类失败！！！");
		}

		return result;
	}

	@ResponseBody
	@RequestMapping("doParentType")
	public Object doParentType(@RequestParam(value = "typeid") Integer typeid,
			@RequestParam(value = "level", required = false) Integer level) {
		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			if (level != null) {
				paramMap.put("level", level);
			}
			if (typeid != null) {
				paramMap.put("typeid", typeid);
			}
			result.setData(goodService.queryParentType(paramMap));
			result.setSuccess(true);
		} catch (Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
			result.setMessage("查询分类失败！！！");
		}

		return result;
	}

	@ResponseBody
	@RequestMapping("doUpdateNum")
	public Object doUpdateNum(@RequestParam(value = "fixednum") Integer fixednum,
			@RequestParam(value = "cartid") Integer cartid) {
		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("fixednum", fixednum);
			paramMap.put("cartid", cartid);
			if (goodService.UpdateCartNum(paramMap) > 0) {
				result.setSuccess(true);
			}
		} catch (Exception e) {
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
		} catch (Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
			result.setMessage("查询分类失败！！！");
		}

		return result;
	}

	@ResponseBody
	@RequestMapping("doRemoveCartList")
	public Object doRemoveCartList(@RequestParam(value = "cartList", required = false) String delList,
			@RequestParam(value = "cartid", required = false) Integer cartid) {
		AjaxResult result = new AjaxResult();
		Map<String, Object> paramMap = new HashMap<String, Object>();
		List<Integer> list = new ArrayList<Integer>();
		if (delList != null && delList != "") {
			for (String s : delList.split(",")) {
				list.add(Integer.valueOf(s));
			}
		}
		if (cartid != null) {
			list.add(cartid);
		}
		paramMap.put("delList", list);
		try {

			if (goodService.delCartList(paramMap) > 0) {
				result.setSuccess(true);
			}

		} catch (Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
			result.setMessage("批量删除购物失败！！！");
		}

		return result;
	}

	@ResponseBody
	@RequestMapping("doCollectList")
	public Object doCollectList(HttpSession session,
			@RequestParam(value = "typeid", required = false, defaultValue = "4") Integer typeid) {
		PsychoUser user = (PsychoUser) session.getAttribute(Const.LOGIN_USER);
		AjaxResult result = new AjaxResult();
		if (user != null) {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			try {
				paramMap.put("userid", user.getPsychouser_id());
				paramMap.put("typeid", typeid);
				List<Integer> colList = goodService.queryColGoodList(paramMap);
				result.setSuccess(true);
				result.setData(colList);
			} catch (Exception e) {
				e.printStackTrace();
				result.setSuccess(false);
				result.setMessage("查询收藏商品编号失败！！！");
			}
		}

		return result;
	}

	@ResponseBody
	@RequestMapping("doSaleList")
	public Object doSaleList(@RequestParam(value = "pageno", required = false, defaultValue = "1") Integer pageno,
			@RequestParam(value = "pagesize", required = false, defaultValue = "10") Integer pagesize,
			@RequestParam(value = "sale_theme_typeid", required = true) Integer typeid) {
		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("pageno", pageno);
			paramMap.put("pagesize", pagesize);
			paramMap.put("theme_typeid", typeid);
			Page<PsychoGood> goodList = goodService.queryGoodList(paramMap);
			result.setPage(goodList);
			result.setSuccess(true);
		} catch (Exception e) {
			result.setSuccess(false);
			result.setMessage("查询分类失败！！！");
		}

		return result;
	}

	@RequestMapping("good")
	public String toGood(@RequestParam(value = "id") Integer goodid, Map<String, Integer> map) {
		try {
			/*
			 * Map<String, Object> paramMap = new HashMap<String, Object>(); PsychoGood good
			 * = goodService.queryGoodById(goodid);
			 */
			map.put("id", goodid);
		} catch (Exception e) {
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
		} catch (Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
			result.setMessage("查询分类失败！！！");
		}

		return result;
	}

	@RequestMapping("toType")
	public String toType(@RequestParam(value = "level") Integer level, @RequestParam(value = "typeid") Integer typeid,
			Map<String, Object> map) {
		map.put("typeid", typeid);
		map.put("level", level);
		return "good/type";
	}

	@RequestMapping("toSearch")
	public String doSearch(@RequestParam(value = "inputValue") String value, Map<String, Object> map) {
		try {
			map.put("inputValue", URLDecoder.decode(value, "utf-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return "good/search";
	}

	@ResponseBody
	@RequestMapping("doSearch")
	public Object doSearch(@RequestParam(value = "pageno", required = false, defaultValue = "1") Integer pageno,
			@RequestParam(value = "pagesize", required = false, defaultValue = "40") Integer pagesize,
			@RequestParam(value = "inputValue") String value,
			@RequestParam(value = "sortid", required = false, defaultValue = "0") Integer sortid) {
		AjaxResult result = new AjaxResult();
		try {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("pageno", pageno);
			paramMap.put("pagesize", pagesize);
			paramMap.put("sortid", sortid);
			paramMap.put("searchValue", URLDecoder.decode(value, "utf-8"));
			Page<PsychoGood> goodList = goodService.queryGoodList(paramMap);
			result.setPage(goodList);
			result.setSuccess(true);
		} catch (Exception e) {
			result.setSuccess(false);
			result.setMessage("查询分类失败！！！");
		}

		return result;
	}

	@RequestMapping("/toConfirm")
	public String toConfirm(@RequestParam(value = "choseList") String choseList, Map<String, Object> paramMap) {
		/*
		 * List<Integer> list = new ArrayList<Integer>(); for (String i :
		 * choseList.split(",")) { if (Integer.valueOf(i) != 0) {
		 * list.add(Integer.valueOf(i)); } }
		 */
		/*
		 * Map<String, Object> parammap = new HashMap<String, Object>();
		 * parammap.put("choseList", list); List<CartGood> confirmList =
		 * goodService.queryCartList(parammap); System.out.println(confirmList);
		 */
		paramMap.put("list", choseList);
		return "good/confirm_order";
	}

	@ResponseBody
	@RequestMapping("/doConfirm")
	public Object doConfirm(@RequestParam(value = "choseList") String choseList) {
		List<Integer> list = new ArrayList<Integer>();
		for (String i : choseList.split(",")) {
			if (Integer.valueOf(i) != 0) {
				list.add(Integer.valueOf(i));
			}
		}
		AjaxResult result = new AjaxResult();
		Map<String, Object> parammap = new HashMap<String, Object>();
		parammap.put("choseList", list);
		try {
			List<CartGood> confirmList = goodService.queryCartList(parammap);
			System.out.println(confirmList);
			result.setData(confirmList);
			result.setSuccess(true);
		}catch(Exception e) {
			result.setSuccess(false);
			result.setMessage("获取确认列表失败！！！");
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/doAddr")
	public Object doAddr(HttpSession session) {
		PsychoUser user = (PsychoUser) session.getAttribute(Const.LOGIN_USER);
		AjaxResult result = new AjaxResult();
		Map<String, Object> parammap = new HashMap<String, Object>();
		if (user != null) {
			parammap.put("userid", user.getPsychouser_id());
			try {
				List<CustomerAddr> addrList = goodService.queryAddrList(parammap);
				System.out.println(addrList);
				result.setData(addrList);
				result.setSuccess(true);
			}catch(Exception e) {
				result.setSuccess(false);
				result.setMessage("获取确认列表失败！！！");
			}
		}else {
			result.setSuccess(false);
			result.setMessage("未登录，获取确认列表失败！！！");
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/doAddAddr")
	public Object doAddAddr(HttpSession session,CustomerAddr addr) {
		PsychoUser user = (PsychoUser) session.getAttribute(Const.LOGIN_USER);
		AjaxResult result = new AjaxResult();
		if (user != null) {
			addr.setCustomer_user_id(user.getPsychouser_id());
			addr.setModified_time(new Date());
			try {
				addr.setAddress(URLDecoder.decode(addr.getAddress(), "utf-8"));
				addr.setAccept_customer_name(URLDecoder.decode(addr.getAccept_customer_name(), "utf-8"));
			} catch (UnsupportedEncodingException e1) {
				e1.printStackTrace();
			}
			try {
				int c=goodService.AddCustomerAddr(addr);
				if(c>0) {
					result.setData(c);
					result.setSuccess(true);
				}
			}catch(Exception e) {
				e.printStackTrace();
				result.setSuccess(false);
				result.setMessage("添加地址失败！！！");
			}
		}else {
			
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/doEditAddr")
	public Object doEditAddr(CustomerAddr addr) {
		AjaxResult result = new AjaxResult();
		addr.setModified_time(new Date());
		try {
			addr.setAddress(URLDecoder.decode(addr.getAddress(), "utf-8"));
			addr.setAccept_customer_name(URLDecoder.decode(addr.getAccept_customer_name(), "utf-8"));
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		try {
			int c=goodService.updateCustomerAddr(addr);
			if(c>0) {
				result.setData(c);
				result.setSuccess(true);
			}
		}catch(Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
			result.setMessage("添加地址失败！！！");
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/doArea")
	public Object doArea() {
		AjaxResult result = new AjaxResult();
		try {
			File jsonFile = ResourceUtils.getFile("classpath:2020年1月中华人民共和国县以上行政区划代码.json");
			String json = FileUtils.readFileToString(jsonFile);
			JSONObject jsonObj = JSONObject.fromObject(json);
			Map<String, Class> classMap = new HashMap<String, Class>();
			classMap.put("cityList", City.class);
            classMap.put("areaList", Area.class);
            classMap.put("provinceList", Province.class);
            TrasformAddr provinceList = (TrasformAddr) JSONObject.toBean(jsonObj, TrasformAddr.class, classMap);
            result.setData(provinceList.getProvinceList());
            result.setSuccess(true);
		} catch (FileNotFoundException e) {
			result.setSuccess(false);
			result.setMessage("文件查找失败！！！");
			e.printStackTrace();
		} catch (IOException e) {
			result.setSuccess(false);
			result.setMessage("获取地区失败！！！");
			e.printStackTrace();
		}
		return result;
	}
	
	
	@RequestMapping("/doOrder")
	public void doOrder(HttpServletResponse httpResponse,@RequestParam(value = "order_addr")Integer order_addr,@RequestParam(value = "choseList") String choseList,@RequestParam(value = "order_level")Integer order_level,@RequestParam(value = "order_type")Integer order_type,Float order_total_amount,HttpSession session) {
		List<Integer> list = new ArrayList<Integer>();
		for (String i : choseList.split(",")) {
			if (Integer.valueOf(i) != 0) {
				list.add(Integer.valueOf(i));
			}
		}
		PsychoUser user = (PsychoUser) session.getAttribute(Const.LOGIN_USER);
		AjaxResult result = new AjaxResult();
		if (user != null) {
			Order order=new Order();
			CustomerAddr addr=new CustomerAddr();
			addr.setCustomer_addr_id(order_addr);
			order.setAddr(addr);
			order.setUser(user);
			order.setOrder_level(order_level);
			order.setType(order_type);
			order.setObjList(list);
			order.setOut_trade_no();
			order.setOrder_total_amount(order_total_amount);
			try {
				Order o=goodService.addOrder(order);
				if(o.getOrder_id()>0) {
					result.setData(o);
					result.setSuccess(true);
					String form= payService.aliPay(new AlipayBean()
			                .setOut_trade_no(o.getOut_trade_no())
			                .setTotal_amount(new StringBuffer().append(o.getOrder_total_amount()))
			                .setSubject(String.valueOf(o.getOrder_id())));
					System.out.println(form);
					httpResponse.setContentType("text/html;charset=utf-8");
			        httpResponse.getWriter().write(form);
			        httpResponse.getWriter().flush();
			        httpResponse.getWriter().close();
				}
			} catch (Exception e) {
				result.setSuccess(false);
				result.setMessage("生成订单失败！！！");
				e.printStackTrace();
			}
		}else {
			result.setSuccess(false);
			result.setMessage("未登录，生成订单失败！！！");
		}
	}

}
