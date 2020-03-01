package cn.java.controller.home;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.java.entity.Commodity;
import cn.java.entity.User;
import cn.java.service.HomeService;

@Controller
@RequestMapping("/HomeController")
public class HomeController {
	
	@Autowired
	private HomeService service;
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		return "home/Login";
	}
	
	
	@RequestMapping("/personal")
	public String personal(Model model,HttpSession session)	{
		User user = (User) session.getAttribute("user");
		String filename = user.getPhonenumber()+".png";
		System.out.println(filename);
		session.setAttribute("fileName", filename);
		return "home/personal";
	}
	
	@RequestMapping("/queryIt")
	public String queryIt() {
		return "home/search";
	}
	
	@RequestMapping("/introduction")
	public String introduction(String id,Model model) {
		Commodity commodity = service.getCommdityById(id);
		model.addAttribute("commodity", commodity);
		return "home/introduction";
	}
	
	@RequestMapping("/seletByType")
	public String seletByType(String type,Model model) {
		List<Commodity> commodities = service.getCommdityByType(type);
		model.addAttribute("commodities", commodities);
		return "home/search";
	}
}
