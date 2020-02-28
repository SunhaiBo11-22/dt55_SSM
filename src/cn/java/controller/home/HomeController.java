package cn.java.controller.home;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.java.entity.User;

@Controller
@RequestMapping("/HomeController")
public class HomeController {
	
	@RequestMapping("/personal")
	public String personal(Model model,HttpSession session)	{
		User user = (User) session.getAttribute("user");
		String filename = user.getPhonenumber()+".png";
		System.out.println(filename);
		session.setAttribute("fileName", filename);
		return "home/personal";
	}
	
	@RequestMapping("queryIt")
	public String queryIt() {
		return "home/search";
	}
}
