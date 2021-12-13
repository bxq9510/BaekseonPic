<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Landed by HTML5 UP</title>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
</head>
<body class="is-preload landing">
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header">
			<h1 id="logo">
				<a href="mainForm" class="icon solid fa-camera">
					BAEKSEON's PIC.</a>
			</h1>
			<nav id="nav">
				<ul>
					<li><a href="mainForm">Home</a></li>
					<li><a href="#">Category</a>
						<ul>
							<li><a href="picList?cat=Music">Music</a></li>
							<li><a href="picList?cat=Food">Food</a></li>
							<li><a href="picList?cat=Fashion">Fashion</a></li>
							<li><a href="picList?cat=Car">Car</a></li>
							<li><a href="picList?cat=Travel">Travel</a></li>
						</ul></li>
					<li><a href="#">Board</a>
						<ul>
							<li><a href="brdList?cat=Free">Free</a></li>
							<li><a href="brdList?cat=Guest">Guest</a></li>
						</ul></li>
					<c:catch>
						<c:choose>
							<c:when test="${empty sessionScope.usrId}">
								<li><a href="logIn" class="button primary">Log In</a></li>
							</c:when>
							<c:otherwise>
								<c:choose>
									<c:when test="${sessionScope.usrId eq 'admin' }">
										<li><a href="#" class="icon solid fa-user-circle">${sessionScope.usrName}(${sessionScope.usrId})</a></li>
										<li><a href="logOut" class="button primary">Log Out</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="#" class="icon solid fa-user-circle">${sessionScope.usrName}(${sessionScope.usrId})</a></li>
										<li><a href="logOut" class="button primary">Log Out</a></li>
									</c:otherwise>
								</c:choose>
							</c:otherwise>
						</c:choose>
					</c:catch>
				</ul>
			</nav>
		</header>

		<!-- Banner -->
		<div id="main" class="wrapper style1">
			<div class="container">
				<h2>New Post</h2>
				<section class="special">
					<form method="post" action="brdSave">
						<input type="hidden" name="id" value=${sessionScope.usrId } /> <input
							type="hidden" name="name" value=${sessionScope.usrName } />
						<div class="row gtr-uniform gtr-50">
							<div class="col-12">
								<select name="cat" id="cat">
									<option value="">- Category -</option>
									<option value="Free">Free</option>
									<option value="Guest">Guest</option>
								</select>
							</div>
							<div class="col-12 col-12-xsmall">
								<input type="text" name="title" id="title" value=""
									placeholder="Title" />
							</div>
							<div class="col-12">
								<textarea name="post" id="post" placeholder="Enter your post"
									rows="6"></textarea>
							</div>
							<div class="col-12">
								<ul class="actions">
									<li><input type="submit" value="Register a Post"
										class="primary" /></li>
									<li><input type="reset" value="Reset" /></li>
								</ul>
							</div>
						</div>
					</form>
				</section>
			</div>
		</div>

		<!-- Footer -->
		<footer id="footer">
			<ul class="icons">
				<li><a href="#" class="icon brands alt fa-twitter"><span
						class="label">Twitter</span></a></li>
				<li><a href="#" class="icon brands alt fa-facebook-f"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon brands alt fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="https://github.com/bxq9510"
					class="icon brands alt fa-github"><span class="label">GitHub</span></a></li>
				<li><a
					href="https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox"
					class="icon solid alt fa-envelope"><span class="label">Email</span></a></li>
			</ul>
			<ul class="copyright">
				<li>&copy; bsy.</li>
			</ul>
		</footer>

	</div>

	<!-- Scripts -->
	<script src="resources/assets/js/jquery.min.js"></script>
	<script src="resources/assets/js/jquery.scrolly.min.js"></script>
	<script src="resources/assets/js/jquery.dropotron.min.js"></script>
	<script src="resources/assets/js/jquery.scrollex.min.js"></script>
	<script src="resources/assets/js/browser.min.js"></script>
	<script src="resources/assets/js/breakpoints.min.js"></script>
	<script src="resources/assets/js/util.js"></script>
	<script src="resources/assets/js/main.js"></script>

</body>
</html>