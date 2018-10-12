<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

/* Create a Parallax Effect */
.bgimg-1, .bgimg-2, .bgimg-3 {
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

/* First image (Logo. Full height) */
.bgimg-1 {
	background-image:
		url("/img/main_menu_img/main_img1.gif");
	min-height: 100%;
	opacity: 0.9;
}

/* Second image (Portfolio) */
.bgimg-2 {
	background-image:
		url("/img/main_menu_img/main_img2.gif");
	min-height: 400px;
	opacity: 0.78;
}

/* Third image (Contact) */
.bgimg-3 {
	background-image:
		url("/img/main_menu_img/main_img3.gif");
	min-height: 400px;
	opacity: 0.78;
}

.w3-wide {
	letter-spacing: 10px;
}

.w3-hover-opacity {
	cursor: pointer;
}

/* Turn off parallax scrolling for tablets and phones */
@media only screen and (max-device-width: 1600px) {
	.bgimg-1, .bgimg-2, .bgimg-3 {
		background-attachment: scroll;
		min-height: 400px;
	}
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
</style>

<body id="body">
	<!-- Navbar (sit on top) -->
		<div class="w3-top">
		<div class="w3-bar" id="myNavbar">
			<a class="w3-bar-item w3-button w3-hover-gray w3-left" href="javascript:void(0);"
			onclick="toggleFunction()" title="Toggle Navigation Menu"> <i class="fa fa-bars"></i></a> 
			
			<a href="#home" class="w3-bar-item w3-hover-gray w3-button">HOME</a>
			
			<a href="#about" class="w3-bar-item w3-button w3-hover-gray w3-hide-small"> 
				<i class="fa fa-user"></i> ABOUT</a> 
				
			<a href="#portfolio" class="w3-bar-item w3-button w3-hover-gray w3-hide-small">
				<i class="fa fa-th"></i> RUNWAY</a> 
				
			<a href="#contact" class="w3-bar-item w3-button w3-hover-gray w3-hide-small">
				<i class="fa fa-envelope"></i> CONTACT</a>
			
			<i id="usound" style="font-size: 20px; height: 43px;" class="w3-bar-item fa fa-volume-up 
				w3-right w3-hover-gray w3-button" onclick="sounds()"></i>
				
			<div id="kakao_btn_changed"></div>
			
			<div id="test1" class="w3-right w3-bar-item w3-hover-gray "></div> 
		</div>

		<!-- Navbar on small screens -->
		<div id="navDemo" class="w3-bar-block w3-white w3-hide">
			<a href="/" class="w3-bar-item w3-button" onclick="toggleFunction()">Home</a> 
			<a href="/test1/" class="w3-bar-item w3-button" onclick="toggleFunction()">test1</a> 
			<a href="/test2/" class="w3-bar-item w3-button" onclick="toggleFunction()">test2</a>
			<a href="/qnaList/" class="w3-bar-item w3-button" onclick="toggleFunction()">test3</a>
			<a href="/test4/" class="w3-bar-item w3-button" onclick="toggleFunction()">test4</a>
			<a href="/goCollectionTestPage/" class="w3-bar-item w3-button" onclick="toggleFunction()">CollectionTestPage</a>    
		</div>
	</div>

	<!-- First Parallax Image with Logo Text -->
	
	<div class="bgimg-1 w3-display-container" id="home"></div>
	<span style="white-space: nowrap;"
		class="w3-display-middle w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity">TOTAL
		FASHION <span class="w3-hide-small">WEEK</span>
	</span>
	
	<!-- Container (About Section) -->
	<div class="w3-content w3-container w3-padding-64" id="about">
		<h3 class="w3-center">ABOUT</h3>
		<p class="w3-center">
			<em>I love fashion</em>
		</p>
	<!-- <audio controls autoplay src="/audio/sharksong.mp3"  loop="loop" preload="auto" class = "song" type="audio/mp3" muted="muted"></audio> -->



		<p class="w3-center">Total Fashion - 유명 도시의 유명 브랜드의 패션쇼 정보를 한눈에</p>
		
		<div class="w3-row">

			<div class="w3-col m6 w3-center w3-padding-large">
				<p>
					<b><i class="fa fa-user w3-margin-right"></i>Fashion Week</b>
				</p>
				<br> <img
					src="/img/main_menu_img/main_about_img.jpg"
					class="w3-round w3-image w3-hover-opacity" alt="Photo of Me"
					width="500" height="333">
			</div>
			
			<!-- Hide this text on small devices -->
			<div class="w3-col m6 w3-hide-small w3-padding-large"
				style="margin-top: 80px; text-align: justify;">
				<span><b>패션 위크(Fashion week)</b>는 디자이너들이 작품을 발표하며, 패션쇼가 집중적으로
					열리는 주간을 뜻한다. 뉴욕 패션 위크, 밀라노 패션 위크, 파리 패션 위크, 런던 패션 위크가 유명하며, 그 외에도
					오스트레일리아 패션 위크, 베를린 패션 위크, 로스앤젤레스 패션 위크, 서울 패션 위크 등이 개최된다. <br>
					<b>오트쿠튀르(Haute couture)</b> 쿠튀르(couture)는 봉재, 또는 의상점이란 뜻이며 오트쿠튀르
					컬렉션 의상을 보면 평소에 입을 수 있는 옷이 아닌, 예술성에 더 치중한 디자인이 대부분입니다. <br> <b>프레타포르테(Pret
						a porter)</b> 고급 기성복이라는 의미의 프레타포르테(Pret a porter)는 영어의 'Ready to
					wear'와 같은 말로 원래는 오트쿠튀르보다 품질이 낮고 저렴한 기성복을 의미했지만, 대중들의 수요가 늘어나 점차 고급
					기성복으로 의미가 변화했습니다.</span>
			</div>
			
		</div>
		
		<p class="w3-large w3-center w3-padding-16">About Percentage:</p>
		<p class="w3-wide">
			<i class="fa fa-circle"></i>Fashion Black and White Percentage
		</p>
		
		<div class="w3-light-grey">
			<div class="w3-container w3-padding-small w3-dark-grey w3-center"
				style="width: 68%">Black 68%</div>
			<div class="w3-container w3-padding-small w3-grey w3-center"
				style="width: 32%">White 32%</div>
		</div>
		
		<p class="w3-wide">
			<i class="fa fa-circle"></i>Haute couture and Pret a porter
		</p>
		
		<div class="w3-light-grey">
			<div class="w3-container w3-padding-small w3-dark-grey w3-center"
				style="width: 58%">Haute couture 58%</div>
			<div class="w3-container w3-padding-small w3-grey w3-center"
				style="width: 42%">Pret a porter 42%</div>
		</div>

	</div>

	<div class="w3-row w3-center w3-dark-grey w3-padding-14">
		<div class="w3-quarter w3-section">
			<span style="color: gray;" class="w3-xlarge">New York</span><br>

		</div>
		<div class="w3-quarter w3-section">
			<span style="color: gray;" class="w3-xlarge">Milan</span><br>

		</div>
		<div class="w3-quarter w3-section">
			<span style="color: gray;" class="w3-xlarge">Paris</span><br>

		</div>
		<div class="w3-quarter w3-section">
			<span style="color: gray;" class="w3-xlarge">London</span><br>

		</div>
	</div>

	<!-- Second Parallax Image with Portfolio Text -->
	<div class="bgimg-2 w3-display-container">
		<div class="w3-display-middle">
			<span class="w3-xxlarge w3-text-white w3-wide">RUNWAY</span>
		</div>
	</div>

	<!-- Container (Portfolio Section) -->
	<div class="w3-content w3-container w3-padding-64" id="portfolio">
		<h3 class="w3-center">Runway</h3>
		<p class="w3-center">
			<em>This article is about the aircraft takeoff and landing area.
				For other uses, see Runway (disambiguation).<br> "Landing
				strip" and "RWY" redirect here. <br> For the pubic hairstyle,
				see Bikini waxing. For other uses, see Roll way.
			</em>
		</p>
		<br>

		<!-- Responsive Grid. Four columns on tablets, laptops and desktops. Will stack on mobile devices/small screens (100% width) -->
		<div class="w3-row-padding w3-center">
			<div class="w3-col m3">
				<img
					src="/img/main_menu_img/main_runway_img1.jpg"
					style="width: 100%" onclick="onClick(this)"
					class="w3-hover-opacity" alt="The mist over the mountains">
			</div>

			<div class="w3-col m3">
				<img
					src="/img/main_menu_img/main_runway_img2.jpg"
					style="width: 100%" height="80%" onclick="onClick(this)"
					class="w3-hover-opacity" alt="Coffee beans">
			</div>

			<div class="w3-col m3">
				<img
					src="/img/main_menu_img/main_runway_img3.jpg"
					style="width: 100%" onclick="onClick(this)"
					class="w3-hover-opacity" alt="Bear closeup">
			</div>

			<div class="w3-col m3">
				<img
					src="/img/main_menu_img/main_runway_img4.jpg"
					style="width: 100%" onclick="onClick(this)"
					class="w3-hover-opacity" alt="Quiet ocean">
			</div>
		</div>

		<div class="w3-row-padding w3-center w3-section">
			<div class="w3-col m3">
				<img
					src="/img/main_menu_img/main_runway_img5.jpg"
					style="width: 100%" onclick="onClick(this)"
					class="w3-hover-opacity" alt="The mist">
			</div>

			<div class="w3-col m3">
				<img
					src="/img/main_menu_img/main_runway_img6.jpg"
					style="width: 100%" onclick="onClick(this)"
					class="w3-hover-opacity" alt="My beloved typewriter">
			</div>

			<div class="w3-col m3">
				<img
					src="/img/main_menu_img/main_runway_img7.jpg"
					style="width: 100%" onclick="onClick(this)"
					class="w3-hover-opacity" alt="Empty ghost train">
			</div>

			<div class="w3-col m3">
				<img
					src="/img/main_menu_img/main_runway_img8.jpg"
					style="width: 100%" onclick="onClick(this)"
					class="w3-hover-opacity" alt="Sailing">
			</div>
		</div>
	</div>

	<!-- Modal for full size images on click-->
	<div id="modal01" class="w3-modal w3-black"
		onclick="this.style.display='none'">
		<span class="w3-button w3-large w3-black w3-display-topright"
			title="Close Modal Image"><i class="fa fa-remove"></i></span>
		<div
			class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
			<img id="img01" class="w3-image">
			<p id="caption" class="w3-opacity w3-large"></p>
		</div>
	</div>

	<!-- Third Parallax Image with Portfolio Text -->
	<div class="bgimg-3 w3-display-container">
		<div class="w3-display-middle">
			<span class="w3-xxlarge w3-text-white w3-wide">CONTACT</span>
		</div>
	</div>

	<!-- Container (Contact Section) -->
	<div class="w3-content w3-center w3-container w3-padding-64" id="contact">
	
		<h3 class="w3-center">WHERE I WORK</h3>
		<p class="w3-center">
			<em>I'd love your feedback!</em>
		</p>
		
		<div class="w3-col w3-panel">
			<div class="w3-large w3-center">
				<i class="fa fa-map-marker fa-fw w3-hover-text-black w3-xlarge"></i>
				한국ICT융합협동조합, KOREA<br> <i
					class="fa fa-phone fa-fw w3-hover-text-black w3-xlarge"></i> Phone:
				+00 151515<br> <i
					class="fa fa-envelope fa-fw w3-hover-text-black w3-xlarge"></i>
				Email: mail@mail.com<br>
			</div>

			<p>
				Swing by for a cup of <i class="fa fa-coffee"></i>, &nbsp;or leave
				me a note <br>Naver 메일정보를 입력하세요.
			</p>
			
		</div>
		
		<form action="/mailSender" target="_blank">
			<div class="w3-row-padding" style="margin: 0 100px 8px 100px">
				
				<div class="w3-half">
					<input class="w3-input w3-border" type="text" placeholder="@naver.com 제외하고 아이디 입력"
						name="email">
				</div>
				<div class="w3-half">
					<input class="w3-input w3-border" type="password" placeholder="Password"
						name="password">
				</div>
			</div>
			<div class="w3-row-padding" style="margin: 0 108.45px 8px 108.45px">
				<input class="w3-input w3-border" type="text" placeholder="Message"
					name="message"><br>
			</div>

			<button class="w3-button w3-black w3-center w3-section" type="submit">
				<i class="fa fa-paper-plane"></i> SEND MESSAGE
			</button>
		</form>
	</div>

	<!-- Footer -->
	<footer
		class="w3-center w3-black w3-padding-64 w3-opacity-min w3-hover-opacity-off">
		<a href="#home" class="w3-button w3-light-gray"><i
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
		//Modal Image Gallery
		function onClick(element) {
			document.getElementById("img01").src = element.src;
			document.getElementById("modal01").style.display = "block";
			var captionText = document.getElementById("caption");
			captionText.innerHTML = element.alt;
		}

		// Change style of navbar on scroll
		window.onscroll = function() {
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
		audio.play(); 

		audioIsPlaying = true;
		
		yousound.onclick = function() {

			if (bl) {
				yousound.className = "w3-bar-item fa fa-volume-off w3-right w3-hover-black w3-button";
				console.log(bl);
				bl = !bl;
				console.log(bl);
				
				audio.pause();
				audioIsPlaying = false;
			} else {
				yousound.className = "w3-bar-item fa fa-volume-up w3-right w3-hover-black w3-button";
				console.log(bl);
				bl = !bl;
				console.log(bl);
				
				audio.play();
				audioIsPlaying = true;
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
	 if(localStorage.key1!=null){
 		s.innerText=localStorage.key1;
	 }else{
		 s.innerText="";
	 }
 });
</script>

</body>
</html>
