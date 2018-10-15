<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<title></title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="http://developers.kakao.com/sdk/js/kakao.min.js"></script>



<script type="text/javascript">
 img1=new Image()
img1.src="/img/calendar/s1.png"
 img2=new Image()
img2.src="/img/calendar/s2.png"
 img3=new Image()
img3.src="/img/calendar/s3.png"
 img4=new Image()
img4.src="/img/calendar/s4.png"
 img5=new Image()
img5.src="/img/calendar/s5.png"
 img6=new Image()
img6.src="/img/calendar/s6.png"
 img7=new Image()
img7.src="/img/calendar/s7.png"
 img8=new Image()
img8.src="/img/calendar/s8.png"
 img9=new Image()
img9.src="/img/calendar/s9.png"
 img10=new Image()
img10.src="/img/calendar/s10.png"
 img11=new Image()
img11.src="/img/calendar/s11.png"
 img12=new Image()
img12.src="/img/calendar/s12.png"

num=10;
function slideshow1(){
 num=num-1;
 
 if(num==0)
  num=12;
 document.mypic.src=eval("img"+num+".src")
}
function slideshow2(){
 num=num+1;
 
 if(num==13)
  num=1;
 document.mypic.src=eval("img"+num+".src")
}
</script>

<style>

body, html {
 height: 100%;
 color: #444;
 line-height: 1.8;
}

 


.w3-wide {
 letter-spacing: 10px;
}

.w3-hover-opacity {
 cursor: pointer;
}

 .w3-wide {
  letter-spacing: 10px;
 }

 .w3-hover-opacity {
  cursor: pointer;
 }


 #myNavbar {
  opacity: 0.6;
  color: #FFF;
 }

 #navDemo {
  opacity: 0.7;
  color: #FFF;
 }

 ::-webkit-scrollbar {
  width: 1px;
 }

 ::-webkit-scrollbar-track {
  display: none;
 }

 ::-webkit-scrollbar-thumb {
  border-radius: 10px;
  -webkit-box-shadow: inset 0 0 4px rgba(0, 0, 0, 0.8);
 }


.divDotText {
overflow:hidden;
text-overflow:ellipsis;
}

</style>


<body id="body">
 <!-- Navbar (sit on top) -->
  <div class="w3-top">
  <div class="w3-bar" id="myNavbar">
   <a class="w3-bar-item w3-button w3-hover-gray w3-left" href="javascript:void(0);"
   onclick="toggleFunction()" title="Toggle Navigation Menu"> <i class="fa fa-bars"></i></a> 
   
   <a href="/" class="w3-bar-item w3-hover-gray w3-button">HOME</a>
   
   <a href="#top" class="w3-bar-item w3-button w3-hover-gray w3-hide-small"> 
    <i style="font-size: 20px;" class="fa fa-arrow-circle-up"></i> TOP</a> 
    
   <a href="#cal" class="w3-bar-item w3-button w3-hover-gray w3-hide-small">
    <i class="fa fa-th"></i> CALENDAR</a> 
    
   <a href="#bt" class="w3-bar-item w3-button w3-hover-gray w3-hide-small">
    <i style="font-size: 20px;" class="fa fa-arrow-circle-down"></i> BOTTOM</a>
   
   <i id="usound" style="font-size: 20px; height: 43px;" class="w3-bar-item fa fa-volume-off 
    w3-right w3-hover-gray w3-button" onclick="sounds()"></i>
    
   <div id="kakao_btn_changed"></div>
   
   <div id="test1" class="w3-right w3-bar-item w3-hover-gray "></div> 
  </div>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-white w3-hide">
			<a href="/" class="w3-bar-item w3-button" onclick="toggleFunction()">Home</a> 
			<a href="/calendar/" class="w3-bar-item w3-button" onclick="toggleFunction()">Calendar</a> 
			<a href="/qnalist/" class="w3-bar-item w3-button" onclick="toggleFunction()">QnA</a>
			<a href="/gallery/" class="w3-bar-item w3-button" onclick="toggleFunction()">Gallery</a>
			<a href="/goCollectionTestPage/" class="w3-bar-item w3-button" onclick="toggleFunction()">Collection</a>    
		</div>
 </div>
