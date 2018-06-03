package cn.com.filmshow.service;

import java.util.List;

import cn.com.filmshow.pojo.User;

/**
 * @title UserService.java
 *<p>用户接口
 * @author 李静伟
 * @time 2018年3月31日/上午2:18:35
 */
public interface UserService {
	public boolean userRigster(User user);
	
	public List<User> userLogin(User user);
	
}
