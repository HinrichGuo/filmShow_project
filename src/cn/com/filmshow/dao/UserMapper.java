package cn.com.filmshow.dao;

import java.util.List;

import cn.com.filmshow.pojo.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User user);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);
    
    List<User> selectByEmailAndPwd(User record);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}