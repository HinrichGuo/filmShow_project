package cn.com.filmshow.dao;

import cn.com.filmshow.pojo.FilmCinemaPlay;

public interface FilmCinemaPlayMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FilmCinemaPlay record);

    int insertSelective(FilmCinemaPlay record);

    FilmCinemaPlay selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(FilmCinemaPlay record);

    int updateByPrimaryKey(FilmCinemaPlay record);
}