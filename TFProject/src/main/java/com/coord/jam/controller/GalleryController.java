package com.coord.jam.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.coord.jam.PageCount;
import com.coord.jam.SpringFileWriter;
import com.coord.jam.dao.GalleryDao;
import com.coord.jam.dto.GalleryDto;

@Controller
public class GalleryController {

  @Autowired
  private GalleryDao gallerydao;

  @RequestMapping("/gallery")
  public ModelAndView test4(@RequestParam(value = "page", defaultValue = "1") String page) {
    ModelAndView model = new ModelAndView();
    List<GalleryDto> list = gallerydao.getAlldatas();
    int totalcount;
    int limit;
    int currentpage;
    int totalpage;

    PageCount pc;
    String pageShow;

    totalcount = gallerydao.getCount();
    limit = 12;
    currentpage = 1;
    if (page != null) {
      currentpage = Integer.parseInt(page);
    }
    totalpage = (int) Math.ceil((double) totalcount / limit);
    int start = (currentpage - 1) * limit;

    list = gallerydao.getList(start, limit);
    System.out.println("list size:" + list.size());
    pc = new PageCount(5, limit, totalpage);
    pageShow = pc.ShowPaging(currentpage, "", "");

    model.addObject("list", list);
    model.addObject("pageShow", pageShow);
    model.setViewName("gallery");
    return model;
  }

  @RequestMapping(value = "/imgupload", method = RequestMethod.POST)
  public ModelAndView academyRead(@ModelAttribute GalleryDto dto,
      @RequestParam("gallery_filename") MultipartFile gallery_filename,
      HttpServletRequest request) {
    ModelAndView view = new ModelAndView();
    String path = request.getSession().getServletContext().getRealPath("/save");
    SpringFileWriter writer = new SpringFileWriter();
    writer.writeFile(gallery_filename, path, gallery_filename.getOriginalFilename());
    System.out.println(path);
    dto.setGallery_imgname(dto.getGallery_filename().getOriginalFilename());
    gallerydao.insertGallery(dto);
    view.setViewName("redirect:gallery");
    return view;
  }

  @RequestMapping("/gallerywrite")
  public String gallerywrite() {
    return "gallerywrite";
  }
}
