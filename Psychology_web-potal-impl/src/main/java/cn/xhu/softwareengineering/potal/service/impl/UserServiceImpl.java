package cn.xhu.softwareengineering.potal.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.xhu.softwareengineering.bean.Message;
import cn.xhu.softwareengineering.bean.PsychoArticle;
import cn.xhu.softwareengineering.bean.PsychoUser;
import cn.xhu.softwareengineering.bean.UserCollection;
import cn.xhu.softwareengineering.exception.LoginFailException;
import cn.xhu.softwareengineering.potal.dao.UserMapper;
import cn.xhu.softwareengineering.potal.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public PsychoUser queryUserlogin(Map<String, Object> paramMap) {
		PsychoUser psychoUser = userMapper.queryUserlogin(paramMap);
		if(psychoUser == null) {
			throw new LoginFailException("用户账号或密码不正确！");
		}
		
		return psychoUser;
	}

	@Override
	public int handleUserLike(Map<String, Integer> paramMap, Integer action) {
		int status=0;
		if(action==0) {
			status=userMapper.cancelLike(paramMap);
		}
		else{
			status=userMapper.addLike(paramMap);
		}
		System.out.println("serstatus:"+status);
		if(status!=0) {
			int c = userMapper.queryLikesNum(paramMap);
			System.out.println("serlikenum"+c);
			return c;
		}
		return 0;
	}

	@Override
	public int queryIsCollect(Map<String, Integer> paramMap) {
		return userMapper.queryIsCollect(paramMap);
	}

	@Override
	public int handleUserCollect(Map<String, Integer> paramMap, Integer iscollect) {
		int status=0;
		if(iscollect==1) {
			status=userMapper.cancelCollect(paramMap);
		}else if(iscollect==0) {
			status=userMapper.addCollect(paramMap);
		}
		if(status!=0) {
			return userMapper.queryIsCollect(paramMap);
		}
		return 0;
	}

	@Override
	public List<Integer> queryUserlikeComment(Map<String, Object> paramMap) {
		return userMapper.queryUserLikeComment(paramMap);
	}

	@Override
	public PsychoUser queryUserById(Integer userid) {
		return userMapper.queryUserById(userid);
	}

	@Override
	public List<PsychoArticle> queryArticleByUserId(Integer userid) {
		return userMapper.queryArticleByUserId(userid);
	}

	@Override
	public int queryFollow(Map<String, Object> paramMap) {
		return userMapper.queryFollow(paramMap);
	}

	@Override
	public int doFollow(Map<String, Object> paramMap, Integer action) {
		if(action>0) {
			return userMapper.addFollow(paramMap);
		}else {
			return userMapper.cancelFollow(paramMap);
		}
	}

	@Override
	public int queryLikeByUserId(Integer userid) {
		return userMapper.queryLikeByUserId(userid);
	}

	@Override
	public UserCollection queryUserCollect(Map<String, Integer> paramMap) {
		System.out.println("typeid-->"+paramMap.get("typeid"));
		if(paramMap.get("typeid")==1) {
			return userMapper.queryUserCollectArticle(paramMap);
		}else if(paramMap.get("typeid")==2) {
			return userMapper.queryUserCollectQustionA(paramMap);
		}else if(paramMap.get("typeid")==5) {
			return userMapper.queryUserCollectFM(paramMap);
		}
		return null;
	}

	@Override
	public PsychoUser queryUserQaById(Integer userid) {
		return userMapper.queryUserQaById(userid);
	}

	@Override
	public List<PsychoUser> queryTalkerByUserid(Integer userid) {
		List<PsychoUser> list = userMapper.queryTalkerByUserid(userid);
		for(PsychoUser user: list) {
			List<Message> messageList = user.getMessageList();
			for(Message m:messageList) {
				if(m.getFrom()==userid||m.getTo()==userid) {
					messageList.clear();
					messageList.add(m);
					break;
				}
			}
		}
		return list;
	}

	@Override
	public List<Message> queryMessageList(Map<String, Object> paramMap) {
		return userMapper.queryMessageList(paramMap);
	}

	@Override
	public int queryUserCollectCount(Map<String, Integer> paramMap) {
		return userMapper.queryUserCollectCount(paramMap);
	}


}
