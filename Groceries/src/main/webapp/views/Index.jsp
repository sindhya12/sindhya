<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PickAndCarry</title>
  <link rel="stylesheet" href="bootstrap-3.3.7-dist\css\bootstrap.min.css">
  <script src="bootstrap-3.3.7-dist\js\jquery-3.1.0.min.js"></script>
  <script src="bootstrap-3.3.7-dist\js\bootstrap.min.js"></script>
 <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Pick&Carry</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      <li><a href="#">Page 2</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
            
            <input type = "text" class = "form-control" placeholder = "Search">
         
         <button type = "submit" class = "btn btn-default">Submit</button>
    
    	 
      <li><a href="index2"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="index1"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      <li><span class="glyphicon glyphicon-shopping-cart"></span></li>
    </ul>
  </div>
</nav>
  
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
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="pic (1).jpg" alt="cosmetics" width="460" height="345">
        <div class="carousel-caption">
          <h3>COSMETICS</h3>
          <p>Cosmetics which makes you more good</p>
        </div>
      </div>

      <div class="item">
        <img src="pic (9).jpg" alt="Chania" width="460" height="345">
        <div class="carousel-caption">
          <h3>FRUITS</h3>
          <p>Good to health</p>
        </div>
      </div>
    
      <div class="item">
        <img src="pic (10).jpg" alt="Flower" width="460" height="345">
        <div class="carousel-caption">
          <h3>MEAT</h3>
          <p>Cooking with love provides food for the soul</p>
        </div>
      </div>

      <div class="item">
        <img src="pic (22).jpg" alt="Flower" width="460" height="345">
        <div class="carousel-caption">
          <h3>GROCERIES</h3>
          <p>Buy groceries and feed yourself and feed yourself even on the road</p>
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