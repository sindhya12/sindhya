<%@ page isELIgnored = "false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="styles.css">
<style>
body
{background-image: url("resources/images/img (1).jpg");
	background-repeat:no-repeat;
	
}

</style>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Pick&Carry</a>
    </div>
       <ul class="nav navbar-nav">
       <li class="active"><a href="index5">Home</a></li>
       <li><a href="addproduct">AddProduct</a></li>
       <li><a href="listproducts">View</a></li>
       <ul class="nav navbar-nav navbar-right">
 <li><a href="login">logout</a></li>
    </ul>
  </div>
</nav>

</body>
</html>