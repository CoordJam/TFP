package com.coord.jam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class QnaController {
  @Autowired
  private QnaDao qnaDao;

  @RequestMapping("/qnaContent")
  public ModelAndView qnaboardContent(@RequestParam int seq) {
    ModelAndView model = new ModelAndView();
    QnaDto dto = qnaDao.selectseqqna(seq);
    model.addObject("dto", dto);
    model.setViewName("qnaContent");
    return model;
  }

  @RequestMapping("/qnaDelete")
  public ModelAndView qnaboardDelete(@RequestParam int seq) {
    ModelAndView model = new ModelAndView();
    QnaDto dto = qnaDao.delete(seq);
    model.addObject("dto", dto);
    model.setViewName("redirect:qnaList");
    return model;
  }

  @RequestMapping(value = "/qnaInsert", method = RequestMethod.POST)
  public ModelAndView qnaInsert(@ModelAttribute QnaDto qnaDto) {
    ModelAndView view = new ModelAndView();
    qnaDao.insertQnaboard(qnaDto);
    view.setViewName("redirect:qnaList");
    return view;
  }

  @RequestMapping("/qnaWriteform")
  public String qnaWriteform() {
    return "qnaWriteform";
  }
}