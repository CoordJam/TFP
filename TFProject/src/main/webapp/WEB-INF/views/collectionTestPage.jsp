<%@page import="check.IsThereFile"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix ="fmt" uri ="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
#player{ margin-top:-60px; width: 100%; margin-bottom: 55px;}
.logo{position: absolute;height: 109px;left: 832px;margin: 15px; top: 177px;}
.calenderBox{position: relative; height: 100px; width:100%; left:20vw; margin-top:40px; border:0px solid black; margin-bottom: 10px;}
.divinderUnderCalanderBox{color:black; position: relative; left:350px; border:solid 1px black; top:-25px;}
.goRight, .goLeft{font-size:50px; cursor: pointer; color: black;}
.goLeft{position: relative; left:100px;}
.goRight {position: relative; left:150px;}
.collectionName{font-size: 5vh;position:relative; left:130px; color:black; font-style: italic; }
.calenderIcon{display: inline; position: relative; left:150px;top:-15px; height:50px; cursor: pointer;}
.smallCollections1 {width: 534px; position: absolute;  left: 72px; top: 319px;   cursor: pointer;}
.smallCollections2{width: 504px;  position: absolute; left: 1300px;top: 318px;cursor: pointer; z-index: 2;}
.smallCollections{width:154px;  visible:none;}
.modelOne{border:0px solid black;}
.fashionModels img {height:45vw;}
.fashionModels{ position: absolute; left:650px; top:321px;}
.boardDiv{width:1900px; height:1080px; border: 2px solid orange; top:-650px;}
.sectionOne{border : 2px solid red; position: relative; left: -12px; top:-59px;}
.brandName{font-size: 6.5vh; position: absolute; left: -10vw; top: --0.6vh; font-family: 'Cinzel', serif; font-weight: bold;  color: black; display: inline;
width: 100%; text-align: center;}
.nextCollection{position: absolute; left: 15vw; font-family: 'Cinzel', serif;     top: 0.8vh; }
.brandName2{ position:absolute; font-family: 'Cinzel', serif; font-weight: bold;  color: black;  font-size: 5.1vw; left: 24vw;text-align: center;width: 900px;}
.brandNameBox{position: absolute;   width: 1000px;  text-align: center; top: -3.2vw; left: -200px;}
.secondNextCollection{position: relative;}
.secondNextCollection .nextCollection{left: 35vw; top: 18.8vh;}
.secondNextCollection .goRight, .goLeft {font-size: 35px;}
.secondNextCollection .collectionName{font-size: 3.5vh;  position: relative;  left: 130px;color: black;  font-style: italic;}
.secondNextCollection img {height: 34px;  left: 150px;top: -7px;}
.modelTwo{position:absolute;}
.p_close{right: 10px;}
.mordalrelationDiv{position: relative;}
.mordalh1Div{position: absolute;left: 30px;top:-92px;}
.mordalFormDiv{position: absolute; left: 266px; top: -89px; width: 308px;}
.mordalh1{font-family: 'Cinzel', serif; font-weight: bold; font-size: 46px; margin:30px;}
.mordalFormDiv select {display: block;  margin: 43px; font-family: 'Cinzel', serif}
.chosen-container{margin:10px;}
/* selectBox */
.chosen-wrapper .chosen-container .chosen-single{border-bottom-color: black; color: black; text-align: center;font-size: 20px;  padding: 8px;}
option{font-size: 20px; }
.gosubmit{ left: 220px;background-color: white;   font-family: 'Cinzel', serif; border: 0px;font-size: 39px; top: 285px;font-style: italic;   position: absolute; }

