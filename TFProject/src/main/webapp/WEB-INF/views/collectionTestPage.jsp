<%@page import="com.coord.jam.IsThereFile"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ taglib prefix ="fmt" uri ="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html>

<head>

<title></title>

<meta charset="UTF-8">

<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->

<meta name="viewport" content="width=device-width, user-scalable=no">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

<script type="text/javascript" src="/js/jquery.popup.js"></script>

<link rel="stylesheet" href="/css/jquery.popup.css" type="text/css">

 

<!-- selectbox -->

  <link href="https://fonts.googleapis.com/css?family=Playfair+Display" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.2/chosen.min.css'>

<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css'>

 

 <link rel="stylesheet" href="/css/style.css">

<script>

/* var currentScroll = 0;

var keeppingScrollEvent = false;

$( window ).scroll(function(e) {

	cureentScroll = $(this).scrollTop();

	if ($(this).scrollTop()<500){

		if(currentScroll<$(this).scrollTop() && keepingScrollEvent == false){

			$('html, body').stop().animate({

	            scrollTop: 1156

	            }, 100);

			keepingScrollEvent = true;

		}

	}

	console.log($(this).scrollTop());

}); */

 

</script>

 

 

<script type="text/javascript">

    $(function() {

      $(".js__p_start, .js__p_another_start").simplePopup();

    });

</script>

<style>

@import url('https://fonts.googleapis.com/css?family=Cinzel');

.p_content{}