<img name="top" class="w3-card" style="width: 100%;" name="c1" src="/img/main_menu_img/hor_imgg1.jpg"/><br><br><br>

 


 <script>

  // Change style of navbar on scroll
  window.onscroll = function () {
   myFunction()
  };
  function myFunction() {
   var navbar = document.getElementById("myNavbar");
   if (document.body.scrollTop > 300
    || document.documentElement.scrollTop > 300) {
    navbar.className = "w3-bar" + " w3-card" + " w3-animate-top"
     + " w3-white";
   } else {
    navbar.className = navbar.className.replace(
     " w3-card w3-animate-top w3-white", "");
   }
  }


<DIV id="content" style="width:712px;">

  // Used to toggle the menu on small screens when clicking on the menu button
  function toggleFunction() {
   var x = document.getElementById("navDemo");
   if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
   } else {
    x.className = x.className.replace(" w3-show", "");
   }
  }
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/smoothscroll/1.4.1/SmoothScroll.min.js"></script>

 


<form name="cal" align="center">
<a href="#" onclick="slideshow1()"><button class="w3-button w3-white w3-border" style="width:100px; border: none;">prev</button></a>&nbsp;
<a href="#" onclick="slideshow2()"><button class="w3-button w3-white w3-border" style="width:100px; border: none;">next</button></a><br><br>
</form> 
<div align="center">
<img src="/img/calendar/s10.png" name="mypic">
</div>

  <div id="kakao_btn_changed">
<a href="javascript:loginWithKakao()">
<img src="" /></a>
</div>

 <br><br><br><br><br>

<!-- Footer -->
 <footer name="bt"
  class="w3-center w3-black w3-padding-48 w3-opacity-min w3-hover-opacity-off">
  <a href="#top" class="w3-button w3-light-gray"><i
   class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
  <p>
   <br> 제휴 사이트&nbsp;&nbsp;&nbsp;<a
    href="https://www.vogue.com/fashion-shows" title="VOGUE"
    target="_blank" class="w3-hover-text-gray w3-medium">VOGUE</a>
   &nbsp;&nbsp;&nbsp; <a href="https://fashionweekonline.com/"
    title="FashionWeek" target="_blank"
    class="w3-hover-text-gray w3-medium">Fashion-Week</a>
   &nbsp;&nbsp;&nbsp; <a href="http://seoul365fashion.kr/" title="SEOUL"
    target="_blank" class="w3-hover-text-gray w3-medium">SEOUL 365
    패션쇼</a>
  </p>

 </footer>

 <script>
  // Change style of navbar on scroll
  window.onscroll = function () {
   myFunction()
  };
  function myFunction() {
   var navbar = document.getElementById("myNavbar");
   if (document.body.scrollTop > 100
    || document.documentElement.scrollTop > 100) {
    navbar.className = "w3-bar" + " w3-card" + " w3-animate-top"
     + " w3-white";
   } else {
    navbar.className = navbar.className.replace(
     " w3-card w3-animate-top w3-white", "");
   }
  }

  // Used to toggle the menu on small screens when clicking on the menu button
  function toggleFunction() {
   var x = document.getElementById("navDemo");
   if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
   } else {
    x.className = x.className.replace(" w3-show", "");
   }
  }
 </script>

 <script src="https://cdnjs.cloudflare.com/ajax/libs/smoothscroll/1.4.1/SmoothScroll.min.js"></script>

 <script>
		bl = true;
		var yousound = document.getElementById("usound");
		var audio = new Audio('/audio/backgroundMusic.mp3');
		audioIsPlaying = false;
		
		yousound.onclick = function() {

			if (bl) {
				yousound.className = "w3-bar-item fa fa-volume-up w3-right w3-hover-black w3-button";
				bl = !bl;
				audio.play();
				audioIsPlaying = true;
				
			} else {
				yousound.className = "w3-bar-item fa fa-volume-off w3-right w3-hover-black w3-button";
				bl = !bl;
				audio.pause();
				audioIsPlaying = false;
			}
		}
	</script>

 <script>
  // Select all links with hashes
  $('a[href*="#"]')
   // Remove links that don't actually link to anything
   .not('[href="#"]')
   .not('[href="#0"]')
   .click(function (event) {
    // On-page links
    if (
     location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '')
     &&
     location.hostname == this.hostname
    ) {
     // Figure out element to scroll to
     var target = $(this.hash);
     target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
     // Does a scroll target exist?
     if (target.length) {
      // Only prevent default if animation is actually gonna happen
      event.preventDefault();
      $('html, body').animate({
       scrollTop: target.offset().top
      }, 1000);
     }
    }
   });
 </script>
 
 <script>
