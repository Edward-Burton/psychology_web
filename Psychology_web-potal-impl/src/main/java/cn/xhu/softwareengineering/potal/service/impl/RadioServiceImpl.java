package cn.xhu.softwareengineering.potal.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.xhu.softwareengineering.bean.PsychoRadio;
import cn.xhu.softwareengineering.bean.RadioAnchor;
import cn.xhu.softwareengineering.bean.RadioComment;
import cn.xhu.softwareengineering.bean.RadioType;
import cn.xhu.softwareengineering.potal.dao.RadioMapper;
import cn.xhu.softwareengineering.potal.service.RadioService;

@Service
public class RadioServiceImpl implements RadioService{
	
	@Autowired
	private RadioMapper radioMapper;

	@Override
	public List<PsychoRadio> queryRadioIndexList(Map<String, Object> paramMap) {
		return radioMapper.queryRadioIndexList(paramMap);
	}

	@Override
	public List<RadioComment> queryRadioComment(Integer radioid) {
		return radioMapper.queryRadioComment(radioid);
	}

	@Override
	public List<PsychoRadio> queryLastestPlayList() {
		return radioMapper.queryLastestPlayList();
	}

	@Override
	public List<PsychoRadio> queryLikedMostPlayList() {
		return radioMapper.queryLikedMostPlayList();
	}

	@Override
	public List<RadioType> queryMoodList(Integer typeId) {
		return radioMapper.queryMoodList(typeId);
	}

	@Override
	public List<RadioAnchor> querydoAnchorList() {
		return radioMapper.querydoAnchorList();
	}
	
}
