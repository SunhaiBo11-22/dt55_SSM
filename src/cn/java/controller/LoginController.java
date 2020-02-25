package cn.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.java.entity.User;
import cn.java.service.LoginService;

@Controller
@RequestMapping("/LoginController")
public class LoginController {
	
	@Autowired
	private LoginService service;
	
	@RequestMapping("/login")
	public String login(User user,Model model) {
		if (user.getUsername() == "") {
			return "Login";
		}
		if (!service.isLogin(user)) {
			model.addAttribute("errorname", "密码或者用户名错误");
			return "Login";
		}
		return "index";
	}
	
	@RequestMapping("/register")
	public String register(User user,Model model) {
		
		if (service.isUsernameExistence(user)) {
			model.addAttribute("user",user);
			model.addAttribute("isType",1);
			return "register";
		}
		if (service.isUserphoneExistence(user)) {
			model.addAttribute("user",user);
			model.addAttribute("isType",2);
			return "register";
		}
		service.registerService(user);
		return "HaveUser";
	}
	
}
