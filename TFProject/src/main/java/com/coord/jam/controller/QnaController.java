package com.coord.jam.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.coord.jam.PageCount;
import com.coord.jam.dao.QnaDao;
import com.coord.jam.dto.CommentDto;
import com.coord.jam.dto.QnaDto;

@Controller
public class QnaController {
  @Autowired
  private QnaDao qnaDao;

  @RequestMapping("/qnacontent")
  public ModelAndView qnaboardContent(@RequestParam int seq,
      @RequestParam("seq") int comment_parent) {
    ModelAndView model = new ModelAndView();
    QnaDto dto = qnaDao.selectseqqna(seq);

    // 해당 글에 대한 댓글을 보낸다
    List<CommentDto> alist = qnaDao.getReply(seq);
    model.addObject("alist", alist); // 댓글목록
    model.addObject("acount", alist.size()); // 댓글수
    model.addObject("dto", dto);
    model.setViewName("qnacontent");
    return model;
  }

  @RequestMapping(value = "/qnainsert", method = RequestMethod.POST)
  public ModelAndView qnaInsert(@ModelAttribute QnaDto qnaDto) {
    ModelAndView view = new ModelAndView();
    qnaDao.insertQnaboard(qnaDto);
    view.setViewName("redirect:qnalist");
    return view;
  }

  @RequestMapping("/qnawrite")
  public String qnaWriteform() {
    return "qnawrite";
  }

  @RequestMapping("/qnareplyinsert")
  public String reply(@ModelAttribute CommentDto adto) {
    qnaDao.insertReply(adto);
    return "redirect:qnacontent?seq=" + adto.getComment_parent();
  }

  @RequestMapping("/qnadelete")
  public ModelAndView qnaboardDelete(@RequestParam int seq) {
    ModelAndView model = new ModelAndView();
    QnaDto dto = qnaDao.delete(seq);
    model.addObject("dto", dto);
    model.setViewName("redirect:qnalist");
    return model;
  }

  @RequestMapping("/replydel")
  public ModelAndView replyDelete(@RequestParam int seq, @RequestParam int num) {
    ModelAndView model = new ModelAndView();
    qnaDao.replydelete(seq);

    model.setViewName("redirect:qnacontent?seq=" + num);
    return model;
  }

  @RequestMapping("/qnalist")
  public ModelAndView qnaboard(@RequestParam(value = "page", defaultValue = "1") String page) {
    // 페이징 처리
    List<QnaDto> list = qnaDao.getAlldatas();
    int totalcount;
    int limit;
    int currentpage;
    int totalpage;

    PageCount pc;
    String pageShow;

    totalcount = qnaDao.getCount();
    limit = 10;
    currentpage = 1;
    if (page != null) {
      currentpage = Integer.parseInt(page);
    }
    totalpage = (int) Math.ceil((double) totalcount / limit);
    int start = (currentpage - 1) * limit;

    list = qnaDao.getList(start, limit);
    System.out.println("list size:" + list.size());
    pc = new PageCount(5, limit, totalpage);
    pageShow = pc.ShowPaging(currentpage, "", "");

    ModelAndView view = new ModelAndView();
    view.addObject("list", list);
    view.addObject("pageShow", pageShow);
    int no = totalcount - (currentpage - 1) * limit;
    view.addObject("no", no);
    view.setViewName("qnalist");
    return view;
  }
}