body, html {

	height: 100%;

	color: #444;

	line-height: 1.8;

	font-family: "Lato", sans-serif;

	

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

#player{ margin-top:0px; width: 162%; margin-bottom: 1%;height: 53vw;   margin-left: -31%; z-index: -1;}

.logo{position: absolute;height: 109px;left: 832px;margin: 15px; top: 177px;}

.calenderBox{position: relative; height: 100px; width:100%; left:20vw; margin-top:40px; border:0px solid black; margin-bottom: 10px;}

.divinderUnderCalanderBox{color:black; position: relative; left:227px; border:solid 1px black; top:-16px;}

.goRight, .goLeft{font-size:50px; cursor: pointer; color: black;}

.goLeft{position: relative; left:100px;}

.goRight {position: relative; left:150px;}

.collectionName{font-size: 5vh;position:relative; left:130px; color:black; font-style: italic; }

.calenderIcon{display: inline; position: relative; left:150px;top:-15px; height:50px; cursor: pointer;}

.smallCollections1 {width: 87vw;   left: 72px; top: 319px;   cursor: pointer;margin-left: 10vw; margin-top: 20%;}

.smallCollections2{width: 1700px;  left: 1300px;top: 318px;cursor: pointer; margin-left: 10%;}

.smallCollections{width:18vw;  visible:none;margin: 5px;}

.modelOne{border:0px solid black;}

.fashionModels img {height:45vw;}

.fashionModels{ position: absolute; left:650px; top:321px;}

.boardDiv{width:1900px; height:1080px; border: 0px solid orange; top:-650px;}

.sectionOne{border : 0px solid red;  left: -12px; top:-59px; /* position: relative; */}

.brandName{font-size: 5.5VH; position: absolute; left: -5vw;  font-family: 'Cinzel', serif; font-weight: bold;  color: black; display: inline;

width: 67%; text-align: center;} 

.nextCollection{position: absolute; left: 15vw; font-family: 'Cinzel', serif;     top: 1.8vh; }

.brandName2{ position:absolute; font-family: 'Cinzel', serif; font-weight: bold;  color: black;  font-size: 5.1vw; left: 24vw;text-align: center;width: 52%;}

.brandNameBox{position: absolute;   width: 1000px;  text-align: center; top: -2.2vw; left: -200px;}

.secondNextCollection{position: relative;}

.secondNextCollection .nextCollection{left: 35vw; top: 18.8vh;}

.secondNextCollection .goRight, .goLeft {font-size: 35px;}

.secondNextCollection .collectionName{font-size: 3.5vh;  position: relative;  left: 130px;color: black;  font-style: italic;}

.secondNextCollection img {height: 34px;  left: 150px;top: -7px;}

.modelTwo, .modelThree{display: block;}

.p_close{right: 10px;}

.mordalrelationDiv{position: relative;}

.mordalh1Div{position: absolute;left: 30px;top:-92px;}

.mordalFormDiv{position: absolute; left: 266px; top: -89px; width: 308px;}

.mordalh1{font-family: 'Cinzel', serif; font-weight: bold; font-size: 46px; margin:30px;}

.mordalFormDiv select {display: block;  margin: 43px; font-family: 'Cinzel', serif}

.chosen-container{margin:10px;}

.secondNextCollection .goRight, .goLeft, .goLeft{font-size:50px;}

.playerShield{width:100%; height:51vw; border: 2px solid lime;  position: absolute; z-index:1; top: 250px; opacity: 0;} 

 

/* selectBox */

.chosen-wrapper .chosen-container .chosen-single{border-bottom-color: black; color: black; text-align: center;font-size: 20px;  padding: 8px;}

option{font-size: 20px; }

.gosubmit{ left: 220px;background-color: white;   font-family: 'Cinzel', serif; border: 0px;font-size: 39px; top: 285px;font-style: italic;   position: absolute; }

@media (max-width:1417px){

			.brandNameBox{margin-left: 7%;}

			#player{margin-top:5%;  margin-bottom: -1%;/* margin-bottom: 88px; */}

			.nextCollection{top: 9.8vh; display: block;left: -9vw;}

			/* .brandName2{left: 14vw;top: 3vw;}

			.secondNextCollection{top: -10vw;    left: -17vw; } */			

			/* .smallCollections1{margin-top:27%;} */

			.smallCollections1{    margin-top: 24%;}

        }

        @media (max-width:1185px){ 

       .secondNextCollection .nextCollection{display:none;} 

        }

 @media (max-width:864px){

 .brandName2{    top: -5vw;}

        }

@media (max-width:557px){

.brandName2{    top:-12vw;}

}			

 

@media (max-width:550px){

			.divinderUnderCalanderBox{visibility: hidden;}

			.brandNameBox { margin-left: 7%;  }

			.brandName {  font-size: 5.5VH;  position: absolute;  left: -6vw;left: -17vw;   width: 67%;  }     

			.nextCollection {  top: 11.8vh;  display: block;  left: -27vw;}

			.goLeft, .goRight{font-size: 30px;}

			.calenderIcon {height: 33px; top:-7px; left:145px;	}

			.divinderUnderCalanderBox {width: 200%;left: -26px;  margin: 7%; margin-top: 2.5vw;}

			.collectionName {font-size: 4.3vh;}

			#player{margin-bottom: 10px;margin-top:35px;    margin-bottom: -64px;}

			.sectionOne{    margin-left: -6%;}

			.brandName2{    top: -8vw;}

			}

@media (max-width:469px){

 .brandName2{   top:-12vw;}

        }

 

	@media (max-width:750px){		

			.mordalh1{font-size: 24px; margin: 5px;     left: 13px;}

			.mordalFormDiv{    width: 237px; z-index: 1;}

			.chosen-container-single .chosen-single{font-size: 15px; border-color:white; padding: -4px; }

			.chosen-wrapper--style2 .chosen-container.chosen-with-drop .chosen-drop{    width: 243px;}

			.chosen-container{margin: -8px; left: -140px;}

			.chosen-wrapper .chosen-container.chosen-with-drop .chosen-single{border-color: white; }

			.chosen-wrapper .chosen-container .chosen-single{ border-bottom-color: white;     margin-bottom: 5px;}

			.chosen-wrapper .chosen-container .chosen-single{font-size: 17px;}

			.gosubmit {

    left: -58px;

    background-color: white;

    font-family: 'Cinzel', serif;

    border: 0px;

    font-size: 51px;

    top: 192px;

    font-style: italic;

    position: absolute;

}.p_close {

    right: 28px;

    z-index: 2;

    top:10px;

}

			}

.goLeft, .goRight {display:none;}	   

.secondNextCollection .nextCollection {    left: 36vw; top: 21.8vh;}

</style>

</head>

<body id="body">

	<!-- Navbar (sit on top) -->

		<div class="w3-top">

		<div class="w3-bar" id="myNavbar">

			<a class="w3-bar-item w3-button w3-hover-gray w3-left" href="javascript:void(0);"

			onclick="toggleFunction()" title="Toggle Navigation Menu"> <i class="fa fa-bars"></i></a> 

			

			<a href="/" class="w3-bar-item w3-hover-gray w3-button">HOME</a>

			

			<a href="#top" class="w3-bar-item w3-button w3-hover-gray w3-hide-small"> 

				<i class="fa fa-spinner"></i> SEARCH</a> 

				

			<a href="#video" class="w3-bar-item w3-button w3-hover-gray w3-hide-small">

				<i style="font-size: 20px;" class="fa fa-youtube-play"></i> VIDEO</a> 

				

			<a href="#brand" class="w3-bar-item w3-button w3-hover-gray w3-hide-small">

				<i class="fa fa-asterisk"></i> BRAND</a>

			

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

	

 

	<div class ="calenderBox" name="top">

	<div class = "brandNameBox">

	<p class = "brandName">${brandName}</p></div>

		<div class="nextCollection">

			<span class="goLeft" onclick=" goNextSeason('left')">◀</span>

				<span class ="collectionName">${year } ${season }</span>

			<span class="goRight" onclick=" goNextSeason('right')">▶</span>    

			<img src = "/img/calenderIcon.png" class="calenderIcon lal js__p_start" >                         

		</div>

		

	</div>

	<!-- modal Content -->

	<div class="p_body js__p_body js__fadeout"></div>

	<div class="popup js__popup js__slide_top">

    <a href="#" class="p_close js__p_close" title="Закрыть">

      <span></span><span></span>

    </a>

    <div class="p_content">

    <div class ="mordalrelationDiv">

    <div class ="mordalh1Div">

	    <h1 class ="mordalh1">Brand</h1>

	    <h1 class ="mordalh1">Year</h1>

	    <h1 class ="mordalh1">Season</h1>

    </div>

    <script>

    function check(){

    	var brandName = $("select[name='brandName']").val();

    	var year = $("select[name='year']").val();

    	var season = $("select[name='season']").val();

    	var check;

    		  $.ajax({

    		        type:"POST",

    		        async: false,

    		        url:"/isThereFile/",

    		        data : {brandName: brandName, year:year, season:season },

    		        dataType : "text",

    		        success: function(text){

    		            if (text=="true"){

    		            	check =true;

    		            }else{

    		            	alert("해당 컬렉션은 존재하지 않습니다");

    		            }

    		        },

    		        error: function(xhr, status, error) {  }  

    		    }); 

    		  if(check==true){

    			  return true;

    		  }

    		  return false;

    }

    </script>

    <div class ="mordalFormDiv chosen-wrapper chosen-wrapper--style2" data-js="custom-scroll">

	    <form action="/goCollectionTestPage/"  onsubmit="return check()" id="brandGoForm">

	    	 <select class="chosen-select" data-placeholder="CHOOSE THE BRAND" name="brandName"  id = "brandName">

				    <option></option>

				    <option>Armani Prive</option>

				    <option>CALVIN KLEIN</option>

				    <option>Chanel</option>

				    <option>Dolce & Gabbana</option>

				    <option>Givenchy</option>

				    <option>Gucci</option>

				    <option>Louis Vuitton</option>

				    <option>Prada</option>

				    <option>Versace</option>

  			</select>

  			<select class="chosen-select" data-placeholder="CHOOSE THE YEAR" name ="year" id = "year">

  					<option></option>

				    <option>2018</option>

				    <option>2017</option>

				    <option>2016</option>

				    <option>2015</option>

				    <option>2014</option>

				    <option>2013</option>

				    <option>2012</option>

				    <option>2011</option>

				    <option>2010</option>

				    <option>2009</option>

				    <!-- 해야될 거: 파일이 있는지 확인하고 출력하고 이동 안 하기

				    왼쪽 오른쪽 누르면 계산해서 가는 거 아니면 아예 없애버리기 희희

				    사진을 클릭하면 크게 나오게 하기~~ -->

				  

  			</select>

  			<select class="chosen-select" data-placeholder="CHOOSE THE SEASON" name="season" id = "season">

  					<option></option>

				    <option>SS</option>

				    <option>FW</option>

  			</select>

  			<input type="submit" value="go" class ="gosubmit"> 

	    </form>

    </div>

    </div>

    

    <form>

    	

    </form>

    

    </div>

  </div>

  <!-- modal Content -->

  

  

	<hr class ="divinderUnderCalanderBox">

	<!-- First Parallax Image with Logo Text -->

	<div class="bgimg-1 w3-display-container" id="home"></div>

	

	<!-- <div class ="playerShield"></div>  -->

	<div name="video" id="player"></div> 

	

	<div class = "secondNextCollection">

	<h1 name="brand" class = "brandName2">${brandName }</h1>

	<div class="nextCollection">

			<span class="goLeft" onclick=" goNextSeason('left')">◀</span>

				<span class ="collectionName">${year } ${season }</span>

			<span class="goRight" onclick=" goNextSeason('right')">▶</span>    

			<img src = "/img/calenderIcon.png" class="calenderIcon lal js__p_start" >                         

		</div>

		</div>

	<div class ="sectionOne">

	<c:set var ="half" value= "${fn:length(list)/2}"/>

	<c:set var ="divided" value ='1'/>

	<div class ="smallCollections1">     

	<c:forEach items="${list }" var="item" varStatus="status">

		<%-- <c:if test="${status.index < half}">

			<c:if test="${status.index ==0 }">

				<script>

				$(function(){

					$(".modelOne").attr("src","${item}");

					$(".modelTwo").attr("src","${item}");

 

				});

			</script>

			</c:if> --%>

			<img src = "${item }" class ="smallCollections">

		<%-- </c:if>

		

		<c:if test="${status.index > half && divided =='1'}">

			<c:set var="divided" value= '0' />

			</div>

			<div class ="smallCollections2">

		</c:if>

		<c:if test="${divided == 0 }">

			<!-- <script>

				$(function(){

					

				});

			</script> -->

			<c:set var="divided" value="-1"/>

		</c:if>

		<c:if test="${status.index > half}">

			<img src = "${item }" class ="smallCollections">

		</c:if>		 --%>

	</c:forEach>

	</div>

	<script>

	$(function(){

		$(".smallCollections").show();

	});

	</script>

	

<!-- 	<div class ="fashionModels">

		<img class ="modelOne" src="">

		<img class ="modelTwo" src="">

		<img class ="modelTwo" src="">

		<img class ="modelTwo" src="">

		<img class ="modelTwo" src="">

		<img class ="modelTwo" src="">

		

	</div> -->

	</div>

	<script>

	/* alert(${fn:length(list)} ); */

	</script>

	 <%-- <c:forEach items="${list}" var="item" varStatus="status">

	window.alert(${status.index});

	</c:forEach> --%>

	

 

    <script>

      // 2. This code loads the IFrame Player API code asynchronously.

      var tag = document.createElement('script');

 

      tag.src = "https://www.youtube.com/iframe_api";

      var firstScriptTag = document.getElementsByTagName('script')[0];

      firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

 

      // 3. This function creates an <iframe> (and YouTube player)

      //    after the API code downloads.

      var player;

      function onYouTubeIframeAPIReady() {

        player = new YT.Player('player', {

          height: '1080',

          width: '1920',

          videoId:"${youtubeId}",

          events: {

            'onReady': onPlayerReady,

            'onStateChange': onPlayerStateChange

          }

        });

      }

 

      // 4. The API will call this function when the video player is ready.

      function onPlayerReady(event) {

        event.target.playVideo();

      }

 

      // 5. The API calls this function when the player's state changes.

      //    The function indicates that when playing a video (state=1),

      //    the player should play for six seconds and then stop.

      var done = false;

      function onPlayerStateChange(event) {

        if (event.data == YT.PlayerState.PLAYING && !done) {

          /* setTimeout(stopVideo, 6000); */

          done = true;

        }

      }

      function stopVideo() {

        player.stopVideo();

      }

    </script>

	<!-- <iframe width="1920" height="880" src="https://www.youtube.com/embed/K3_kN6VjAXg?autoplay=1"

	frameborder="0" allowfullscreen></iframe> -->

	<!-- <div class ="boardDiv"> -->

	<!-- <h1>안녕하세요.</h1>

	

	<h1>안녕하세요.</h1> -->

	</div>

	<div id="kakao_btn_changed">

<a href="javascript:loginWithKakao()">

<img src="" /></a>

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

	<script>

	$(function(){

		$(".smallCollections1 img, .smallCollections2 img").click(function(){

			$(".modelOne").attr("src",$(this).attr("src"));

			$(".modelTwo").attr("src",$(this).attr("src"));

		});

		/* $(".smallCollections2 img").click(function(){

			$(".modelTwo").attr("src",$(this).attr("src"));

		}); */

	});

	</script>	

	<script>

	function calender(){

		alert("hi");

		window.open("/collectionCalenderPopUp/"

				,"_blank","width=400,height=400,left=600, location='no'");

	}

	function goNextSeason(where){			

		if (where =="left"){

			alert("left")

			/*  var allData = {"year":${year}, "brandName":${brandName},"season",${season}}

			  $.ajax({

			        url:'/isThereFile', 

			        type:'post',     

			        data: allData,

			        success:function(data){

			        	alert(data);

			        },error:function(){

			        	alert("에러 발생");

			        }

			    })

			}); */

		}else {

			alert("right");

		}

	}

	</script>

	

<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.js'></script>

 

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

 

    <script  src="/js/index.js"></script>

</body>

</html>