package cn.xhu.softwareengineering.potal.service.impl;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.xhu.softwareengineering.bean.GoodAttribute;
import cn.xhu.softwareengineering.bean.GoodFeature;
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
		if(good.getGoodFeatureList()!=null){
			GoodFeature gf1=new GoodFeature(1,1,new ArrayList<GoodAttribute>());
			GoodFeature gf2=new GoodFeature(2,1,new ArrayList<GoodAttribute>());
			GoodFeature gf3=new GoodFeature(3,1,new ArrayList<GoodAttribute>());
			GoodFeature gf4=new GoodFeature(4,1,new ArrayList<GoodAttribute>());
			GoodFeature gf5=new GoodFeature(5,1,new ArrayList<GoodAttribute>());
			gf2.setFeature_type(5);
			for(GoodAttribute attr:good.getGoodFeatureList()) {
				if(attr.getGood_feature_type()==1) {
					gf1.setFeature_des_type(attr.getGood_feature_des_type());
					gf1.getAttrList().add(attr);
				}else if(attr.getGood_feature_type()==2){
					gf2.setFeature_des_type(attr.getGood_feature_des_type());
					gf2.getAttrList().add(attr);
				}else if(attr.getGood_feature_type()==3) {
					gf3.setFeature_des_type(attr.getGood_feature_des_type());
					gf3.getAttrList().add(attr);
				}else if(attr.getGood_feature_type()==4) {
					gf4.setFeature_des_type(attr.getGood_feature_des_type());
					gf4.getAttrList().add(attr);
				}else if(attr.getGood_feature_type()==5) {
					gf5.setFeature_des_type(attr.getGood_feature_des_type());
					gf5.getAttrList().add(attr);
				}
			}
			List<GoodFeature> feaList=new LinkedList<GoodFeature>();
			if(gf1.getAttrList().size()!=0) {
				feaList.add(gf1);
			}
			if(gf2.getAttrList().size()!=0) {
				feaList.add(gf2);
			}
			if(gf3.getAttrList().size()!=0) {
				feaList.add(gf3);
			}
			if(gf4.getAttrList().size()!=0) {
				feaList.add(gf4);
			}
			if(gf5.getAttrList().size()!=0) {
				feaList.add(gf5);
			}
			good.setFeaList(feaList);
		}
		return good;
	}

	@Override
	public GoodType queryParentType(Map<String, Object> paramMap) {
		return goodMapper.queryParentType(paramMap);
	}
	
}
