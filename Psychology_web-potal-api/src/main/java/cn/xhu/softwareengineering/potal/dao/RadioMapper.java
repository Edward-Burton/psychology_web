package cn.xhu.softwareengineering.potal.dao;

import java.util.List;
import java.util.Map;

import cn.xhu.softwareengineering.bean.PsychoRadio;
import cn.xhu.softwareengineering.bean.RadioAnchor;
import cn.xhu.softwareengineering.bean.RadioComment;
import cn.xhu.softwareengineering.bean.RadioType;

public interface RadioMapper {

	public List<PsychoRadio> queryRadioIndexList(Map<String, Object> paramMap);

	public List<RadioComment> queryRadioComment(Integer radioid);

	public List<PsychoRadio> queryLastestPlayList();

	public List<PsychoRadio> queryLikedMostPlayList();

	public List<RadioType> queryMoodList(Integer typeId);

	public List<RadioAnchor> querydoAnchorList();

}
