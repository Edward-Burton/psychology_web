package cn.xhu.softwareengineering.potal.service;

import java.util.List;
import java.util.Map;

import cn.xhu.softwareengineering.bean.PsychoArticle;
import cn.xhu.softwareengineering.bean.PsychoUser;
import cn.xhu.softwareengineering.bean.UserCollection;

public interface UserService {
	/* Ctrl + t :找到实现类 */
	PsychoUser queryUserlogin(Map<String, Object> paramMap);

	int handleUserLike(Map<String, Integer> paramMap, Integer action);

	int queryIsCollect(Map<String, Integer> paramMap);

	int handleUserCollect(Map<String, Integer> paramMap, Integer iscollect);

	List<Integer> queryUserlikeComment(Map<String, Object> paramMap);

	PsychoUser queryUserById(Integer userid);

	List<PsychoArticle> queryArticleByUserId(Integer userid);

	int queryFollow(Map<String, Object> paramMap);

	int doFollow(Map<String, Object> paramMap, Integer action);

	int queryLikeByUserId(Integer userId);

	UserCollection queryUserCollect(Map<String, Integer> paramMap);

	PsychoUser queryUserQaById(Integer userid);

}
