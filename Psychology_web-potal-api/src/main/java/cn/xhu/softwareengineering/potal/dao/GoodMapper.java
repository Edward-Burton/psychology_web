package cn.xhu.softwareengineering.potal.dao;

import java.util.List;
import java.util.Map;

import cn.xhu.softwareengineering.bean.GoodType;
import cn.xhu.softwareengineering.bean.PsychoGood;
import cn.xhu.softwareengineering.bean.SaleTheme;

public interface GoodMapper {

	List<GoodType> queryTypeList();

	List<SaleTheme> querySlideList();

	List<PsychoGood> queryGoodList(Map<String, Object> paramMap);

	Integer queryGoodListCount(Map<String, Object> paramMap);

}
