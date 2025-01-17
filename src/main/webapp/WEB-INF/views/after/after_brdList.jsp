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
<style>
a.tb {
	border: 0;
	color: inherit;
	display: inline-block;
	height: inherit;
	line-height: inherit;
	outline: 0;
}

a.tb:before {
	margin-right: 0.5em;
}

active>a.tb {
	color: #e44c65;
}
</style>
<body class="is-preload landing">
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header">
			<h1 id="logo">
				<a href="after_mainForm" class="icon solid fa-camera">
					BAEKSEON's PIC.</a>
			</h1>
			<nav id="nav">
				<ul>
					<li><a href="after_mainForm">Home</a></li>
					<li><a href="#">Category</a>
						<ul>
							<li><a href="after_picList?cat=Music">Music</a></li>
							<li><a href="after_picList?cat=Food">Food</a></li>
							<li><a href="after_picList?cat=Fashion">Fashion</a></li>
							<li><a href="after_picList?cat=Car">Car</a></li>
							<li><a href="after_picList?cat=Travel">Travel</a></li>
						</ul></li>
					<li><a href="#">Board</a>
						<ul>
							<li><a href="after_brdList?cat=Free">Free</a></li>
							<li><a href="after_brdList?cat=Guest">Guest</a></li>
						</ul></li>
					<li><a href="#" class="icon solid fa-user-circle">${sessionScope.usrName}(${sessionScope.usrId})
					</a></li>
					<li><a href="logOut" class="button primary">Log Out</a></li>
				</ul>
			</nav>
		</header>

		<!-- Banner -->
		<div id="main" class="wrapper style1">
			<div class="container">
				<header>
					<h2>${pagevo.cat} Board</h2>
				</header>
				<section>
					<div class="row gtr-0 gtr-uniform">
						<div class="row col-1 off-10">
							<input type="button" value="New Post"
								onclick="location.href='after_inputBrd'" />
						</div>
					</div>
					<div class="row gtr-0 gtr-uniform">
						<div class="row col-1 off-10">&nbsp;</div>
					</div>
					<div>
						<div class="table-wrapper">
							<table>
								<thead>
									<tr>
										<th>No.</th>
										<th>Title</th>
										<th>Name</th>
										<th>Views</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${brdlist}" var="vo" varStatus="status">
										<tr>
											<td>${status.count + pageVO.perPageNum * (pageVO.page -1)}</td>
											<td><a href="after_brdView?no=${vo.no}" class="tb">${vo.title}</a></td>
											<td><a href='#' class="tb">${vo.name}</a></td>
											<td>${vo.views}</td>
										</tr>
									</c:forEach>
								</tbody>
								<tfoot>
									<tr>
										<td><c:if test="${pageVO.prev}">
												<a
													href="after_brdList?page=${pageVO.startPage-1}&cat=${pageVO.cat}"
													class="tb">[이전]</a>
											</c:if> <c:forEach begin="${pageVO.startPage}"
												end="${pageVO.endPage}" var="idx">
												<a href="after_brdList?page=${idx}&cat=${pageVO.cat}"
													class="tb">${idx}</a>
											</c:forEach> <c:if test="${pageVO.next}">
												<a
													href="after_brdList?page=${pageVO.endPage+1}&cat=${pageVO.cat}"
													class="tb">[Next]</a>
											</c:if></td>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
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