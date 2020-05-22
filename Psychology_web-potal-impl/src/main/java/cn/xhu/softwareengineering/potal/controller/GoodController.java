package cn.xhu.softwareengineering.potal.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.xhu.softwareengineering.bean.AlipayBean;
import cn.xhu.softwareengineering.bean.CartGood;
import cn.xhu.softwareengineering.bean.CustomerAddr;
import cn.xhu.softwareengineering.bean.GoodType;
import cn.xhu.softwareengineering.bean.Order;
import cn.xhu.softwareengineering.bean.PsychoGood;
import cn.xhu.softwareengineering.bean.PsychoUser;
import cn.xhu.softwareengineering.bean.SaleComment;
import cn.xhu.softwareengineering.bean.SaleTheme;
import cn.xhu.softwareengineering.potal.service.GoodService;
import cn.xhu.softwareengineering.potal.service.PayService;
import cn.xhu.softwareengineering.util.AjaxResult;
import cn.xhu.softwareengineering.util.AreaBaseUtil;
import cn.xhu.softwareengineering.util.Const;
import cn.xhu.softwareengineering.util.Page;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("good")
public class GoodController {

	@Autowired
	GoodService goodService;

	@Autowired
	private PayService payService;
	
	Logger logger = Logger.getLogger(Log4j.class);

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
		} catch (Exception e) {
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
			} catch (Exception e) {
				result.setSuccess(false);
				result.setMessage("获取确认列表失败！！！");
			}
		} else {
			result.setSuccess(false);
			result.setMessage("未登录，获取确认列表失败！！！");
		}
		return result;
	}

	@ResponseBody
	@RequestMapping("/doAddAddr")
	public Object doAddAddr(HttpSession session, CustomerAddr addr) {
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
				int c = goodService.AddCustomerAddr(addr);
				if (c > 0) {
					result.setData(c);
					result.setSuccess(true);
				}
			} catch (Exception e) {
				e.printStackTrace();
				result.setSuccess(false);
				result.setMessage("添加地址失败！！！");
			}
		} else {

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
			int c = goodService.updateCustomerAddr(addr);
			if (c > 0) {
				result.setData(c);
				result.setSuccess(true);
			}
		} catch (Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
			result.setMessage("添加地址失败！！！");
		}
		return result;
	}

	@ResponseBody
	@RequestMapping("/doArea")
	public Object doArea() throws IOException {
		AjaxResult result = new AjaxResult();
		result.setData(AreaBaseUtil.getProvinceList());
		result.setSuccess(true);
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/doComment")
	public Object doComment(Integer id){
		AjaxResult result = new AjaxResult();
		try {
			List<SaleComment>commentList = goodService.queryCommentList(id);
			result.setSuccess(true);
			result.setData(commentList);
		}catch(Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
			result.setMessage("查询评论失败！！！");
		}
		return result;
	}
	
	
	@RequestMapping("/success")
	public String paySuccess() {
		return "orderlist";
	}
	
	
	@RequestMapping(value="/return_url",method=RequestMethod.GET)
	public String Return_url(String out_trade_no) throws IOException {  
		System.out.print("==================支付宝同步返回结果处理");
		 int status = goodService.checkAlipay(out_trade_no);
		  if(status>=2) {
			  
			  return "good/pay_succes";
		  }
		return "good/index";
	}
	
	
    /**
	 * 支付宝支付成功后.异步请求该接口
	 * @param request
	 * @return
	 * @throws IOException
	 */  
	@RequestMapping(value="/notify_url",method=RequestMethod.POST)
	@ResponseBody
	public String notify(HttpServletRequest request,HttpServletResponse response) throws IOException {  
			/* logger.info("==================支付宝异步返回支付结果开始"); */
		System.out.print("==================支付宝异步返回支付结果开始");
		//1.从支付宝回调的request域中取值	
		//获取支付宝返回的参数集合
	    Map<String, String[]> aliParams = request.getParameterMap();  
	    //用以存放转化后的参数集合
	    Map<String, String> conversionParams = new HashMap<String, String>();  
	    for (Iterator<String> iter = aliParams.keySet().iterator(); iter.hasNext();) {  
	        String key = iter.next();  
	        String[] values = aliParams.get(key);  
	        String valueStr = "";  
	        for (int i = 0; i < values.length; i++) {  
	            valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";  
	        }  
	        // 乱码解决，这段代码在出现乱码时使用。如果mysign和sign不相等也可以使用这段代码转化  
	        // valueStr = new String(valueStr.getBytes("ISO-8859-1"), "uft-8");  
	        conversionParams.put(key, valueStr);  
	    }  	
	    logger.info("==================返回参数集合："+conversionParams);
	    System.out.print("==================返回参数集合："+conversionParams);
	   String status=goodService.notify(conversionParams);
	   return status;
	}

	@ResponseBody
	@RequestMapping("/doOrder")
	public Object doOrder(HttpServletResponse httpResponse,
			@RequestBody Order order, HttpSession session) {
		System.out.println(order.getObjList().get(0));
		PsychoUser user = (PsychoUser) session.getAttribute(Const.LOGIN_USER);
		AjaxResult result = new AjaxResult();
		if (user != null) {
			order.setUser(user);
			order.setOrder_createtime(new Date());
			order.setOut_trade_no();
			try {
				Order o = goodService.addOrder(order);
				if (o.getOrder_id() > 0) {
					String form = payService.aliPay(new AlipayBean().setOut_trade_no(o.getOut_trade_no())
							.setTotal_amount(new StringBuffer().append(o.getOrder_total_amount()))
							.setSubject("订单编号："+String.valueOf(o.getOrder_id())));
					result.setData(form);
					result.setSuccess(true);
					return result;
				}
			} catch (Exception e) {
				result.setSuccess(false);
				result.setMessage("生成订单失败！！！");
				e.printStackTrace();
			}
		} else {
			result.setSuccess(false);
			result.setMessage("未登录，生成订单失败！！！");
			return result;
		}
		return result;
	}
	
	
	@ResponseBody
	@RequestMapping("/doAddComment")
	public Object doAddComment(@RequestParam("imgList")String imgList,@RequestParam(value = "toid")Integer goodid,@RequestParam(value = "content")String content,HttpSession session) {
		AjaxResult result = new AjaxResult();
		PsychoUser user = (PsychoUser) session.getAttribute(Const.LOGIN_USER);
		List<String> list = new ArrayList<String>();
		SaleComment comment = new SaleComment();
		if (user != null) {
			for(String imgpath:imgList.split(",")) {
				list.add(imgpath);
				System.out.print(imgpath);
			}
			try {
				comment.setComment_user(user);
				comment.setComment_content(URLDecoder.decode(content, "utf-8"));
				comment.setComment_toid(goodid);
				comment.setComment_pultime(new Date());
				comment.setComment_type_id(Byte.valueOf((byte) 2));
				
				Map<String, Object> paramMap = new HashMap<String, Object>();
				paramMap.put("imgList", list);
				paramMap.put("comment", comment);
				if(goodService.addGoodComment(paramMap)>0) {
					result.setSuccess(true);
				}
			}catch(Exception e) {
				result.setSuccess(false);
				e.printStackTrace();
				result.setMessage("添加评论失败！！");
			}
			return result;
		}else {
			result.setSuccess(false);
			result.setMessage("请登录！！");
		}
		return result;
	}

}
