<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib uri="http://www.springframework.org/security/tags"
    prefix="security"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	 <jsp:include page="_menu.jsp"/>
   
    <h2>Home Page</h2>
    
    <c:if test="${empty pageContext.request.userPrincipal.name}">
       Click to 'User Info' to show user info (It will redirect to login page)
    </c:if>
</body>
</html>