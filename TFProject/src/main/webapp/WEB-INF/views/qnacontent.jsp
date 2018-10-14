<!DOCTYPE html>
<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="http://developers.kakao.com/sdk/js/kakao.min.js"></script>

<head>
 <style>

 body, html {
 font-family: Verdana,sans-serif;
 font-size: 15px;
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

.TB{
width: 60%;
margin-top: 1%;
}
.uu{background-color: #e0e0d1; color:white; font-size:1.1vw;
}
.table{
width: 60%;
}
.head{
border-bottom: 1px solid black;}
</style>


<meta charset="UTF-8">
<title></title>
</head>
 
 <body id="body">
<!-- 네비 -->
		<div class="w3-top">
		<div class="w3-bar" id="myNavbar">
			<a style="text-decoration:none;" class="w3-bar-item w3-button w3-hover-gray w3-left" href="javascript:void(0);"
			onclick="toggleFunction()" title="Toggle Navigation Menu"> <i class="fa fa-bars"></i></a> 
			
			<a style="text-decoration:none;" href="/" class="w3-bar-item w3-hover-gray w3-button">HOME</a>
			
			<i id="usound" style="font-size: 20px; height: 43px;" class="w3-bar-item fa fa-volume-off
				w3-right w3-hover-gray w3-button" onclick="sounds()"></i>
				
			<div id="kakao_btn_changed"></div>
			
			<div style="text-decoration:none;" id="test1" class="w3-right w3-bar-item w3-hover-gray "></div> 
		</div>

			<!-- 메뉴바 -->
		<div id="navDemo" class="w3-bar-block w3-white w3-hide">
			<a href="/" class="w3-bar-item w3-button" onclick="toggleFunction()">Home</a> 
			<a href="/calendar/" class="w3-bar-item w3-button" onclick="toggleFunction()">Calendar</a> 
			<a href="/qnalist/" class="w3-bar-item w3-button" onclick="toggleFunction()">QnA</a>
			<a href="/gallery/" class="w3-bar-item w3-button" onclick="toggleFunction()">Gallery</a>
			<a href="/collection/" class="w3-bar-item w3-button" onclick="toggleFunction()">Collection</a>    
		</div>
	</div>

 <img class="w3-card" style="width: 100%;" name="c1" src="/img/main_menu_img/hor_img1.jpg"/><br><br><br>
 

 <div align="center">
  <table class="table" style="border: none;">
   <thead class="head">
    <tr>
     <th>${dto.qnaBoard_title}</th>
     <th align="right" width="150px">${dto.qnaBoard_date}</th>
    </tr>
   </thead>
   <tbody class="cell">
    <tr>
     <th colspan="2">${dto.qnaBoard_id}</th>
    </tr>
   
   
    <tr>
     <td style="padding-top: 50px" colspan="2">${dto.qnaBoard_content}</td>
    </tr>
</tbody>
</table>
</div> 
<br>
 	<div align="center">
  <input class="btn btn-primary btn-warning" type="button" value="삭제하기" onclick="location.href='/qnadelete?seq=${dto.qnaBoard_seq}'">
    <input class="btn btn-primary btn-warning" type="button" value="목록으로" onclick="location.href='/qnalist'">
    
  </div>
  <br><br>

  <div align="center">  
   <form id="writeCommentForm" action="/qnareplyinsert" method="post">
   		<input id="username" type="hidden" name="comment_id">
  		<input type="hidden" name="comment_parent" value="${dto.qnaBoard_seq}"> 
			<tr bgcolor="#F5F5F5">
	                <!-- 본문 작성-->
	                <td width="550">
	                    <div>
	                        <textarea name="comment_content" rows="4" cols="70" ></textarea>
	                    </div>
	                </td>
	                <!-- 댓글 등록 버튼 -->
	                <td width="100">
	                    <div id="btn" style="text-align:center;">
	                        <input class="btn btn-primary btn-warning" type="submit" value="댓글등록">    
	                    </div>
	                </td>
	                 </tr>
	            </form>
           
	</div>
	<br><br>
	<div class="container"> 

			
	<div style="text-align: left;">
	<b style="cursor:pointer;" id="acount">댓글 ${acount}</b><br>
	
					<answer>
						<c:forEach var="a" items="${alist}">
							<b style="padding-left:20px; font-size:10pt;">${a.comment_id}</b>: ${a.comment_content}&nbsp;&nbsp;
							<span style="font-size:9pt; color:#ccc;">
								<fmt:formatDate value="${a.comment_date}" pattern="yyyy-MM-dd HH:mm"/>
							</span>
							<button style="font-size:8pt; border:none; color: gray; background-color: white;" onclick="location.href='/replydel?seq=${a.comment_seq}&num=${dto.qnaBoard_seq}'">삭제</button><br>
						</c:forEach>
					</answer>
					</div></div>

 
 <div id="kakao_btn_changed">
<a href="javascript:loginWithKakao()">
<img src="" /></a>
</div>
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
					+ " w3-black";
			} else {
				navbar.className = navbar.className.replace(
					" w3-card w3-animate-top w3-black", "");
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
                "<div style='color:white;' id='kakao_btn_changed' class='w3-bar-item w3-button w3-hover-gray w3-right'>Login <span style='font-size: 8pt;'>(for kakao)</span></div> "+
                "<a/>";
 document.getElementById('kakao_btn_changed').innerHTML  = login_btn;
}
 
// 로그아웃 버튼생성
function createLogoutKakao(){
 var logout_btn = "<a href='javascript:logoutWithKakao()'>"+
 				"<div style='color:white;' class='w3-bar-item w3-button w3-hover-gray w3-hide-small w3-right'>Logout</div> "+
                "</a>";
 document.getElementById('kakao_btn_changed').innerHTML  = logout_btn;
 
}
 
// document.getElementById("test1").textContent=userNick;
 $(function(){
	 var s=document.getElementById("test1");
	 var usname=$("#username");
	 if(localStorage.key1!=null){
 		s.innerText=localStorage.key1;
 		usname.val(localStorage.key1);
	 }else{
		 s.innerText="";
		 usname.val("익명");
	 }
	 //alert(usname.attr('value'));
 });
</script>

</body>

</html> 
