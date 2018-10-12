package com.coord.jam;

import java.util.List;



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
  public ModelAndView qnaboardContent(@RequestParam int seq,@RequestParam("seq") int comment_parent) {
    ModelAndView model = new ModelAndView();
    QnaDto dto = qnaDao.selectseqqna(seq);
    
    
  //해당 글에 대한 댓글을 보낸다
	List<CommentDto> alist=qnaDao.getReply(seq);
	model.addObject("alist", alist); //댓글목록
	model.addObject("acount", alist.size()); //댓글수

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
  @RequestMapping("/qnaReplyInsert")
	public String reply(
			@ModelAttribute CommentDto adto)
	{
		qnaDao.insertReply(adto);
		return "redirect:qnaContent?seq="+adto.getComment_parent();		
		}
	  
  @RequestMapping("/replydel")
  public ModelAndView replyDelete(@RequestParam int comment_seq) {
	    ModelAndView model = new ModelAndView();
	    QnaDto dto = qnaDao.replydelete(comment_seq);
	    model.addObject("dto", dto);
	    model.setViewName("redirect:qnaContent");
	    return model;
	  }
}
