<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<title></title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<%@page import="java.text.SimpleDateFormat"%>

<%@page import="java.util.Calendar"%> 



<%

Calendar cal = Calendar.getInstance();

String strYear = request.getParameter("year");

String strMonth = request.getParameter("month");

 

int year = cal.get(Calendar.YEAR);

int month = cal.get(Calendar.MONTH);

int date = cal.get(Calendar.DATE);

 

if(strYear != null)

{

  year = Integer.parseInt(strYear);

  month = Integer.parseInt(strMonth);

 

}else{

 

}

//년도/월 셋팅

cal.set(year, month, 1);

 

int startDay = cal.getMinimum(java.util.Calendar.DATE);

int endDay = cal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH);

int start = cal.get(java.util.Calendar.DAY_OF_WEEK);

int newLine = 0;

 

//오늘 날짜 저장.

Calendar todayCal = Calendar.getInstance();

SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");

int intToday = Integer.parseInt(sdf.format(todayCal.getTime()));

if(intToday==20181010){
	intToday+=234;
}

%>

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


    td {font-family: "돋움"; font-size: 9pt; color:#595959;}

    th {font-family: "돋움"; font-size: 9pt; color:#000000;}

    select {font-family: "돋움"; font-size: 9pt; color:#595959;}





    .divDotText {

    overflow:hidden;

    text-overflow:ellipsis;

    }

       </style>


<body id="body">
 <!-- Navbar (sit on top) -->
 <div class="w3-top">
  <div class="w3-bar" id="myNavbar">
   <a class="w3-bar-item w3-button w3-hover-gray w3-left" href="javascript:void(0);" 
   onclick="toggleFunction()" title="Toggle Navigation Menu">
    <i class="fa fa-bars"></i></a>

   <a href="/" class="w3-bar-item w3-hover-gray w3-button">HOME</a>

   <a href="/test3/#c1" class="w3-bar-item w3-button w3-hover-gray w3-hide-small">
    <i class="fa fa-user"></i> a1</a>

   <a href="/test3/#c2" class="w3-bar-item w3-button w3-hover-gray w3-hide-small">
    <i class="fa fa-th"></i> a2</a>

   <a href="/test3/#c3" class="w3-bar-item w3-button w3-hover-gray w3-hide-small">
    <i class="fa fa-envelope"></i> a3</a>

   <i id="usound" style="font-size: 20px; height: 43px;" class="w3-bar-item fa fa-volume-up 
    w3-right w3-hover-gray w3-button"
    onclick="sounds()"></i>
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

 <form name="calendarFrm" id="calendarFrm" action="" method="post">


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
     + " w3-white";
   } else {
    navbar.className = navbar.className.replace(
     " w3-card w3-animate-top w3-white", "");
   }
  }


<DIV id="content" style="width:712px;">

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

 

<table width="100%" border="0" cellspacing="1" cellpadding="1">

<tr>

       <td align ="right">

             <input type="button" onclick="javascript:location.href='<c:url value='' />'" value="오늘"/>

       </td>

 

</tr>

</table>

<!--날짜 네비게이션  -->

<table width="100%" border="0" cellspacing="1" cellpadding="1" id="KOO" bgcolor="#F3F9D7" style="border:1px solid #CED99C">

 

<tr>

<td height="60">

 

       <table width="100%" border="0" cellspacing="0" cellpadding="0">

       <tr>

             <td height="10">

             </td>

       </tr>

      

       <tr>

             <td align="center" >

                    <a href="<c:url value='' />?year=<%=year-1%>&amp;month=<%=month%>" target="_self">

                           <b>&lt;&lt;</b><!-- 이전해 -->

                    </a>

                    <%if(month > 0 ){ %>

                    <a href="<c:url value='' />?year=<%=year%>&amp;month=<%=month-1%>" target="_self">

                           <b>&lt;</b><!-- 이전달 -->

                    </a>

                    <%} else {%>

                           <b>&lt;</b>

                    <%} %>

                    &nbsp;&nbsp;

                    <%=year%>년

                   

                    <%=month+1%>월

                    &nbsp;&nbsp;

                    <%if(month < 11 ){ %>

                    <a href="<c:url value='' />?year=<%=year%>&amp;month=<%=month+1%>" target="_self">

                           <!-- 다음달 --><b>&gt;</b>

                    </a>

                    <%}else{%>

                           <b>&gt;</b>

                    <%} %>

                    <a href="<c:url value='' />?year=<%=year+1%>&amp;month=<%=month%>" target="_self">

                           <!-- 다음해 --><b>&gt;&gt;</b>

                    </a>

             </td>

       </tr>

       </table>

 

</td>

</tr>

</table>

<br>

<table align="center" border="0" cellspacing="1" cellpadding="1" bgcolor="#FFFFFF">

<THEAD>

<TR bgcolor="#CECECE">

       <TD width='100px'>

       <DIV align="center"><font color="red">일</font></DIV>

       </TD>

       <TD width='100px'>

       <DIV align="center">월</DIV>

       </TD>

       <TD width='100px'>

       <DIV align="center">화</DIV>

       </TD>

       <TD width='100px'>

       <DIV align="center">수</DIV>

       </TD>

       <TD width='100px'>

       <DIV align="center">목</DIV>

       </TD>

       <TD width='100px'>

       <DIV align="center">금</DIV>

       </TD>

       <TD width='100px'>

       <DIV align="center"><font color="#529dbc">토</font></DIV>

       </TD>

</TR>

</THEAD>

<TBODY>

<TR>

<%

 

//처음 빈공란 표시

for(int index = 1; index < start ; index++ )

{

  out.println("<TD >&nbsp;</TD>");

  newLine++;

}

 

for(int index = 1; index <= endDay; index++)

{

       String color = "";

 

       if(newLine == 0){          color = "RED";

       }else if(newLine == 6){    color = "#529dbc";

       }else{                     color = "BLACK"; };

 

       String sUseDate = Integer.toString(year); 

       sUseDate += Integer.toString(month+1).length() == 1 ? "0" + Integer.toString(month+1) : Integer.toString(month+1);

       sUseDate += Integer.toString(index).length() == 1 ? "0" + Integer.toString(index) : Integer.toString(index);

 

       int iUseDate = Integer.parseInt(sUseDate);

      

      

       String backColor = "#EFEFEF";

       if(iUseDate == intToday ) {

             backColor = "#c9c9c9";

       }

       out.println("<TD valign='top' align='left' height='92px' bgcolor='"+backColor+"' nowrap>");

       %>

       <font color='<%=color%>'>

             <%=index %>

       </font>

 

       <%

      

       out.println("<BR>");

       out.println(iUseDate);

       out.println("<BR>");

      

      

       //기능 제거 

       out.println("</TD>");

       newLine++;

 

       if(newLine == 7)

       {

         out.println("</TR>");

         if(index <= endDay)

         {

           out.println("<TR>");

         }

         newLine=0;

       }

}

//마지막 공란 LOOP

while(newLine > 0 && newLine < 7)

{

  out.println("<TD>&nbsp;</TD>");

  newLine++;

}

%>

</TR>

 

</TBODY>

</TABLE>

</form> <br><br><br><br><br><br>

<!-- Footer -->
	<footer
		class="w3-center w3-black w3-padding-48 w3-opacity-min w3-hover-opacity-off">
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
  // Change style of navbar on scroll
  window.onscroll = function () {
   myFunction()
  };
  function myFunction() {
   var navbar = document.getElementById("myNavbar");
   if (document.body.scrollTop > 100
    || document.documentElement.scrollTop > 100) {
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
