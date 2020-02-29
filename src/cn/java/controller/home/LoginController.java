package cn.java.controller.home;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.java.entity.Producttype;
import cn.java.entity.User;
import cn.java.service.LoginService;

@Controller
@RequestMapping("/LoginController")
public class LoginController {
	
	@Autowired
	private LoginService service;
	
	@RequestMapping("/login")
	public String login(User user,HttpServletRequest request, HttpServletResponse response,Model model) {
		HttpSession session = request.getSession();
		session.setMaxInactiveInterval(10800);
		User list = service.isLogin(user);
		System.out.println(user.toString());
		if (list==null) {
			model.addAttribute("errorname", "密码或者用户名错误");
			return "home/Login";
		}else {
			List<Producttype> typeList = service.getHomeAllProduct();
			for (Producttype a : typeList) {
				System.out.println(a.toString());
				for (Producttype b : a.getList()) {
					System.out.println("\t"+b.toString());
				}
			}
			session.setAttribute("typeList", typeList);
			session.setAttribute("user", list);
			return "home/home";
		}
	}
	
	@RequestMapping("/register")
	public String register(User user,Model model) {
		
		if (service.isUsernameExistence(user)) {
			model.addAttribute("user",user);
			model.addAttribute("isType",1);
			return "home/register";
		}
		if (service.isUserphoneExistence(user)) {
			model.addAttribute("user",user);
			model.addAttribute("isType",2);
			return "home/register";
		}
		service.registerService(user);
		return "home/HaveUser";
	}
	
	@RequestMapping("/toRegister")
	public String toRegister() {
		return "home/register";
	}
	
}
