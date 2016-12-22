<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="headerproduct.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:url value="/admin/product/editproducts/" var="url"></c:url> 
	<form:form method="post" action="${url}" commandName="editproductobj">
	
	<br><br><br><br><br><br><br><br><br><br>
		<table>
		<tr>
			<td><form:label path="pid">ProductId</form:label></td>
			<td><form:input path="pid" disabled="true"/>
			<form:hidden path="pid" /></td>
           <tr>
        <td><form:label path="pname">ProductName</form:label></td>
        <td><form:input path="pname"  /></td>
    </tr>
     <tr>
        <td><form:label path="bname">BrandName</form:label></td>
        <td><form:input path="bname" /></td>
    </tr>
   
    <tr>
        <td><form:label path="price">price</form:label></td>
        <td><form:input path="price"  /></td>
    </tr>
    <tr>
        <td><form:label path="prodDsc">description</form:label></td>
        <td><form:input path="prodDsc" /></td>
    </tr>
    
    <tr>
        <td><form:label path="quantity">quantity</form:label></td>
        <td><form:input path="quantity"/></td>
    </tr>
    <tr>
     <td><form:label path="category">category</form:label></td>
<td><form:select  path="category"  id="single1">
     <option>vegetables</option>
     <option>fruits</option>
     <option>cereals</option>
     
</form:select>
    </td>
 </tr>
	     <tr>
	    <td colspan="2"><input type="submit" value="edit"></td>
	    </tr>
		</table>
	</form:form>
</body>
</html>