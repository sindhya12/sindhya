<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br><br><br><br><br><br><br><br><br>
<c:forEach items="${pro}" var="cat" >
${cat.getCategory()}
${cat.getPname()}
${cat.getPrice()}
<a href="listPost/${cat.pid}"><span class="glyphicon glyphicon-info-sign"></span></a>
</c:forEach>
</body>
</html>