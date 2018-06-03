package cn.com.filmshow.dao;

import java.util.List;

import cn.com.filmshow.pojo.Film;

public interface FilmMapper {
	int deleteByPrimaryKey(Integer id);

	int insert(Film record);

	int insertSelective(Film record);

	Film selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(Film record);

	int updateByPrimaryKey(Film record);

	/**
	 * @author lry
	 * @param record
	 * @return List<Film>
	 */
	List<Film> selectByFilmPlaytime(Film record);
}