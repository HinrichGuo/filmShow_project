package cn.com.filmshow.dao;

import java.util.List;

import cn.com.filmshow.pojo.Film;
import cn.com.filmshow.pojo.FilmOrder;

public interface FilmOrderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FilmOrder record);

    int insertSelective(FilmOrder record);

    FilmOrder selectByPrimaryKey(Integer id);
    
    List<FilmOrder> selectAllFilmOrder(Integer id);
    
    List<FilmOrder> selectAllHistFilmOrder(Integer id);
    

    int updateByPrimaryKeySelective(FilmOrder record);

    int updateByPrimaryKey(FilmOrder record);
    
    /**
     * @author lry
     * @param record
     * @return List<FilmOrder>
     */
    List<FilmOrder> selectByAccount(FilmOrder record);
}