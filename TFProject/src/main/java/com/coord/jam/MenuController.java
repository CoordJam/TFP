package com.coord.jam;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MenuController {
  @Autowired
  private QnaDao Test3Dao;

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

  @RequestMapping("/test3")
  public ModelAndView test3() {
    ModelAndView model = new ModelAndView();
    List<QnaDto> list = Test3Dao.getAlldatas();
    model.addObject("list", list);
    model.setViewName("basicTest3");
    return model;
  }

  @RequestMapping("/test4")
  public ModelAndView test4() {
    ModelAndView model = new ModelAndView();
    model.setViewName("basicTest4");
    return model;
  }
}
