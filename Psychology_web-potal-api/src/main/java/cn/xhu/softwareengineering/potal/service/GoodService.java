package cn.xhu.softwareengineering.potal.service;

import java.util.List;
import java.util.Map;

import cn.xhu.softwareengineering.bean.CartGood;
import cn.xhu.softwareengineering.bean.CustomerAddr;
import cn.xhu.softwareengineering.bean.GoodType;
import cn.xhu.softwareengineering.bean.Order;
import cn.xhu.softwareengineering.bean.PsychoGood;
import cn.xhu.softwareengineering.bean.SaleTheme;
import cn.xhu.softwareengineering.util.Page;

public interface GoodService {

	List<GoodType> queryTypeList(Map<String, Object> paramMap);

	List<SaleTheme> querySlideList();

	Page<PsychoGood> queryGoodList(Map<String, Object> paramMap);

	PsychoGood queryGoodById(Integer goodid);

	GoodType queryParentType(Map<String, Object> paramMap);

	List<Integer> querySaleOutfeaList(Map<String, Object> paramMap);

	Integer querySku(Map<String, Object> paramMap);

	int addCart(Map<String, Object> paramMap);

	List<CartGood> queryCartList(Map<String, Object> paramMap);

	int UpdateCartNum(Map<String, Object> paramMap);

	int delCartList(Map<String, Object> paramMap);

	List<Integer> queryColGoodList(Map<String, Object> paramMap);

	List<CustomerAddr> queryAddrList(Map<String, Object> parammap);

	int AddCustomerAddr(CustomerAddr addr);

	int updateCustomerAddr(CustomerAddr addr);

	Order addOrder(Order order);

}
