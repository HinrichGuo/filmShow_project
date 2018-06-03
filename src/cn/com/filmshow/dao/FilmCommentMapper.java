package cn.com.filmshow.dao;

import java.util.List;

import cn.com.filmshow.pojo.FilmComment;

public interface FilmCommentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FilmComment record);

    int insertSelective(FilmComment record);

    FilmComment selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(FilmComment record);

    int updateByPrimaryKey(FilmComment record);
    
    /**
     * 更具电影id查询查询
     * @param record
     * @return
     */
    List<FilmComment> selectFilmCommentByFilmId(int filmId);
}