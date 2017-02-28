<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<link rel='stylesheet prefetch'
	href='http://fonts.googleapis.com/css?family=Open+Sans:600'>

<link href="${pageContext.request.contextPath}/static/css/style.css"
	rel="stylesheet" type="text/css" />

</head>

<body onload='document.f.username.focus();'>


	<div class="login-wrap">
		<div class="login-html">
			<div class="login-form">
					<sf:form commandName="user"  method="POST" action="${pageContext.request.contextPath}/register">
						<div class="header-info">
							${registration}
						</div>
						<div class="group">
							<label class="label">Name</label> <sf:input path="name" id="name" type="text"
								class="input"/><sf:errors path="name"></sf:errors>
						</div>
						<div class="group">
							<label class="label">Surname</label> <sf:input path="surname" id="surname"
								type="text" class="input"/><sf:errors path="surname"></sf:errors>
						</div>
						<div class="group">
							<label class="label">Address</label> <sf:input path="address" id="address"
								type="text" class="input"/><sf:errors path="address"></sf:errors>
						</div>
						<div class="group">
							<label for="email" class="label">Email Address</label> <sf:input path="email" id="email"
								type="text" class="input"/><sf:errors path="email"></sf:errors>
						</div>
						<div class="group">
							<label for="pass" class="label">Password</label> <sf:input path="password" id="pass"
								type="password" class="input" data-type="password"/><sf:errors path="password"></sf:errors>
						</div>
						<div class="group">
							<label for="pass" class="label">Repeat Password</label> <input
								id="pass" type="password" class="input" type="password">
						</div>
						<div class="group">
							<input type="submit" class="button" value="Sign Up">
						</div>
						<div class="foot-lnk-login">
							<a href="${pageContext.request.contextPath}/login">Return Login Page</a>
						</div>
					</sf:form>
				</div>
			</div>
		</div>
		
</body>
</html>