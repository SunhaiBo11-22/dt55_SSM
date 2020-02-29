package cn.java.controller.home;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cn.java.entity.Address;
import cn.java.entity.User;
import cn.java.service.PersonalService;

@Controller
@RequestMapping("/PersonalController")
public class PersonalController {
	
	@Autowired
	private PersonalService personal;
	
	@RequestMapping("/backHome")
	public String backHome() {
		return "home/home";
		
	}
	
	
	@RequestMapping(value="/updateFile",method=RequestMethod.POST)
	public String updateFile(HttpServletRequest request,HttpSession session,@RequestParam("userfile") MultipartFile files,Model model) {
		String servePath = "D:\\userFile";
		MultipartFile file = files;
		User user =(User) session.getAttribute("user");
		System.out.println(user.toString());
		String filename = user.getPhonenumber()+".png" ;
		System.out.println(filename);
		try {
			FileUtils.copyInputStreamToFile( file.getInputStream(),new File(servePath+"/"+filename));
		} catch (IOException e) {
			e.printStackTrace();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "home/personal";
	}
	
	@RequestMapping("/address")
	public String address(HttpSession session,Model model) {
		User user = (User) session.getAttribute("user");
		List<Address> addresses = personal.getAllAddressByUser(user);
		session.setAttribute("addresses", addresses);
		return "home/address";
	}
	
	
	@RequestMapping("/addtheAddress")
	public String addAddress(HttpSession session,Model model,Address address) {
		User user = (User) session.getAttribute("user");
		address.setUserid(user.getId());
		personal.addAddressInUser(address);
		List<Address> addresses = personal.getAllAddressByUser(user);
		session.setAttribute("addresses", addresses);
		return "home/address";
	}
	
	
	@RequestMapping("/deleteAddress")
	public String deleteAddress(HttpSession session,Model model,String id) {
		User user = (User) session.getAttribute("user");
		personal.deleteAddressById(id);
		List<Address> addresses = personal.getAllAddressByUser(user);
		session.setAttribute("addresses", addresses);
		return "home/address";
	}
}
