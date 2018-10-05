package com.coord.jam;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class qnaPageController {
	
	@Autowired
	QnaDao qnaDao;
	
	@RequestMapping("/qnaList")
	public ModelAndView qnaboard(@RequestParam(value="page",defaultValue="1") String page)
	{
		//페이징 처리
		
		List<QnaDto> list=qnaDao.getAlldatas();
		int totalcount;
		  int limit;
		  int currentpage;
		  int totalpage;
		  
		  PageCount pc;
		  String pageShow;
		  
		  totalcount=qnaDao.getCount();
		  limit=10;
		  currentpage=1;
		  if(page!=null)
		  {
		   currentpage=Integer.parseInt(page);
		  }
		  totalpage=(int)Math.ceil((double)totalcount/limit);
		  int start=(currentpage-1)*limit;
		  
		  list=qnaDao.getList(start, limit);
		  System.out.println("list size:"+list.size());
		  pc=new PageCount(5, limit, totalpage);
		  pageShow=pc.ShowPaging(currentpage, "", "");
		  
		  ModelAndView view=new ModelAndView();
		  view.addObject("list",list);
		  view.addObject("pageShow",pageShow);
		  int no=totalcount-(currentpage-1)*limit;
		  view.addObject("no",no);  
		  view.setViewName("qnaList");
		  return view;
		  
	}

}
