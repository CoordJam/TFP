package com.coord.jam;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
	
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
	
}
