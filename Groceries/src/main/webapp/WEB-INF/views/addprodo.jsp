<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!--
<form action="addprodo" method="post" enctype="multipart/form-data">
<label name="pname">PRODUCT NAME</label>
<input type="text" name="pname" >

<label name="bname">BRAND NAME</label>
<input type="text" name="bname" >

<label name="price">PRODUCT PRICE</label>
<input type="text" name="price" >

<label name="quantity">PRODUCT QUANTITY</label>
<input type="text" name="quantity" >

<label name="category">PRODUCT CATEGORY</label>
<select  name="category"  >
     <option>vegetables</option>
     <option>fruits</option>
     <option>cereals</option>
 </select>

<label name="prodDsc">PRODUCT DESCRIPTION</label>
<input type="text" name="prodDsc" >

<input type="file" name="files" value="fileupload" >
<input type="submit" id="btnSubmit" class="btn btn-success">
</form>-->
 <form:form method="POST" action="addprodo" commandName="prodoobj" enctype="multipart/form-data">
<table class="centerTable">

	<tr>
        <td><form:label path="pname">ProductName</form:label></td>
        <td><form:input path="pname" type="text" class="form-control"/></td>
    </tr>
	<tr>
		<td><form:label path="bname">brand name</form:label></td>
		<td><form:input path="bname" type="text" class="form-control"/></td>
	</tr>
	<tr>
		<td><form:label path="price">product price</form:label></td>
		<td><form:input path="price" type="text" class="form-control"/></td>
	</tr>
	<tr>
		<td><form:label path="prodDsc">product description</form:label></td>
		<td><form:input path="prodDsc" type="text" class="forn-control"/></td>
	</tr>
	<tr>
		<td><form:label path="quantity">product quantity</form:label></td>
		<td><form:input path="quantity" type="text" class="forn-control"/></td>
	</tr>
	 <td><form:label path="category">category</form:label></td>
<td><form:select  path="category"  >
     <option>vegetables</option>
     <option>fruits</option>
     <option>cerals</option>
 
	    
</form:select>
    </td>
    </tr>
  
</table>
</form:form>
</body>
</html>