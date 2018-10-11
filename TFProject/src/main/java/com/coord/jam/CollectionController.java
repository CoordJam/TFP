package com.coord.jam;

import java.util.List;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import xml.XmlParser;

@Controller
public class CollectionController {
  @Autowired
  XmlParser xmlParser;

  @RequestMapping("/goCollectionTestPage/")
  public ModelAndView goCollectionTestPage(
      @RequestParam(value = "year", defaultValue = "2012") String year,
      @RequestParam(value = "brandName", defaultValue = "Givenchy") String brandName,
      @RequestParam(value = "season", defaultValue = "SS") String season,
      HttpServletRequest request) {
    String baseDirectoryPath = request.getServletContext().getRealPath("") + "xml/Collection/";
    String xmlPath = baseDirectoryPath + brandName + "/" + year + " " + season + ".xml";
    System.out.println(xmlPath);
    ModelAndView model = new ModelAndView();
    List<String> list = new Vector<>();
    try {
      list = xmlParser.getXmlData(xmlPath);
    } catch (Exception e) {
      e.printStackTrace();
    }
    model.addObject("brandName", brandName);
    model.addObject("season", season);
    model.addObject("year", year);
    model.addObject("list", list);
    model.addObject("baseDirectoryPath", baseDirectoryPath);
    model.addObject("youtubeId", xmlParser.getYoutubeId(xmlPath));
    model.setViewName("collectionTestPage");
    return model;
  }
}
