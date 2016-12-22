<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 
<title>SignUp</title>
<style>
#formDiv
{
	width:280px;
	margin:0px auto;
	margin-top:20px;
	
}

</style>

<body>

  
<h2>SIGN-UP</h2>

<form:form method="POST" action="SignUP1" commandName="user">

<div id="formDiv">
		 <div class="form-group">
        <form:label path="firstName">FirstName</form:label >
        <form:input path="firstName"  type="text" class="form-control" required="true"  /></div>
         <div class="form-group">
        <form:label path="lastName">LastName</form:label>
        <form:input path="lastName"  type="text"  class="form-control" required="true" id="as"/></div>
         <div class="form-group">
        <form:label path="email">email</form:label>
        <form:input path="email"  type="email"  class="form-control" required="required" aria-required="true" 
        pattern="^(([-\w\d]+)(\.[-\w\d]+)*@([-\w\d]+)(\.[-\w\d]+)*(\.([a-zA-Z]{2,5}|[\d]{1,3})){1,2})$"
        title="abc67@exmpl.com" spellcheck="false" size="30" id="as"/></div>
         <div class="form-group">
        <form:label path="password">password</form:label></td>
        <form:input path="password"  type="password" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" title="Password (UpperCase, LowerCase, Number/SpecialChar and min 8 Chars)" required="true" class="form-control" id="txtPassword" /></div>
         <div class="form-group">
        <form:label path="confirmPassword">confirm password</form:label>
        <form:input path="confirmPassword"  type="password" required="true"  class="form-control" id="txtConfirmPassword" /></div>   
         <div class="form-group">
         
 		<button type="submit" id="btnSubmit" class="btn btn-success">JOIN US</button></div>
 		
 		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#btnSubmit").click(function () {
            var password = $("#txtPassword").val();
            var confirmPassword = $("#txtConfirmPassword").val();
            if (password != confirmPassword) {
                alert("Passwords do not match.");
                return false;
            }
            return true;
        });
    });
</script>
          </div>
</form:form>


</body>
</html>