<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<html>

<head>
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
 <!-- Navbar (sit on top) -->
 <div class="w3-top"> 
  <div class="w3-bar" id="myNavbar">
   <a class="w3-bar-item w3-button w3-hover-gray w3-left" href="javascript:void(0);"
   onclick="toggleFunction()" title="Toggle Navigation Menu">
    <i class="fa fa-bars"></i></a> 
   
   <a href="/" class="w3-bar-item w3-hover-black w3-button">HOME</a>
   
   <a href="/test3/#c1" class="w3-bar-item w3-button w3-hover-gray w3-hide-small"> 
    <i class="fa fa-user"></i> a1</a> 
    
   <a href="/test3/#c2" class="w3-bar-item w3-button w3-hover-gray w3-hide-small">
    <i class="fa fa-th"></i> a2</a> 
    
   <a href="/test3/#c3" class="w3-bar-item w3-button w3-hover-gray w3-hide-small">
    <i class="fa fa-envelope"></i> a3</a> 
   
   <i id="usound" style="font-size: 20px; height: 43px;" class="w3-bar-item fa fa-volume-up 
    w3-right w3-hover-gray w3-button" onclick="sounds()"></i>
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
 
 <div align="center">
  <table class="table" border="0">
   <thead class="head">
    <tr>
     <th>${dto.qnaBoard_title}</th>
     <th align="right">${dto.qnaBoard_date}</th>
    </tr>
   </thead>
   <tbody class="cell">
    <tr>
     <th colspan="2">${dto.qnaBoard_id}</th>
    </tr>
   
   
    <tr>
     <td>${dto.qnaBoard_content}</td>
    </tr>
</tbody>
</table> 
<br>
 <div align="right" class="TB">
 
  <input class="btn btn-primary btn-warning" type="button" value="삭제하기" onclick="location.href='/qnaDelete?seq=${dto.qnaBoard_seq}'">
    <input class="btn btn-primary btn-warning" type="button" value="목록으로" onclick="location.href='/qnaList'">
 </div>

</body>

</html> 
