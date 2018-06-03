package cn.com.filmshow.dao;

import java.util.List;

import cn.com.filmshow.pojo.GoodsOrder;

public interface GoodsOrderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GoodsOrder record);

    int insertSelective(GoodsOrder record);

    GoodsOrder selectByPrimaryKey(Integer id);
    
    List<GoodsOrder> selectByUserId(Integer id);

    int updateByPrimaryKeySelective(GoodsOrder record);

    int updateByPrimaryKey(GoodsOrder record);
}