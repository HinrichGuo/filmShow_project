package cn.com.filmshow.dao;

import java.util.List;

import cn.com.filmshow.pojo.UserOrder;

public interface UserOrderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserOrder record);

    int insertSelective(UserOrder record);

    UserOrder selectByPrimaryKey(Integer id);
    List<UserOrder> selectByUserId(int id);
    int updateByPrimaryKeySelective(UserOrder record);

    int updateByPrimaryKey(UserOrder record);
}