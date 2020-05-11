package cn.xhu.softwareengineering.potal.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.xhu.softwareengineering.bean.CartGood;
import cn.xhu.softwareengineering.bean.CustomerAddr;
import cn.xhu.softwareengineering.bean.GoodType;
import cn.xhu.softwareengineering.bean.Order;
import cn.xhu.softwareengineering.bean.PsychoGood;
import cn.xhu.softwareengineering.bean.SaleTheme;
import cn.xhu.softwareengineering.potal.dao.GoodMapper;
import cn.xhu.softwareengineering.potal.service.GoodService;
import cn.xhu.softwareengineering.util.Page;

@Service
public class GoodServiceImpl implements GoodService {
	
	@Autowired
	GoodMapper goodMapper;

	@Override
	public List<GoodType> queryTypeList(Map<String, Object> paramMap){
		return goodMapper.queryTypeList(paramMap);
	}

	@Override
	public List<SaleTheme> querySlideList() {
		return goodMapper.querySlideList();
	}

	@Override
	public Page<PsychoGood> queryGoodList(Map<String, Object> paramMap) {
		Page<PsychoGood> page = new Page<PsychoGood>((Integer)paramMap.get("pageno"), (Integer)paramMap.get("pagesize"));
		paramMap.put("startIndex",page.getStartIndex());
		page.setData(goodMapper.queryGoodList(paramMap));
		Integer totalsize = goodMapper.queryGoodListCount(paramMap);
		page.setTotalsize(totalsize);
		return page;
	}

	@Override
	public PsychoGood queryGoodById(Integer goodid) {
		PsychoGood good = goodMapper.queryGoodById(goodid);
		return good;
	}

	@Override
	public GoodType queryParentType(Map<String, Object> paramMap) {
		return goodMapper.queryParentType(paramMap);
	}

	@Override
	public List<Integer> querySaleOutfeaList(Map<String, Object> paramMap) {
		return goodMapper.querySaleOutfeaList(paramMap);
	}

	@Override
	public Integer querySku(Map<String, Object> paramMap) {
		return goodMapper.querySku(paramMap);
	}

	@Override
	public int addCart(Map<String, Object> paramMap) {
		return goodMapper.addCart(paramMap);
	}

	@Override
	public List<CartGood> queryCartList(Map<String, Object> paramMap) {
		return goodMapper.queryCartList(paramMap);
	}

	@Override
	public int UpdateCartNum(Map<String, Object> paramMap) {
		return goodMapper.UpdateCartNum(paramMap);
	}

	@Override
	public int delCartList(Map<String, Object> paramMap) {
		return goodMapper.delCartList(paramMap);
	}

	@Override
	public List<Integer> queryColGoodList(Map<String, Object> paramMap) {
		return goodMapper.queryColGoodList(paramMap);
	}

	@Override
	public List<CustomerAddr> queryAddrList(Map<String, Object> parammap) {
		return goodMapper.queryAddrList(parammap);
	}

	@Override
	public int AddCustomerAddr(CustomerAddr addr) {
		if(goodMapper.AddCustomerAddr(addr)>0) {
			return addr.getCustomer_addr_id();
		}
		return 0;
	}

	@Override
	public int updateCustomerAddr(CustomerAddr addr) {
		if(goodMapper.updateCustomerAddr(addr)>0) {
			return addr.getCustomer_addr_id();
		}
		return 0;
	}

	@Override
	public Order addOrder(Order order) {
		if(goodMapper.addOrder(order)>0) {
			System.out.println(order.getOrder_id());
			if(goodMapper.addOrder_sku(order.getOrder_id(),order.getObjList())>0) {
				return order;
			}
		}
		return null;
	}
	
}
