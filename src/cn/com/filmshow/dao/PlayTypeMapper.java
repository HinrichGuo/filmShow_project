package cn.com.filmshow.dao;

import cn.com.filmshow.pojo.PlayType;

public interface PlayTypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(PlayType record);

    int insertSelective(PlayType record);

    PlayType selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(PlayType record);

    int updateByPrimaryKey(PlayType record);
}