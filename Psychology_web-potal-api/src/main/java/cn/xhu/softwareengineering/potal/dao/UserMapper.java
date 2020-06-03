package cn.xhu.softwareengineering.potal.dao;

import java.util.List;
import java.util.Map;

import cn.xhu.softwareengineering.bean.Message;
import cn.xhu.softwareengineering.bean.PsychoArticle;
import cn.xhu.softwareengineering.bean.PsychoUser;
import cn.xhu.softwareengineering.bean.UserCollection;

public interface UserMapper {

	PsychoUser queryUserlogin(Map<String, Object> paramMap);

	int addLike(Map<String, Integer> paramMap);

	int cancelLike(Map<String, Integer> paramMap);

	int queryLikesNum(Map<String, Integer> paramMap);

	int queryIsCollect(Map<String, Integer> paramMap);

	int cancelCollect(Map<String, Integer> paramMap);

	int addCollect(Map<String, Integer> paramMap);

	List<Integer> queryUserLikeComment(Map<String, Object> paramMap);

	PsychoUser queryUserById(Integer userid);

	List<PsychoArticle> queryArticleByUserId(Integer userid);

	int queryFollow(Map<String, Object> paramMap);

	int addFollow(Map<String, Object> paramMap);

	int cancelFollow(Map<String, Object> paramMap);

	int queryLikeByUserId(Integer userid);

	UserCollection queryUserCollectArticle(Map<String, Integer> paramMap);

	UserCollection queryUserCollectQustionA(Map<String, Integer> paramMap);

	UserCollection queryUserCollectFM(Map<String, Integer> paramMap);

	PsychoUser queryUserQaById(Integer userid);

	List<PsychoUser> queryTalkerByUserid(Integer userid);

	List<Message> queryMessageList(Map<String, Object> paramMap);

	int queryUserCollectCount(Map<String, Integer> paramMap);

}
