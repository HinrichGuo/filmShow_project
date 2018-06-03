package cn.com.filmshow.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.filmshow.dao.FilmOrderMapper;
import cn.com.filmshow.dao.GoodsOrderMapper;
import cn.com.filmshow.dao.UserOrderMapper;
import cn.com.filmshow.pojo.FilmOrder;
import cn.com.filmshow.pojo.GoodsOrder;
import cn.com.filmshow.pojo.UserOrder;

@Service
public class PersonalCenterServiceImpl implements PersonalCenterService {
	@Autowired
	private FilmOrderMapper  fom;
	@Autowired
	private UserOrderMapper uom;
	@Autowired
	private GoodsOrderMapper go;

	@Override
	public List<FilmOrder> selectAllFilmOrder(int id) {
		
		return fom.selectAllFilmOrder(id);
	}

	@Override
	public List<FilmOrder> selectAllHistFilmOrder(int id) {
		// TODO Auto-generated method stub
		return fom.selectAllHistFilmOrder(id);
	}

	@Override
	public List<UserOrder> selectUserOrder(int id) {
		// TODO Auto-generated method stub
		return uom.selectByUserId( id);
	}

	@Override
	public List<GoodsOrder> sellectGoodsOrder(int id) {
		// TODO Auto-generated method stub
		return go.selectByUserId(id);
	}

}
