package cn.com.filmshow.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.filmshow.dao.FilmCommentMapper;
import cn.com.filmshow.pojo.FilmComment;

@Service
public class FilmCommentServiceImpl implements FilmCommentService {
	
	@Autowired
	private FilmCommentMapper filmCommentMapper;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(FilmComment record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(FilmComment record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public FilmComment selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return filmCommentMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(FilmComment record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(FilmComment record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<FilmComment> selectFilmCommentByFilmId(int filmId) {
		return filmCommentMapper.selectFilmCommentByFilmId(filmId);
	}

}
