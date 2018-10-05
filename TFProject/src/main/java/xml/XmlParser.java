package xml;

import java.io.File;
import java.util.List;
import java.util.Vector;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.stereotype.Component;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

@Component
public class XmlParser
{
	public List<String>getXmlData(String xmlFilePath) throws Exception {
		List<String> list = new Vector<>();
		// 문서를 읽기위한 공장을 만들어야 한다.
		DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
		// 빌더 생성
		DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
		// 파일 가꼬오기

		ClassLoader classLoader = getClass().getClassLoader();
		
		File xmlFile = new File(xmlFilePath);
		
		// 생성된 빌더를 통해서 xml문서를 Document객체로 파싱해서 가져온다
		Document doc = dBuilder.parse(xmlFile);
		// 문서 구조 안정화
		doc.getDocumentElement().normalize();
		NodeList nList = doc.getElementsByTagName("src");
		
		for (int temp = 0; temp < nList.getLength(); temp++) {
			Node nNode = nList.item(temp);
			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element element = (Element) nNode;
				list.add(element.getTextContent());
//				System.out.println(eElement.getTextContent()+"이거는 총 개수::"+temp);
			}
		}
		
		if(list.size()>150) {
			int count =0;
			int loop = list.size()-150;
			for (int i=0; i<loop; i++) {
				list.remove(list.size()-1);
				count++;
			}
		}
	
		return list;
	} 
	
	public String getYoutubeId(String xmlPath) {
		String youtubeId = "";
		try {
			DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
			File xmlFile = new File(xmlPath);
			Document doc;
			doc = dBuilder.parse(xmlFile);
			doc.getDocumentElement().normalize();
			NodeList nList = doc.getElementsByTagName("youtube");
			youtubeId = nList.item(0).getTextContent();
		} catch (Exception e) {
		}
		
		return youtubeId;
	}
}
