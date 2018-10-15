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
<style>
	body,
	html {
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
		color: #000;
	}

	#navDemo {
		opacity: 0.7;
		color: #000;
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
</style>

<body id="body">
	<!-- 네비 -->
		<div class="w3-top">
		<div class="w3-bar" id="myNavbar">
			<a class="w3-bar-item w3-button w3-hover-gray w3-left" href="javascript:void(0);"
			onclick="toggleFunction()" title="Toggle Navigation Menu"> <i class="fa fa-bars"></i></a> 
			
			<a href="/" class="w3-bar-item w3-hover-gray w3-button">HOME</a>

			
			<i id="usound" style="font-size: 20px; height: 43px;" class="w3-bar-item fa fa-volume-off 
				w3-right w3-hover-gray w3-button" onclick="sounds()"></i>
				
			<div id="kakao_btn_changed"></div>
			
			<div id="test1" class="w3-right w3-bar-item w3-hover-gray "></div> 
		</div>

			<!-- 메뉴바 -->
		<div id="navDemo" class="w3-bar-block w3-white w3-hide">
			<a href="/" class="w3-bar-item w3-button" onclick="toggleFunction()">Home</a> 
			<a href="/calendar/" class="w3-bar-item w3-button" onclick="toggleFunction()">Calendar</a> 
			<a href="/qnalist/" class="w3-bar-item w3-button" onclick="toggleFunction()">QnA</a>
			<a href="/gallery/" class="w3-bar-item w3-button" onclick="toggleFunction()">Gallery</a>
			<a href="/goCollectionTestPage/" class="w3-bar-item w3-button" onclick="toggleFunction()">Collection</a>    
		</div>
	</div>

	
	<div style="display: flex; width: 100%;">
		<div style="flex: 1; margin: auto;">
			<div OnClick="location.href='/gallery?page=1&'" style="margin-left: 60%; font-size: 60px; opacity: 0.5;" class="w3-button w3-left w3-hover-text-gray">&#10094;</div>
		</div>
		<!-- Container (Portfolio Section) -->
		<div style="flex: 4;" class="w3-content w3-container w3-padding-48" id="portfolio">
			<h3 style="margin:0; " class="w3-center">Gallery</h3>
			<p class="w3-center">
				<em>
					Month Top 3
				</em>
			</p>
			<div class="w3-row-padding w3-center">
				<div style="overflow: hidden; height:300px;" class="w3-col m3">
					<img src="/save/top1.jpg" style="width: 100%" onclick="onClick(this)" class="w3-hover-opacity"
					 alt="1">
				</div>

				<div style="overflow: hidden; height:300px;" class="w3-col m3">
					<img src="/save/top2.jpg" style="width: 100%" onclick="onClick(this)" class="w3-hover-opacity"
					 alt="2">
				</div>

				<div style="overflow: hidden; height:300px;" class="w3-col m3">
					<img src="/save/top3.jpg" style="width: 100%" onclick="onClick(this)" class="w3-hover-opacity"
					 alt="3">
				</div>
				<p>   Month Top 3 Month Top 3 Month Top 3 Month Top 3 Month Top 3
					Month Top 3 Month Top 3 Month Top 3 Month Top 3 Month Top 3
					Month Top 3 Month Top 3 Month Top 3 Month Top 3 Month Top 3
					Month Top 3 Month Top 3 Month Top 3 Month Top 3 Month Top 3</p>
			</div> <br>
			
			
			<div class="w3-row-padding w3-center">
			<c:forEach var="a" items="${list}">
				<div style="overflow: hidden; height:200px;" class="w3-col m2">
					<img src="/save/${a.gallery_imgname}" style="margin-top:20px;  width: 100%" onclick="onClick(this)" class="w3-hover-opacity"
					 alt="${a.gallery_date}, ${a.gallery_id} : ${a.gallery_content}">
				</div>
			</c:forEach>
			</div><br>
			<div align="center" style="height: 40;">
			  ${pageShow}
			 </div>
			
			
		</div>
		<div style="flex: 1; margin: auto;">
			<div OnClick="location.href='/gallery?page=2&'" style="margin-right: 60%; font-size: 60px; opacity: 0.5;" class="w3-button w3-right w3-hover-text-gray">&#10095;</div>
			<button onclick="location.href='/gallerywrite/'" class="w3-button w3-bottom" style="width:60px; padding:2px; margin-bottom:2px; color: #fff; background-color: #a9a9a9;" type="button">글쓰기</button>
		</div>
	</div>
	<!-- Modal for full size images on click-->
	<div id="modal01" class="w3-modal w3-black" onclick="this.style.display='none'">
		<span class="w3-button w3-large w3-black w3-display-topright" title="Close Modal Image"><i class="fa fa-remove"></i></span>
		<div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
			<img id="img01" class="w3-image">
			<p id="caption" class="w3-opacity w3-large"></p>
		</div>
	</div>
	<script>
		//Modal Image Gallery
		function onClick(element) {
			document.getElementById("img01").src = element.src;
			document.getElementById("modal01").style.display = "block";
			var captionText = document.getElementById("caption");
			captionText.innerHTML = element.alt;
		}

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
	
	<div id="kakao_btn_changed">
<a href="javascript:loginWithKakao()">
<img src="" /></a>
</div>
	
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