package cn.xhu.softwareengineering.potal.dao;

import java.util.List;
import java.util.Map;

import cn.xhu.softwareengineering.bean.PsychoUser;

public interface UserMapper {

	PsychoUser queryUserlogin(Map<String, Object> paramMap);

	int addLike(Map<String, Integer> paramMap);

	int cancelLike(Map<String, Integer> paramMap);

	int queryLikesNum(Map<String, Integer> paramMap);

	int queryIsCollect(Map<String, Integer> paramMap);

	int cancelCollect(Map<String, Integer> paramMap);

	int addCollect(Map<String, Integer> paramMap);

	List<Integer> queryUserLikeComment(Map<String, Object> paramMap);

}
