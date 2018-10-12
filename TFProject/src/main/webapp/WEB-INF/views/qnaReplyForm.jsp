<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="http://developers.kakao.com/sdk/js/kakao.min.js"></script>

	<head>
	 <style type="text/css">

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
   #container{margin: 0 auto; } 
   h3{width: 71%;
      align:center;
   	  margin-top: 2% }
   
   .TB{

  #container {
   margin: 0 auto;
  }

  h3 {
   width: 71%;
   align: center;
   margin-left: 6%;
   margin-top: 2%
  }

  .TB {

   width: 55%;
   border-color: gray;
   align: center;
   margin-left: 15%;

   margin-top: 3%;
  }

  .TB2 {
   width: 55%;
   border-color: gray;
   align: center;
   margin-left: 19%;

   margin-top: 1%;

   }
  
  </style>
		<meta charset="utf-8">
		<title>Welcome</title>
	</head> 
	<body>
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
 <img class="w3-card" style="width: 100%;" name="c1" src="/img/main_menu_img/hor_img1.jpg"/><br><br><br>
  <h3 style="margin: auto;" align="center">게시글 작성</h3><br>
  <div class="container">
<table class="table table-bordered">

    <tbody>
        <form action="/qnaInsert" method="post" encType="multiplart/form-data">
         <tr>
          <c:choose>
    <c:when test="${null eq id}">
    <input type="hidden" name="qnaBoard_id" value="익명">
    </c:when>
    <c:when test="${null ne id}">
    <input type="hidden" id="names" name="qnaBoard_id" value="">
    </c:when>
   </c:choose>
         </tr>
            <tr>
                <th>제목: </th>
                <td><input type="text" placeholder="제목을 입력하세요. " name="qnaBoard_title" class="form-control"/></td>
            </tr>
            <tr>
                <th>내용: </th>
                <td><textarea cols="10" rows="20" placeholder="내용을 입력하세요. " name="qnaBoard_content" class="form-control"></textarea></td>
            </tr>
            <tr>
                <td colspan="2">
                    <button type="submit" class="btn btn-primary btn-warning pull-right">작 성</button>
                   
                    <input class="btn btn-primary btn-warning" type="button" value="목록으로" onclick="location.href='/qnaList'">
                <!--     <input type="button" value="reset" class="pull-left"/> -->
                   <!--  <input type="button" value="글 목록으로... " class="pull-left" onclick="javascript:location.href='qnaList'"/> -->
                    <!-- <a class="btn btn-default" onclick="sendData()"> 등록 </a>
                    <a class="btn btn-default" type="reset"> reset </a>
                    <a class="btn btn-default" onclick="javascript:location.href='list.jsp'">글 목록으로...</a> -->
                </td>
            </tr>
        </form>
    </tbody>
</table>
</div>

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

		yousound.onclick = function () {

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
		
	</body>
</html>
