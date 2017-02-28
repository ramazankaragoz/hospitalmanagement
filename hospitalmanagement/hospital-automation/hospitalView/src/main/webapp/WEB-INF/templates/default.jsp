<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="icon" type="image/png" href="assets/img/favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title><tiles:getAsString name="title" /></title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />


<link
	href="${pageContext.request.contextPath}/static/css/bootstrap.min.css"
	rel="stylesheet" />

<link
	href="${pageContext.request.contextPath}/static/css/light-bootstrap-dashboard.css"
	rel="stylesheet" />

</head>
<body>

	<div class="wrapper">
		<div class="sidebar">
			<tiles:insertAttribute name="menu" />
		</div>

		<div class="main-panel">
			<nav class="navbar navbar-default navbar-fixed">
				<tiles:insertAttribute name="header" />
			</nav>


			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<tiles:insertAttribute name="body" />
					</div>
				</div>
			</div>


			<footer class="footer">
				<tiles:insertAttribute name="footer" />
			</footer>

		</div>
	</div>


</body>

</html>
