package com.coord.jam;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MenuController {
	@Autowired
	private Test3Dao Test3Dao;
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/test1")
	public String test1() {
		return "basicTest";
	}
	
	@RequestMapping("/test2")
	public String test2() {
		return "basicTest2";
	}
	
	/*@RequestMapping("/test3")
	public String test3() {
		return "basicTest3";
	}*/
	@RequestMapping("/test3")
	public ModelAndView test3() {
		ModelAndView model=new ModelAndView();
		List<Test3Dto> list=Test3Dao.getAlldatas();
		model.addObject("list",list);
		model.setViewName("basicTest3");
		return model;
	
	}
	
	
}
