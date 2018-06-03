package cn.com.filmshow.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.filmshow.dao.FilmMapper;
import cn.com.filmshow.dao.FilmOrderMapper;
import cn.com.filmshow.pojo.Film;
import cn.com.filmshow.pojo.FilmOrder;

@Service
public class FilmServiceImpl implements FilmService {
	@Autowired
	private FilmMapper filmMapper;
	@Autowired
	private FilmOrderMapper filmOrderMapper;

	@Override
	public List<Film> selectFilm1(Film film) {
		List<Film> films = filmMapper.selectByFilmPlaytime(film);
		// System.out.println("FilmServiceImpl中selectFilm1方法@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@："
		// + films);
		return films;
	}

	@Override
	public List<FilmOrder> selectFilm2(FilmOrder film) {
		List<FilmOrder> films_1 = filmOrderMapper.selectByAccount(film);
		// System.out.println("进入FilmServiceImpl的selectFilm2@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@2"+films_1);
		return films_1;
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		return filmMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Film record) {
		return filmMapper.insert(record);
	}

	@Override
	public int insertSelective(Film record) {
		return filmMapper.insertSelective(record);
	}

	@Override
	public Film selectByPrimaryKey(Integer id) {
		return filmMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Film record) {
		return filmMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Film record) {
		return filmMapper.updateByPrimaryKey(record);
	}

}
