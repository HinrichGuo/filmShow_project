package cn.com.filmshow.handler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @title FilmOrderHandler.java
 *        <p>
 *        影片订单
 *        <p>
 * @author Rubin Zhang
 * @time 15 Apr 201817:55:24
 */
@Controller
public class FilmOrderHandler {
	/**
	 * 选座，需要显示电影名称，影厅信息，
	 * @return
	 */
	@RequestMapping(value = "/perchMovie")
	public String chooseMovie() {
		return "perchMovie";
	}
	
	/**
	 * 支付
	 * @return 需要显示电影/食品/用户信息
	 */
	@RequestMapping(value = "/payment")
	public String paymentView() {
		return "payment";
	}
}
