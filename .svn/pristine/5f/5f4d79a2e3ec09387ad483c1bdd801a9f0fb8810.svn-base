package cn.com.filmshow.service;

import java.util.List;

import cn.com.filmshow.pojo.FilmComment;

public interface FilmCommentService {
	int deleteByPrimaryKey(Integer id);

	int insert(FilmComment record);

	int insertSelective(FilmComment record);

	FilmComment selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(FilmComment record);

	int updateByPrimaryKey(FilmComment record);

	List<FilmComment> selectFilmCommentByFilmId(int filmId);
}
