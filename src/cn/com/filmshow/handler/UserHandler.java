package cn.com.filmshow.handler;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import cn.com.filmshow.pojo.FilmOrder;
import cn.com.filmshow.pojo.User;
import cn.com.filmshow.pojo.UserOrder;
import cn.com.filmshow.service.PersonalCenterService;
import cn.com.filmshow.service.UserService;

/**
 * @title UserRegisterHandler.java
 *<p>处理器的黄健
 * <p>① 被 Ioc 容器管理(1，XML底层配置；2，注解；)
 * <p> ② 必须声明为一个控制层组件 @Controller
 * 
 * @author 李静伟
 * @time 2018年3月31日/上午1:47:37
 */
	
@Controller

public class UserHandler {
	@Autowired
	private UserService us;
	@Autowired
	PersonalCenterService pcs;
	HttpSession session;
	//用户注册
	@RequestMapping("userRegist")
	public String regist(User user) {
		System.out.println("注册数据测试：name="+user.getUserName());
		us.userRigster(user);
		return "forward:index.jsp";
	}
	//登录
	@RequestMapping(value="userLogin",method=RequestMethod.POST)
	public String login(User user,ModelMap model,HttpServletRequest request) {
		List<User> datas = us.userLogin(user);
		 session = request.getSession();
		session.setAttribute("userDate", datas.get(0));
		//model.addAttribute("userDate", datas.get(0));
		//model.put("userData",datas.get(0));
		if(datas.size()>0) {
			System.out.println("登录成功"+datas);
			return "forward:index.jsp";
		}else {
			
			return "0";
		}
		
	}
	@RequestMapping(value="aboutToIndex")
	public String aboutToIndex() {
		return "forward:index.jsp";
	}
	@RequestMapping(value="exit")
	public String exit() {
		session.invalidate();
		return "redirect:index.jsp";	
	}
	
}
