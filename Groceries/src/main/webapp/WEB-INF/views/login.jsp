<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 
<title>sign in</title>

<body>

  


<form:form method="POST" action="Signin" commandName="user" >


   
<table>
<div>
<tr>
        <td><label path="email">EMAIL</label></td>
        <td><input path="email" name="mail" type="text" class="form-control" required="true" /></td>
    </tr><br><br><br><h3>
   </div>
   <div>
      <tr>
        <td><label path="password">PASSWORD</label></td>
        <td>	<input path="password"  name="pswd" type="password" class="form-control" required="true" /></td>
        </tr>
   	
   		</div>
   		</table>
           
 <button type="submit" class="btn btn-success">LOGIN</button>
    
</form:form>


</body>
</html>