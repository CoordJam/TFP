package com.coord.jam;

import java.util.List;
import java.util.Vector;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import xml.XmlParser;

@Controller
public class CollectionController
{
	@Autowired
	XmlParser xmlParser;
	
	@RequestMapping("/goCollectionTestPage/")
	public ModelAndView goCollectionTestPage() {
		ModelAndView model = new ModelAndView();
		List<String> list = new Vector<>();
		try {
			list = xmlParser.getXmlData("C:\\CALVIN KLEINSS 2018 .xml");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addObject("list",list);
		model.setViewName("collectionTestPage");
		
		return model;
	}
}
