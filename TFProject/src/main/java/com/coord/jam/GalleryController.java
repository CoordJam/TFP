package com.coord.jam;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GalleryController {
	
	@Autowired
	private GalleryDao gallerydao;

	@RequestMapping("/test4")
	public ModelAndView test4() {
		ModelAndView model = new ModelAndView();
		model.setViewName("basicTest4");
		return model;
	}
	
	@RequestMapping(value="/imgupload",method=RequestMethod.POST)
	public ModelAndView academyRead(@ModelAttribute GalleryDto dto,@RequestParam("gallery_filename")
	MultipartFile gallery_filename, HttpServletRequest request) {
		ModelAndView view=new ModelAndView();
		String path=request.getSession().getServletContext().getRealPath("/save");
		System.out.println(path);
		SpringFileWriter writer=new SpringFileWriter();
		writer.writeFile(gallery_filename, path, gallery_filename.getOriginalFilename());
		dto.setGallery_imgname(dto.getGallery_filename().getOriginalFilename());
		gallerydao.insertGallery(dto);
		view.setViewName("redirect:test4");
		return view;
	}
	
	@RequestMapping("/gallerywrite")
	public String gallerywrite() {
		return "gallerywrite";
	}

}
