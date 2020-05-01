package cn.xhu.softwareengineering.potal.service;

import java.util.List;
import java.util.Map;

import cn.xhu.softwareengineering.bean.GoodType;
import cn.xhu.softwareengineering.bean.PsychoGood;
import cn.xhu.softwareengineering.bean.SaleTheme;
import cn.xhu.softwareengineering.util.Page;

public interface GoodService {

	List<GoodType> queryTypeList();

	List<SaleTheme> querySlideList();

	Page<PsychoGood> queryGoodList(Map<String, Object> paramMap);

}
