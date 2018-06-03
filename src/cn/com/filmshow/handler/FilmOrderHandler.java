package cn.com.filmshow.handler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @title FilmOrderHandler.java
 *        <p>
 *        ӰƬ����
 *        <p>
 * @author Rubin Zhang
 * @time 15 Apr 201817:55:24
 */
@Controller
public class FilmOrderHandler {
	/**
	 * ѡ������Ҫ��ʾ��Ӱ���ƣ�Ӱ����Ϣ��
	 * @return
	 */
	@RequestMapping(value = "/perchMovie")
	public String chooseMovie() {
		return "perchMovie";
	}
	
	/**
	 * ֧��
	 * @return ��Ҫ��ʾ��Ӱ/ʳƷ/�û���Ϣ
	 */
	@RequestMapping(value = "/payment")
	public String paymentView() {
		return "payment";
	}
}
