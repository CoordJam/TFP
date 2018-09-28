<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

/* Create a Parallax Effect */
.bgimg-1 {
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

/* First image (Logo. Full height) */
.bgimg-1 {
	background-image:
		url("https://media.giphy.com/media/3o7abmKhQ80pURWbgQ/giphy.gif");
	min-height: 100%;
	opacity: 0.9;
}


.w3-wide {
	letter-spacing: 10px;
}

.w3-hover-opacity {
	cursor: pointer;
}

/* Turn off parallax scrolling for tablets and phones */
@media only screen and (max-device-width: 1600px) {
	.bgimg-1 {
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
			<a class="w3-bar-item w3-button w3-hover-black w3-left" href="javascript:void(0);"
			onclick="toggleFunction()" title="Toggle Navigation Menu"> <i class="fa fa-bars"></i></a> 
			
			<a href="/" class="w3-bar-item w3-hover-black w3-button">HOME</a>
			
			<a href="/test1/#a1" class="w3-bar-item w3-button w3-hover-black w3-hide-small"> 
				<i class="fa fa-user"></i> a1</a> 
				
			<a href="/test1/#a2" class="w3-bar-item w3-button w3-hover-black w3-hide-small">
				<i class="fa fa-th"></i> a2</a> 
				
			<a href="/test1/#a3" class="w3-bar-item w3-button w3-hover-black w3-hide-small">
				<i class="fa fa-envelope"></i> a3</a> 
			
			<i id="usound" style="font-size: 20px; height: 43px;" class="w3-bar-item fa fa-volume-up 
				w3-right w3-hover-black w3-button" onclick="sounds()"></i>
		</div>

		<!-- Navbar on small screens -->
		<div id="navDemo" class="w3-bar-block w3-white w3-hide">
			<a href="/" class="w3-bar-item w3-button" onclick="toggleFunction()">Home</a> 
			<a href="/test1/" class="w3-bar-item w3-button" onclick="toggleFunction()">test1</a> 
			<a href="/test2/" class="w3-bar-item w3-button" onclick="toggleFunction()">test2</a> 
		</div>
	</div>

	<!-- First Parallax Image with Logo Text -->
	<div class="bgimg-1 w3-display-container" id="home"></div>
	
	<img name="a1" src="https://media.giphy.com/media/3o7abmKhQ80pURWbgQ/giphy.gif"/>
	<img name="a2" src="http://www.apicius.es/wp-content/uploads/2012/07/IMG-20120714-009211.jpg"/>
	<img name="a3" src="http://images6.fanpop.com/image/photos/39900000/IMG-6250-PNG-kion-39961687-1024-577.png"/>
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
