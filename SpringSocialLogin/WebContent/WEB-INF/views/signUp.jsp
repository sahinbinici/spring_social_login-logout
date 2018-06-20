<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page contentType="text/html; charset=ISO-8859-1" language="java" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign up</title>
<style>
.error-message{
	font-size:%90;
	font-style:italic;
	color:red;
}
</style>
</head>
<body>
	<jsp:include page="_menu.jsp"/>
	<h1>Register</h1>
	<c:if test="${not empty myForm.signInProvider}">
	
		<h2 style="color:blue">${myForm.signInprovider}</h2>
	</c:if>
	
	 <form:form modelAttribute="myForm" method="POST">
        <form:hidden path="id" />
        <form:hidden path="signInProvider" />  
        <table border="0">
            <tr>
                <td>User Name</td>
                <td><form:input path="userName" /></td>
                <td><form:errors path="userName" class="error-message" /></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><form:input path="email" /></td>
                <td><form:errors path="email" class="error-message" /></td>
            </tr>
            <tr>
                <td>First Name</td>
                <td><form:input path="firstName" /></td>
                <td><form:errors path="firstName" class="error-message" /></td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td><form:input path="lastName" /></td>
                <td><form:errors path="lastName" class="error-message" /></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><form:input path="password" /></td>
                <td><form:errors path="password" class="error-message" /></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Submit" /></td>
                <td></td>
            </tr>
        </table>
 
 
 
    </form:form>
    <div class="error-message">${errorMessage}</div>
</body>
</html>