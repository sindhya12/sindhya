<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
     <%@ include file="headerproduct.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form method="POST" action="listproducts" commandName="user">
<table border="0" class="table table-striped table-hover">
<br><br><br><br><br><br><br><br>
<br><tr>
<th>product ID</th>
<th>product Name</th>
<th>product brand</th>
<th>product price</th>
<th>product description</th>
<th>product quantity</th>
<th>product category</th>
<th>view/edit/delete</th>
</tr>
<c:forEach items="${lobj}" var="l" >
<tr>
<!-- <td><a href="prodById/${l.pid}">---------->
<td>${l.pid}</td>
<td>${l.pname}</td>
<td>${l.bname}</td>
<td>${l.price}</td>
<td>${l.prodDsc}</td>
<td>${l.quantity}</td>
<td>${l.category}</td>
<td><a href="listPost/${l.pid}" ><span class="glyphicon glyphicon-info-sign"></span></a>
<a href="admin/product/delete/${l.pid }"><span class="glyphicon glyphicon-trash"></span></a>
<a href="admin/product/edit/ ${l.pid}"><span class="glyphicon glyphicon-edit"></span></a>
</td></tr> 
</c:forEach>

</table>
</form:form>
</body>
</html>