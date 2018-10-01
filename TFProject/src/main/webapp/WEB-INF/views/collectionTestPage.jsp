<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix ="fmt" uri ="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<title></title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
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
#player{position: relative; top:500px;}
.logo{position: relative; height:100px;left:800px; margin:15px;top:15px;}
.calanderBox{position: relative; height: 100px; width:600px; left:600px; margin-top:50px; border:0px solid black; margin-bottom: 0px;}
.divinderUnderCalanderBox{color:black; position: relative; left:350px; border:solid 1px black; top:-25px;}
.goRight, .goLeft{font-size:50px; cursor: pointer; color: black;}
.goLeft{position: relative; left:100px;}
.goRight {position: relative; left:150px;}
.collectionName{font-size:50px;position:relative; left:130px; color:black; font-style: italic; }
.calanderIcon{display: inline; position: relative; left:150px;top:-15px; height:60px;}
.smallCollections{width:45px; cursor: pointer;}
.smallCollections1 {border:0px solid red; width:400px; position: relative; left:200px; top:100px;}
.smallCollections2{border: 0px solid green; width:400px; position: absolute; left:1300px; top:450px; }
</style>

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
	<img src ="/img/brandLogos/gucci.png" class="logo">
	<div class ="calanderBox">
		<span class="nextCollection">
			<span class="goLeft">◀</span>
				<span class ="collectionName">2018 F/W</span>
			<span class="goRight">▶</span>                             
		</span>
		<img src = "/img/calanderIcon.png" class="calanderIcon" >
	</div>
	
	<hr class ="divinderUnderCalanderBox">
	<!-- First Parallax Image with Logo Text -->
	<div class="bgimg-1 w3-display-container" id="home"></div>
	}    
	
	<c:set var ="half" value= "${fn:length(list)/2}"/>
	<c:set var ="divided" value ='1'/>
	<div class ="smallCollections1">     
	<c:forEach items="${list }" var="item" varStatus="status">
		<c:if test="${status.index < half}">
			<img src = "${item }" class ="smallCollections">
		</c:if>
		<c:if test="${status.index > half && divided =='1'}">
			<c:set var="divided" value= '0' />
			</div>
			<div class ="smallCollections2">
		</c:if>
		<c:if test="${status.index > half}">
			<img src = "${item }" class ="smallCollections">
		</c:if>		
	</c:forEach>
	</div>
	<script>
	/* alert(${fn:length(list)} ); */
	</script>
	 <%-- <c:forEach items="${list}" var="item" varStatus="status">
	window.alert(${status.index});
	</c:forEach> --%>
	<div id="player"></div>

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
          videoId: 'aCl1Rv5JWss',
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

</body>
</html>