var namelee=localStorage.getItem("key1");
console.log(localStorage.getItem("key1"));
console.log(namelee);
//document.getElementById("test1").innerHTML=namelee;
// 로그인 및 로그아웃 버튼 생성 처리
var cookiedata = document.cookie;
if(cookiedata.indexOf('kakao_login=done') < 0){
    createLoginKakao();
}else{
    createLogoutKakao();
}
 
/* 로그인 관련 쿠키 생성 및 삭제 */
function setCookie( name , value , expired ){
 
 var date = new Date();
 date.setHours(date.getHours() + expired);
 var expried_set = "expries="+date.toGMTString();
 document.cookie = name + "=" + value + "; path=/;" + expried_set + ";"
 
}
 
function getCookie(name){
    var nameofCookie = name + "=";
    var x = 0;
    while(x <= document.cookie.length){
        var y = ( x + nameofCookie.length);
        if(document.cookie.substring(x,y) == nameofCookie){
            if((endofCookie = document.cookie.indexOf(";",y)) == -1)
                endofCookie = document.cookie.length;
            return unescape(document.cookie.substring(y,endofCookie));
        }
        x = document.cookie.indexOf(" ",x) + 1;
        if( x == 0 )
            break;
        }
        
        return "";
}
 
// 카카오 script key 입력
Kakao.init('f97d93c0c9455c750f465c1049841311');
 
 // 로그인 처리
function loginWithKakao(){
    
    Kakao.Auth.cleanup();
    Kakao.Auth.loginForm({
        persistAccessToken: true,
        persistRefreshToken: true,
        success: function(authObj) {
         Kakao.API.request({
          url:'/v1/user/me',
          success: function(res){
              setCookie("kakao_login","done",1); // 쿠키생성 (로그인)
              console.log(JSON.stringify(res));
              createLogoutKakao();
              //window.location.href="../login.com";
              localStorage.setItem("key1", res.properties.nickname); 
              //localStorage.key1=res.properties.nickname;
              console.log(res.properties.nickname);
              console.log(localStorage.getItem("key1"));
              window.location.reload();
   
        },
        fail: function(error){
         alert(JSON.stringify(error));
        }
        });
        },
            fail: function(err) {
             alert(JSON.stringify(err));
        }
                 
    });
}
 
// 로그아웃 처리
function logoutWithKakao(){
    Kakao.Auth.logout();
    alert('카카오 로그아웃 완료!');
    setCookie("kakao_login","",-1);  // 쿠키삭제 (로그아웃)
    createLoginKakao();
    //window.location.href="../login.com";
    localStorage.removeItem("key1");
    window.location.reload();
}
 
// 로그인 버튼생성
function createLoginKakao(){
 var login_btn = "<a href='javascript:loginWithKakao()'>"+
                "<div id='kakao_btn_changed' class='w3-bar-item w3-button w3-hover-gray w3-right'>Login <span style='font-size: 8pt;'>(for kakao)</span></div> "+
                "<a/>";
 document.getElementById('kakao_btn_changed').innerHTML  = login_btn;
}
 
// 로그아웃 버튼생성
function createLogoutKakao(){
 var logout_btn = "<a href='javascript:logoutWithKakao()'>"+
     "<div class='w3-bar-item w3-button w3-hover-gray w3-hide-small w3-right'>Logout</div> "+
                "</a>";
 document.getElementById('kakao_btn_changed').innerHTML  = logout_btn;
 
}
 
// document.getElementById("test1").textContent=userNick;
 $(function(){
  var s=document.getElementById("test1");
  if(localStorage.key1!=null){
   s.innerText=localStorage.key1;
  }else{
   s.innerText="";
  }
 });
</script>

</body>

</html> 
