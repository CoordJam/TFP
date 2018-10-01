package com.coord.jam;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class CrawlingTest {

	public List<String> designerName(){
		List<String> list=new ArrayList<String>();
		//int CountryCount;
		try {
			for(int i=1;i<114;i++) {
			String URL = "https://en.wikipedia.org/w/index.php?title=List_of_fashion_designers&action=edit&section="+i;
			Document doc = Jsoup.connect(URL).get();
			Elements el=doc.select("#wpTextbox1");
			list.add(el.text());
			//System.out.println(list);
			}
			/*int n=1;
			Elements Country=doc.select("h2");
			for(Element el:Country.select(".mw-headline")) {
			//System.out.println(el.text());
			list.add(el.text());
			list.add(Integer.toString(n));
			n++;
			}
			list.remove(list.size()-1);
			System.out.println(list);
			CountryCount=list.size();*/
			
			/*Elements Country2=doc.select("#mw-content-text > div > div:nth-child(5)");
			for(Element el:Country2.select(" ul > li")){
				System.out.println(el.text());
			}*/
			
		}catch(IOException e){
			e.printStackTrace();
		}

		return list;
	}
	/*public static void main(String[] args) {
		CrawlingTest crawl=new CrawlingTest();
		crawl.designerName();
	}*/
}