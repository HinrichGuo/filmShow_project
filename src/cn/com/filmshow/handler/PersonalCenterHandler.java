package cn.com.filmshow.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.com.filmshow.pojo.FilmOrder;
import cn.com.filmshow.pojo.GoodsOrder;
import cn.com.filmshow.pojo.UserOrder;
import cn.com.filmshow.service.PersonalCenterService;

/**
 * @title PersonalCenterHandler.java
 *        <p>
 * 		�������������Ϣ��ѯ
 * @author �ΰ
 * @time 2018��4��8��/����1:22:01
 */
@Controller
public class PersonalCenterHandler {
	@Autowired
	PersonalCenterService pcs;

	@RequestMapping(value = "personCon")
	public String personCor(HttpServletRequest request, ModelMap model) {
		
		int userId = Integer.parseInt(request.getParameter("userId"));
		List<FilmOrder> FilmOrderDatas = pcs.selectAllFilmOrder(userId);
		List<UserOrder> UserOrderDatas = pcs.selectUserOrder(userId);
		List<FilmOrder> HistoryOrderDatas = pcs.selectAllHistFilmOrder(userId);
		List<GoodsOrder> GoodsOrderDatas = pcs.sellectGoodsOrder(userId);
		// ��Ӱ������Ϣ�洢
		model.addAttribute("FilmOrderDatas", FilmOrderDatas);
		// �û�����
		model.addAttribute("UserOrdersDatas", UserOrderDatas);
		// ��ʷ��¼��ѯ����
		model.addAttribute("HistoryFilm", HistoryOrderDatas);
		// ��Ƶ����
		model.addAttribute("GoodsOrderDatas", GoodsOrderDatas);
		
		return "about";
	}

	@RequestMapping(value = "to404")
	public String selectAllFilmOrder(ModelMap model) {
		return "404";

	}
}
