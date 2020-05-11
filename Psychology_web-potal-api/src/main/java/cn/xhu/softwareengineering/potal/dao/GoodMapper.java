package cn.xhu.softwareengineering.potal.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import cn.xhu.softwareengineering.bean.CartGood;
import cn.xhu.softwareengineering.bean.CustomerAddr;
import cn.xhu.softwareengineering.bean.GoodType;
import cn.xhu.softwareengineering.bean.Order;
import cn.xhu.softwareengineering.bean.PsychoGood;
import cn.xhu.softwareengineering.bean.SaleTheme;

public interface GoodMapper {

	List<GoodType> queryTypeList(Map<String, Object> paramMap);

	List<SaleTheme> querySlideList();

	List<PsychoGood> queryGoodList(Map<String, Object> paramMap);

	Integer queryGoodListCount(Map<String, Object> paramMap);

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

	int addOrder(Order order);

	int addOrder_sku(@Param(value="order_id")int order_id, @Param(value="objList")List<Integer> objList);

}
