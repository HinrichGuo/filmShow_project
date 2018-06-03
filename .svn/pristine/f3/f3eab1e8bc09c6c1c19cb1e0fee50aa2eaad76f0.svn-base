package cn.com.filmshow.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.filmshow.dao.UserMapper;
import cn.com.filmshow.pojo.User;

/**
 * @title UserServiceImpl.java
 *<p>用户接口实现
 * @author 李静伟
 * @time 2018年3月31日/上午2:18:05
 */
@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserMapper userMapper;

	public boolean userRigster(User user) {
		
		userMapper.insert(user);
		return false;
	}
	
	public List<User> userLogin(User user) {
		List<User> users= userMapper.selectByEmailAndPwd(user);
		return users;
	}

}
