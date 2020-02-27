package cn.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/HomeController")
public class HomeController {
	
	@RequestMapping("/personal")
	public String personal() {
		return "personal";
	}
}
