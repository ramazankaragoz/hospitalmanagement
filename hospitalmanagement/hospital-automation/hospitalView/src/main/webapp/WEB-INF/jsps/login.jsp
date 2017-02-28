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
					<form action="${pageContext.request.contextPath}/login"
						method="POST" name="f" >
						
						 <c:if test="${param.error != null}">
                        	<br/>
							<p class="error">Login failed.Check that your username and password are correct.</p>
						</c:if>
						
						<div class="group">
							<label for="user" class="label">Email</label> <input  id="user"
								type="text" class="input" name="username"/>
						</div>
						<div class="group">
							<label for="pass" class="label">Password</label> <input  id="pass"
								type="password" class="input" type="password" name="password"/>
						</div>
						<div class="group">
							<input id="check" type="checkbox" class="check" checked>
							<label for="check"><span class="icon"></span> Keep me
								Signed in</label>
						</div>
						<div class="group">
							<input type="submit" class="button" name="submit" value="Sign In">
							<input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}">
						</div>
						<div class="hr"></div>
						<div class="foot-lnk">
							<a href="#forgot">Forgot Password?</a>
						</div>
						<div class="foot-lnk-register">
							<a href="${pageContext.request.contextPath}/register">Register</a>
						</div>
					</form>
				</div>
			</div>
		</div>
</body>
</html>