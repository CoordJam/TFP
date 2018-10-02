package com.coord.jam;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class CrawlingTest {
	public List<String> designerName(){
		List<String> list=new ArrayList<String>();
		try {
			String URL = "https://en.wikipedia.org/w/index.php?title=List_of_fashion_designers";
			int n=0;
			Document doc = Jsoup.connect(URL).get();
			Elements elsCountry=doc.select(".mw-headline");
			Elements elsName=doc.select("ul:not(.toc)");
			for(Element country:elsCountry) {
				System.out.println(country.text());
				Element name=elsName.get(n);
				System.out.println(name.text());
				/*list.add(country.text()+name.text());
				
				System.out.println(list);*/
				n++;
			}
			

		}catch(IOException e){
			e.printStackTrace();
		}

		return list;
	}
	public static void main(String[] args) {
		CrawlingTest crawl=new CrawlingTest();
		crawl.designerName();
	}
}