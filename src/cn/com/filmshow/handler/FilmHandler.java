package cn.com.filmshow.handler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import cn.com.filmshow.pojo.Film;
import cn.com.filmshow.pojo.FilmOrder;
import cn.com.filmshow.service.FilmCommentService;
import cn.com.filmshow.service.FilmService;

@Controller
public class FilmHandler {
	@Autowired
	private FilmService filmService;
	@Autowired
	private FilmCommentService filmCommentService;

	/*
	 * <a href='${pageContext.request.contextPath
	 * }/movieOneshow?movieId="+obj[i].id+"'>
	 */
	@ModelAttribute
	public void getFilmById(@RequestParam(value = "movieId", required = false) Integer id, ModelMap modelMap) {
		System.out.println("测试id获取的值 : " + id);
		if (id != null) {
			modelMap.addAttribute("film", filmService.selectByPrimaryKey(id));
		}
	}

	@ResponseBody
	@RequestMapping(value = "/method")
	public void selectFile_1(Film film, HttpServletResponse response) throws IOException {
		response.setHeader("Content-Type", "text/html;charset=utf-8");
		List<Film> datas = filmService.selectFilm1(film);
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		String dataStr = gson.toJson(datas);
		out.println(dataStr);
		out.flush();
		out.close();
	}

	@ResponseBody
	@RequestMapping(value = "/method_1")
	public void selectFile_2(FilmOrder film, HttpServletResponse response) throws IOException {
		// System.out.println("进入FilmHandler的/method_1");
		response.setHeader("Content-Type", "text/html;charset=utf-8");
		PrintWriter out_1 = response.getWriter();
		Gson gson = new Gson();
		String dataStr_1 = gson.toJson(filmService.selectFilm2(film));
		out_1.println(dataStr_1);
		out_1.flush();
		out_1.close();
	}

	/**
	 * 电影展示
	 * 
	 * @param id
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/movieOneshow")
	public String movieOneshow(@RequestParam(value = "movieId", required = false, defaultValue = "1") Integer id,
			ModelMap modelMap) {
		System.out.println("测试id --- > : " + id);
		modelMap.addAttribute("film", filmService.selectByPrimaryKey(id));
		modelMap.addAttribute("filmCommentDatas", filmCommentService.selectFilmCommentByFilmId(id));
		return "movie-single";
	}

	/**
	 * 电影时刻表展示
	 * 
	 * @param id
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/movieOneTimeShow/{id}")
	public String movieOne(@PathVariable("id") Integer id, ModelMap modelMap) {
		System.out.println("测试信息---- > id : " + id);
		modelMap.addAttribute("film", filmService.selectByPrimaryKey(id));
		return "movie-select-show";
	}

	@RequestMapping(value = "/xxx")
	public String getSeatView(@PathVariable("id") Integer id, ModelMap modelMap) {
		System.out.println("测试信息---- > id : " + id);
		modelMap.addAttribute("film", filmService.selectByPrimaryKey(id));
		return "movie-select-show";
	}

}
