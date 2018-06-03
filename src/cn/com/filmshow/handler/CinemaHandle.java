package cn.com.filmshow.handler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import cn.com.filmshow.service.CinemaService;

/**
 * @title CinemaHandle.java
 *        <p>
 * @author ·ƼƼ
 * @time 2018��4��1��
 */
@Controller
public class CinemaHandle {
	@Autowired
	private CinemaService cinemaService;
	private int resule;
	private List<Map<String, Object>> Cdata;

	@ResponseBody
	@RequestMapping("/selectCinema")
	public void selectAllCinema(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Cdata = cinemaService.selectCinema();
		response.setHeader("Content-Type", "text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		String requestTexts = gson.toJson(Cdata);
		out.println(requestTexts);
		out.flush();
		out.close();
	}
	
	/**
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value="/allCinemas")
	public String allCinemas(ModelMap modelMap){
		modelMap.addAttribute("cinemaDatas", "");
		return "allCinemas";
	}

	/**
	 * ����id ��ȡӰԺ������Ϣ
	 * @param cinemaId
	 * @param modelMap
	 */
	@ModelAttribute
	public void cinemaData(@RequestParam(value = "cinemaId", defaultValue = "1", required = false) Integer cinemaId,
			ModelMap modelMap) {
		if (cinemaId != null) {
			modelMap.addAttribute("cinema", "");
		}

	}

	/**
	 * ��ȡһ����ӰԺ��ַ��Ϣ
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value="/movieAddress")
	public String getCinemaById(ModelMap modelMap) {
		modelMap.addAttribute("", "");
		return "cinemaAddress";
	}
	
	/**
	 * ��ǰӰԺ�����е�Ӱ
	 * @param modelMap :��ȡ��ӰԺ�͵�Ӱ��Ϣ
	 * @return
	 */
	@RequestMapping(value="getFilmBycinemaId")
	public String getFilmBycinemaId(ModelMap modelMap) {
		modelMap.addAttribute("", "");
		return "AllFilmByCinemaId";
	}
	
	

}
