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
	<div style="padding:5px;border:1px solid;border:#ccc">
	<a href="${pageContext.request.contextPath}/">Home</a>
	||
	<a href="${pageContext.request.contextPath}/userInfo">UserInfo</a>
	<security:authorize access="isAuthenticated()">
	||
	<a href="${pageContext.request.contextPath}/logout">LogOut</a>
	</security:authorize>
	<security:authorize access="!isAuthenticated()">
	||
	<a href="${pageContext.request.contextPath}/login">Login</a>
	</security:authorize>
	
	<c:if test="${not empty pageContext.request.userPrincipal.name}">
		||
		<span>Welcome:${pageContext.request.userPrincipal.name}</span>
			<ul>
				<c:forEach items="${userDetails.authorities}" var="auth">
					<li>
						${auth.authority}
					</li>
				</c:forEach>
			</ul>
		
	</c:if>
	</div>
</body>
</html>