<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>Spring MVC Form Handling</title>
</head>
<body>

<h2>Student Information</h2>
<form:form method="POST" action="/HelloWeb/addStudent">
   <table>
    <tr>
        <td><form:label path="FirstName">FirstName</form:label></td>
        <td><form:input path="FirstName" /></td>
    </tr>
    <tr>
        <td><form:label path="LastName">LastName</form:label></td>
        <td><form:input path="LastName" /></td>
    </tr>
     <tr>
        <td><form:label path="email">email</form:label></td>
        <td><form:input path="email" /></td>
    </tr>
   
    <tr>
        <td><form:label path="id">id</form:label></td>
        <td><form:input path="id" /></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="Submit"/>
        </td>
    </tr>
</table>  
</form:form>
</body>
</html>