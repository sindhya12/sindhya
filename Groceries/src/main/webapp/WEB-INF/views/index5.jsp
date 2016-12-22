<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored = "false" %>
 <%@ include file="header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>PickAndCarry</title>
<link rel="stylesheet" href="styles.css">
 <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 1000px;
      height: 500px;
      margin: auto;
  }
  </style>
</head>
<body>
   
<div class="container">
  <h3>Pick&Carry</h3>
  <p><mark>Be a Shopaholic one to our Pick&Carry</mark></p>
</div>
<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="<c:url value="resources/images/img (8).jpg"/>" >
        <div class="carousel-caption">
          <h3>WELCOME TO</h3>
          <p>PICK AND CARRY</p>
        </div>
      </div>

      <div class="item">
       
      <img src="<c:url value='resources/images/img (2).jpg'/>" >
        <div class="carousel-caption">
          <h3>SPICY</h3>
          <p>CHILL IT</p>
        </div>
      </div>
    
      <div class="item">
        <img src="<c:url value='resources/images/img (5).jpg'/>" >
        <div class="carousel-caption">
          <h3>DRY FRUITS</h3>
          <p>LIVE HEALTHY</p>
        </div>
      </div>

      <div class="item">
        <img src="<c:url value='resources/images/img (7).jpg'/>" >
        <div class="carousel-caption">
          <h3>FRUITS</h3>
          <p>NATURE SAVES US</p>
        </div>
      </div>
  <div class="item">
        <img src="<c:url value='resources/images/img (9).jpg'/>" >
        <div class="carousel-caption">
          <h3>PULSES</h3>
          <p>HEALTH CONSCIOUS</p>
        </div>
      </div>
    </div>
 <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
   </div>
</div>



</body>
</html>