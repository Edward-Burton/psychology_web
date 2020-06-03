package cn.xhu.softwareengineering.potal.service;

import java.util.List;
import java.util.Map;

import cn.xhu.softwareengineering.bean.PsychoRadio;
import cn.xhu.softwareengineering.bean.RadioAnchor;
import cn.xhu.softwareengineering.bean.RadioComment;
import cn.xhu.softwareengineering.bean.RadioType;

public interface RadioService {

	List<PsychoRadio> queryRadioIndexList(Map<String, Object> paramMap);

	List<RadioComment> queryRadioComment(Integer radioid);

	List<PsychoRadio> queryLastestPlayList();

	List<PsychoRadio> queryLikedMostPlayList();

	List<RadioType> queryMoodList(Integer typeId);

	List<RadioAnchor> querydoAnchorList();

	PsychoRadio queryRadioById(Map<String, Integer> paramMap);

	int addComment(Map<String, Object> paramMap);

	
}
