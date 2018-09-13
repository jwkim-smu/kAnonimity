<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Resume - Start Bootstrap Theme</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i"
	rel="stylesheet">
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/resume.min.css" rel="stylesheet">
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>

	<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top"
		id="sideNav">
		<a class="navbar-brand js-scroll-trigger" href="#page-top"> <span
			class="d-block d-lg-none">Data Privacy Project</span> <span
			class="d-none d-lg-block"> <!-- <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="img/profile.jpg" alt=""> -->
		</span>
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="main.jsp">Start</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="dataInput.jsp">Data Input</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="quasiIdentifier.jsp">Quasi-Identifier</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="taxonomyTree.jsp">Taxonomy tree</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="example.jsp">Example</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="review.jsp">Review</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="download.jsp">Download</a></li>
			</ul>
		</div>
	</nav>

	<hr class="m-0">

	<section class="resume-section p-3 p-lg-5 d-flex flex-column"
		id="Taxonomy">
		<div class="row">
			<div class="col-xs-12 col-md-6">
				<h2>Taxonomy Tree</h2>
				<form action="example.jsp" method="post">
					<textarea name="taxonomy" cols="50" rows="15"></textarea>
					<br> <input type="submit" value="Sampling Start!">
				</form>
			</div>

			<div class="col-xs-3 col-md-6">
				<h2>Data Example</h2>
				<img
					src="C:\\Users\\Taesu Kim\\Desktop\\태수\\웹서버\\LG_PROJECT\\kAnonimity\\WebContent\img\\taxonomy.png"
					class="img-responsive"
					style="margin: 0 auto; object-fit: container">
			</div>
		</div>
	</section>

</body>

</html>