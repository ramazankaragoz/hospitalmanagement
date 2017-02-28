<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<div class="container-fluid">
	<div class="navbar-header">
		<a class="navbar-brand" href="#">Dashboard</a>
	</div>

	<sec:authorize access="isAuthenticated()">
		
		<div class="collapse navbar-collapse">

			<form id="logout" action="${pageContext.request.contextPath}/logout"
				method="post">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
			
			<ul class="nav navbar-nav navbar-right">
				<li><a
					href="javascript:document.getElementById('logout').submit()">
						${pageContext.request.userPrincipal.name} <b>Log out</b> </a></li>
			</ul>
		</div>
	</sec:authorize>
</div>