</style>
</head>
<body id="body">
<c:set var="root" value="<%=request.getContextPath()%>"></c:set>
	<!-- Navbar (sit on top) -->
	<div class="w3-top">
		<div class="w3-bar" id="myNavbar">
			<a class="w3-bar-item w3-button w3-hover-black w3-left" href="javascript:void(0);"
			onclick="toggleFunction()" title="Toggle Navigation Menu"> <i class="fa fa-bars"></i></a> 
			<a href="/" class="w3-bar-item w3-hover-black w3-button">HOME</a>
			<a href="/test2/#b1" class="w3-bar-item w3-button w3-hover-black w3-hide-small"> 
				<i class="fa fa-user"></i> b1</a> 	
			<a href="/test2/#b2" class="w3-bar-item w3-button w3-hover-black w3-hide-small">
				<i class="fa fa-th"></i> b2</a> 
			<a href="/test2/#b3" class="w3-bar-item w3-button w3-hover-black w3-hide-small">
				<i class="fa fa-envelope"></i> b3</a> 
			<i id="usound" style="font-size: 20px; height: 43px;" class="w3-bar-item fa fa-volume-up 
				w3-right w3-hover-black w3-button" onclick="sounds()"></i>
		</div>
		<!-- Navbar on small screens -->
		<div id="navDemo" class="w3-bar-block w3-white w3-hide">
			<a href="/" class="w3-bar-item w3-button" onclick="toggleFunction()">Home</a> 
			<a href="/test1/" class="w3-bar-item w3-button" onclick="toggleFunction()">test1</a> 
			<a href="/test2/" class="w3-bar-item w3-button" onclick="toggleFunction()">test2</a>
			<a href="/test3/" class="w3-bar-item w3-button" onclick="toggleFunction()">test3</a>  
		</div>
	</div>
	

	<div class ="calenderBox">
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
    <div class ="mordalFormDiv chosen-wrapper chosen-wrapper--style2" data-js="custom-scroll">
	    <form action="/goCollectionTestPage/">
	    	 <select class="chosen-select" data-placeholder="CHOOSE THE BRAND" name="brandName">
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
  			<select class="chosen-select" data-placeholder="CHOOSE THE YEAR" name ="year">
  					<option></option>
				    <option>2019</option>
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
				  
  			</select>
  			<select class="chosen-select" data-placeholder="CHOOSE THE SEASON" name="season">
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
	}    
	
	<div id="player"></div> 
	<h1 class = "brandName2">${brandName }</h1>
	<div class = "secondNextCollection">
	<div class="nextCollection">
			<span class="goLeft" onclick=" goNextSeason('left')">◀</span>
				<span class ="collectionName">${year } ${season }</span>
			<span class="goRight" onclick=" goNextSeason('right')">▶</span>    
			<img src = "/img/calenderIcon.png" class="calenderIcon"  onclick="calender()">                         
		</div>
		</div>
	<div class ="sectionOne">
	<c:set var ="half" value= "${fn:length(list)/2}"/>
	<c:set var ="divided" value ='1'/>
	<div class ="smallCollections1">     
	<c:forEach items="${list }" var="item" varStatus="status">
		<c:if test="${status.index < half}">
			<c:if test="${status.index ==0 }">
				<script>
				$(function(){
					$(".modelOne").attr("src","${item}");
					$(".modelTwo").attr("src","${item}");
				});
			</script>
			</c:if>
			<img src = "${item }" class ="smallCollections">
		</c:if>
		
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
		</c:if>		
	</c:forEach>
	</div>
	<script>
	$(function(){
		$(".smallCollections").show();
	});
	</script>
	
	<div class ="fashionModels">
		<img class ="modelOne" src="">
		<img class ="modelTwo" src="">
	</div>
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
          height: '900',
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
	<div class ="boardDiv">
	<!-- <h1>안녕하세요.</h1>
	
	<h1>안녕하세요.</h1> -->
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

		yousound.onclick = function() {

			if (bl) {
				yousound.className = "w3-bar-item fa fa-volume-off w3-right w3-hover-black w3-button";
				console.log(bl);
				bl = !bl;
				console.log(bl);
				ytplayer.playVideo();
				console.log(ytplayer);
			} else {
				yousound.className = "w3-bar-item fa fa-volume-up w3-right w3-hover-black w3-button";
				console.log(bl);
				bl = !bl;
				console.log(bl);
				ytplayer.pauseVideo();
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

  

    <script  src="/js/index.js"></script>
</body>
</html>
