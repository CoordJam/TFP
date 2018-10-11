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
 <style type="text/css">

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
   #container{margin: 0 auto; } 
   h3{width: 71%;
      align:center;
   /* margin-left: 6%; */ margin-top: 2% }
   
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
      align:center;
   /* margin-left: 15%; */
=======
   border-color: gray;
   align: center;
   margin-left: 15%;

   margin-top: 3%;
  }

  .TB2 {
   width: 55%;

      border-color: gray; 
      align:center;
   /* margin-left: 19%; */

   border-color: gray;
   align: center;
   margin-left: 19%;

   margin-top: 1%;

   }
  
  </style>
  <meta charset="UTF-8">
  <title></title>
 </head>
 
 <body id="body">
 <!-- Navbar (sit on top) -->
 <div class="w3-top"> 
  <div class="w3-bar" id="myNavbar">
   <a class="w3-bar-item w3-button w3-hover-gray w3-left" href="javascript:void(0);"
   onclick="toggleFunction()" title="Toggle Navigation Menu"> <i class="fa fa-bars"></i></a> 
   
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
  <h3>게시글 작성</h3>
  
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
    <input type="hidden" name="qnaBoard_id" value="${sessionScope.id}">
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

  
  <%-- <form class="TB" method="post" action="/qnaInsert">
  
   <c:choose>
    <c:when test="${null eq id}">
=======
  }
 </style>
 <meta charset="UTF-8">
 <title></title>
</head>

<body>
 <h3>게시글 작성</h3>

 <form class="TB" method="post" action="/qnaInsert">

  <c:choose>
   <c:when test="${null eq id}">
>>>>>>> refs/remotes/origin/master
    <input type="hidden" name="qnaBoard_id" value="익명">
   </c:when>
   <c:when test="${null ne id}">
    <input type="hidden" name="qnaBoard_id" value="${sessionScope.id}">
<<<<<<< HEAD
    </c:when>
   </c:choose>
   <div class="TB2">
    <textarea name="qnaBoard_title" rows="1" cols="40" placeholder="제목을 입력하세요"></textarea>
    <br>
    <textarea name="qnaBoard_content" rows="15" cols="40" placeholder="내용을 입력하세요"></textarea>
    <br>
    
  
    <button type="submit">작성</button>
   </div>
  </form> 
 </div>
 </body>

   </c:when>
  </c:choose>
  <div class="TB2">
   <textarea name="qnaBoard_title" rows="1" cols="40" placeholder="제목을 입력하세요"></textarea>
   <br>
   <textarea name="qnaBoard_content" rows="15" cols="40" placeholder="내용을 입력하세요"></textarea>
   <br>


   <button type="submit">작성</button>
  </div>
 </form>
--%>
</body>


</html> 
