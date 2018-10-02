<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
			<a class="w3-bar-item w3-button w3-hover-black w3-left" href="javascript:void(0);"
			onclick="toggleFunction()" title="Toggle Navigation Menu"> <i class="fa fa-bars"></i></a> 
			
			<a href="/" class="w3-bar-item w3-hover-black w3-button">HOME</a>
			
			<a href="/test3/#c1" class="w3-bar-item w3-button w3-hover-black w3-hide-small"> 
				<i class="fa fa-user"></i> a1</a> 
				
			<a href="/test3/#c2" class="w3-bar-item w3-button w3-hover-black w3-hide-small">
				<i class="fa fa-th"></i> a2</a> 
				
			<a href="/test3/#c3" class="w3-bar-item w3-button w3-hover-black w3-hide-small">
				<i class="fa fa-envelope"></i> a3</a> 
			
			<i id="usound" style="font-size: 20px; height: 43px;" class="w3-bar-item fa fa-volume-up 
				w3-right w3-hover-black w3-button" onclick="sounds()"></i>
		</div>

		<!-- Navbar on small screens -->
		<div id="navDemo" class="w3-bar-block w3-white w3-hide">
			<a href="/" class="w3-bar-item w3-button" onclick="toggleFunction()">Home</a> 
			<a href="/test1/" class="w3-bar-item w3-button" onclick="toggleFunction()">test1</a> 
			<a href="/test2/" class="w3-bar-item w3-button" onclick="toggleFunction()">test2</a>
			<a href="/test3/" class="w3-bar-item w3-button" onclick="toggleFunction()">test3</a> 
			<a href="/test4/" class="w3-bar-item w3-button" onclick="toggleFunction()">test4</a>
			<a href="/goCollectionTestPage/" class="w3-bar-item w3-button" onclick="toggleFunction()">CollectionTestPage</a>
		</div>
	</div>

	<!-- First Parallax Image with Logo Text -->
	<img style="width: 100%;" name="c1" src="/img/main_menu_img/hor_img1.jpg"/><br>
	<img name="c2" src="https://vignette.wikia.nocookie.net/central/images/1/1c/J-0.gif/revision/latest?cb=20170601153446"/>
	<img name="c3" src="https://orig00.deviantart.net/2d92/f/2017/318/9/9/6pyeqehwyd5wq7tt_by_daycolors-dbtrudn.gif"/>
	
	
	<table border="1" class ="TB"> 			   
			   	<c:forEach var="a" items="${list}">
			   	<tr>
			 		<td rowspan="3" class="uu">${number} <c:set var="number" value="${number+1}"/></td>
			 		<td rowspan="3" style="width:300px; height:200px;">${a.academy_geogra}</td>
			 		<td colspan="2">${a.academy_title}</td>
			   	</tr>
			   	<tr>
					<td>${a.academy_id}</td>
					<td rowspan="2" style="width:300px; height:60px;">${a.academy_content}</td> 	
			   	</tr>
			   	<tr>
			 		<td>${a.academy_date}</td>
			   	</tr>
			  	</c:forEach>
	</table><br>
	
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
