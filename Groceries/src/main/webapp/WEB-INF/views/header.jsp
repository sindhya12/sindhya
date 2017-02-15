<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored = "false" %>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>PickAndCarry</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/bootstrap-3.3.7-dist/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.boots	trapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="styles.css">
<style>
body {
	background-image: url("<c:url value='/resources/images/img (5).jpg'/>" );
	background-repeat:no-repeat;
	
}
</style>
<body>
${jazy1} 
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Pick&Carry</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">category<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="category?cat=vegetables">vegetables</a></li>
          <li><a href="category?cat=fruits">fruits</a></li>
          <li><a href="category?cat=cerals">cerals</a></li>
        </ul>
      </li>
      <li><a href="aboutus">About Us</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <c:if test= "${sessionScope.name eq null}">
      <li><a href="SignUP"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </c:if>
      <c:if test="${sessionScope.name ne null}">
      <p>Welcome ${sessionScope.user}</p>
      <li><a href="logout">  <span class="glyphicon glyphicon-log-out"></span>logout</a></li>
     </c:if>
    </ul>
  </div>
</nav>

</body>
</html>