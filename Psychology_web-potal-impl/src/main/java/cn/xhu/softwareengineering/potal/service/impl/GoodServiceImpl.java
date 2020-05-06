package cn.xhu.softwareengineering.potal.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.xhu.softwareengineering.bean.CartGood;
import cn.xhu.softwareengineering.bean.GoodType;
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
	
}
