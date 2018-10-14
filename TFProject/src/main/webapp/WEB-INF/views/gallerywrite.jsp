<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

.filebox input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

/* named upload */
.filebox .upload-name {
	display: inline-block;
	padding: .5em .75em; /* label의 패딩값과 일치 */
	font-size: inherit;
	font-family: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #f5f5f5;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
	-webkit-appearance: none; /* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none;
}

</style>

<body id="body">
	<!-- Navbar (sit on top) -->
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
			<a href="/collection/" class="w3-bar-item w3-button" onclick="toggleFunction()">Collection</a>    
		</div>
	</div>
	<br><br><br><br>
	
	
	<div class="w3-center w3-display-middle">
	<h3 style="margin-top: 150px;">Gallery Write</h3>
	
	<div id="View_area" style="height:350px; width: 100%;"><img id="noimg" src="/img/no_image.png"></div><br><br>
		<form style="margin-bottom: 100px;" method="post" action="/imgupload" enctype="multipart/form-data">
			
			<input id="username" type="hidden" name="gallery_id">
			<textarea name="gallery_content" placeholder="      이미지 파일을 선택 후 관련된 내용을 입력하시오"  style="background-color:#f5f5f5; border:none; width: 400px; height: 50px; padding: 0; margin: 0;"></textarea><br><br>
			<div class="filebox"> 
				<input class="upload-name" value="파일선택" disabled="disabled"> 
				<label class="w3-button" style="width:80px; color: #fff; background-color: #a9a9a9; padding: 3px;" for="ex_filename">업로드</label> 
				<input type="file" id="ex_filename" name="gallery_filename" class="upload-hidden" onchange="previewImage(this,'View_area')">
				<button class="w3-button" style="width:80px; color: #fff; background-color: #a9a9a9; padding: 3px;" type="submit">작성</button> 
			</div>
			
		</form>
	</div>
	
	
	<script>
		
		// Change style of navbar on scroll
		window.onscroll = function() {
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
		  .click(function(event) {
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
<script>
$(document).ready(function(){ 
	var fileTarget = $('.filebox .upload-hidden'); 
	fileTarget.on('change', function(){ // 값이 변경되면 
		if(window.FileReader){ // modern browser 
			var filename = $(this)[0].files[0].name; 
		} else { // old IE 
			var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출 
		} // 추출한 파일명 삽입 
		$(this).siblings('.upload-name').val(filename); 
		}); 
	});
</script>

<script>
function previewImage(targetObj, View_area) {

	var preview = document.getElementById(View_area); //div id
	var ua = window.navigator.userAgent;

  //ie일때(IE8 이하에서만 작동)

	if (ua.indexOf("MSIE") > -1) {

		targetObj.select();

		try {
			var src = document.selection.createRange().text; // get file full path(IE9, IE10에서 사용 불가)
			var ie_preview_error = document.getElementById("ie_preview_error_" + View_area);

			if (ie_preview_error) {

				preview.removeChild(ie_preview_error); //error가 있으면 delete
			}
			
			var img = document.getElementById(View_area); //이미지가 뿌려질 곳
			//이미지 로딩, sizingMethod는 div에 맞춰서 사이즈를 자동조절 하는 역할
			img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+src+"', sizingMethod='scale')";

		} catch (e) {

			if (!document.getElementById("ie_preview_error_" + View_area)) {
				var info = document.createElement("<p>");

				info.id = "ie_preview_error_" + View_area;
				info.innerHTML = e.name;
				preview.insertBefore(info, null);
			}
		}
  //ie가 아닐때(크롬, 사파리, FF)
	} else {
		var files = targetObj.files;
		var noImg = document.getElementById("noimg");
		for ( var i = 0; i < files.length; i++) {
			var file = files[i];
			var imageType = /image.*/; //이미지 파일일경우만.. 뿌려준다.

			if (!file.type.match(imageType))
				continue;

			var prevImg = document.getElementById("prev_" + View_area); //이전에 미리보기가 있다면 삭제
			
			if (prevImg) {
				preview.removeChild(prevImg);
			}
			if(noImg){
				preview.removeChild(noImg);
			}
			var img = document.createElement("img"); 
			img.id = "prev_" + View_area;
			img.classList.add("obj");
			img.file = file;
			img.style.height = '100%';
			preview.appendChild(img);
			if (window.FileReader) { // FireFox, Chrome, Opera 확인.
				var reader = new FileReader();

				reader.onloadend = (function(aImg) {
					return function(e) {
						aImg.src = e.target.result;
					};

				})(img);
				reader.readAsDataURL(file);
			} else { // safari is not supported FileReader
				//alert('not supported FileReader');
				if (!document.getElementById("sfr_preview_error_"
						+ View_area)) {
					var info = document.createElement("p");
					info.id = "sfr_preview_error_" + View_area;
					info.innerHTML = "not supported FileReader";
					preview.insertBefore(info, null);
				}
			}
		}
	}
}
</script>

</body>
</html>
