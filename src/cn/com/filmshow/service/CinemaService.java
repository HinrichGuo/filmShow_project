package cn.com.filmshow.service;

import java.util.List;
import java.util.Map;

import cn.com.filmshow.pojo.Cinema;

/**
 * @title CinemaService.java
 *        <p>
 *        ��ӰԺ�ӿ�
 * @author ·ƼƼ
 * @param <Cinema>
 * @time 2018��4��1��
 */
public interface CinemaService {

	int deleteByPrimaryKey(Integer id);

	int insert(Cinema record);

	int insertSelective(Cinema record);

	List<Map<String, Object>> selectCinema();

	Cinema selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(Cinema record);

	int updateByPrimaryKey(Cinema record);

}
