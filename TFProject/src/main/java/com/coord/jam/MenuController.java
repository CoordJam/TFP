package com.coord.jam;

import java.util.List;
<<<<<<< HEAD
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

=======
>>>>>>> branch 'master' of https://github.com/CoordJam/TFP.git
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

<<<<<<< HEAD


=======
>>>>>>> branch 'master' of https://github.com/CoordJam/TFP.git
@Controller
public class MenuController {
<<<<<<< HEAD
	@Autowired
	private QnaDao Test3Dao;
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/test1")
	public String test1() {
		return "basicTest";
	}
	@RequestMapping("/test1/basicTest")
	public String test11() {
		return "basicTest";
	}
	@RequestMapping("/test2")
	public String test2() {
		return "basicTest2";
	}
	
	/*@RequestMapping("/test3")
	public String test3() {
		return "basicTest3";
	}*/
	@RequestMapping("/test3")
	public ModelAndView test3() {
		ModelAndView model=new ModelAndView();
		List<QnaDto> list=Test3Dao.getAlldatas();
		model.addObject("list",list);
		model.setViewName("basicTest3");
		return model;
	
	}
	
	@RequestMapping("/test4")
	public ModelAndView test4() {
		ModelAndView model = new ModelAndView();
		model.setViewName("basicTest4");
		return model;
	}
	
	@RequestMapping(value = "/mailSender") 
	public void mailSender(HttpServletRequest request, ModelMap mo,
			@RequestParam String email,@RequestParam String password,@RequestParam String message) throws AddressException, MessagingException { 
		// 네이버일 경우 smtp.naver.com 을 입력합니다. 
		// Google일 경우 smtp.gmail.com 을 입력합니다. 
		
		String host = "smtp.naver.com"; 

		int port=465; //포트번호 
		// 메일 내용 
		String recipient = "lngsw2@nate.com"; //받는 사람의 메일주소를 입력해주세요. 
		String subject = email+"님의 문의메일"; //메일 제목 입력해주세요. 
		String body = message; //메일 내용 입력해주세요. 
		Properties props = System.getProperties(); // 정보를 담기 위한 객체 생성 
		// SMTP 서버 정보 설정 
		props.put("mail.smtp.host", host); 
		props.put("mail.smtp.port", port); 
		props.put("mail.smtp.auth", "true"); 
		props.put("mail.smtp.ssl.enable", "true"); 
		props.put("mail.smtp.ssl.trust", host); 
		//Session 생성 
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() { 
			String un=email; 
			String pw=password; 
			protected javax.mail.PasswordAuthentication getPasswordAuthentication() { 
				return new javax.mail.PasswordAuthentication(un, pw); 
				} 
			}); 
		session.setDebug(true); //for debug 
		Message mimeMessage = new MimeMessage(session); //MimeMessage 생성 
		mimeMessage.setFrom(new InternetAddress(email+"@naver.com")); //발신자 셋팅 , 보내는 사람의 이메일주소를 한번 더 입력합니다. 이때는 이메일 풀 주소를 다 작성해주세요. 
		mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient)); //수신자셋팅 //.TO 외에 .CC(참조) .BCC(숨은참조) 도 있음 
		mimeMessage.setSubject(subject); //제목셋팅 
		mimeMessage.setText(body); //내용셋팅 
		Transport.send(mimeMessage); //javax.mail.Transport.send() 이용 
		}
	}

		
	

=======
  @Autowired
  private QnaDao Test3Dao;

  @RequestMapping("/")
  public String home() {
    return "home";
  }

  @RequestMapping("/test1")
  public String test1() {
    return "basicTest";
  }

  @RequestMapping("/test2")
  public String test2() {
    return "basicTest2";
  }

  @RequestMapping("/test3")
  public ModelAndView test3() {
    ModelAndView model = new ModelAndView();
    List<QnaDto> list = Test3Dao.getAlldatas();
    model.addObject("list", list);
    model.setViewName("basicTest3");
    return model;
  }

  @RequestMapping("/test4")
  public ModelAndView test4() {
    ModelAndView model = new ModelAndView();
    model.setViewName("basicTest4");
    return model;
  }
}
>>>>>>> branch 'master' of https://github.com/CoordJam/TFP.git
