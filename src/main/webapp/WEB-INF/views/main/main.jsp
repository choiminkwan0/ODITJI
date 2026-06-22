<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ODITJI</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/layout.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">

</head>
<body>

	<%@ include file="/WEB-INF/views/common/header.jsp"%>

	<main class="main-container">

		<!-- HERO -->
		<section class="hero-section">

			<div class="hero-content">

				<span class="hero-subtitle">
					OTT 통합검색 서비스
				</span>

				<h1>
					보고 싶은 콘텐츠,<br>
					어디 있지?
				</h1>

				<p>
					영화, 드라마, 예능까지<br>
					여러 OTT 플랫폼에서 제공하는 콘텐츠 정보를
					한 번에 확인하세요.
				</p>

			</div>

		</section>

		<!-- OTT -->
		<section class="ott-section">

			<h3>주요 OTT 바로가기</h3>

			<div class="ott-list">
				<a href="https://www.netflix.com" target="_blank" rel="noopener noreferrer">NETFLIX</a>

				<a href="https://www.disneyplus.com" target="_blank" rel="noopener noreferrer">Disney+</a>

				<a href="https://www.tving.com" target="_blank" rel="noopener noreferrer">TVING</a>

				<a href="https://www.wavve.com" target="_blank" rel="noopener noreferrer">Wavve</a>

				<a href="https://watcha.com" target="_blank" rel="noopener noreferrer">WATCHA</a>
			</div>

		</section>

		<!-- CONTENT -->
		<section class="content-section">

			<div class="section-header">

				<h3>지금 많이 찾는 콘텐츠</h3>

				<a href="${pageContext.request.contextPath}/content/contentList">
					더보기 >
				</a>

			</div>

			<div class="content-slider">

				<a href="${pageContext.request.contextPath}/content/contentDetail" class="content-link">
					<div class="content-card">
						<img src="https://placehold.co/180x260" alt="콘텐츠">
						<p>눈물의 여왕</p>
					</div>
				</a>

				<a href="${pageContext.request.contextPath}/content/contentDetail" class="content-link">
					<div class="content-card">
						<img src="https://placehold.co/180x260" alt="콘텐츠">
						<p>선재 업고 튀어</p>
					</div>
				</a>

				<a href="${pageContext.request.contextPath}/content/contentDetail" class="content-link">
					<div class="content-card">
						<img src="https://placehold.co/180x260" alt="콘텐츠">
						<p>파묘</p>
					</div>
				</a>

				<a href="${pageContext.request.contextPath}/content/contentDetail" class="content-link">
					<div class="content-card">
						<img src="https://placehold.co/180x260" alt="콘텐츠">
						<p>범죄도시4</p>
					</div>
				</a>

				<a href="${pageContext.request.contextPath}/content/contentDetail" class="content-link">
					<div class="content-card">
						<img src="https://placehold.co/180x260" alt="콘텐츠">
						<p>더 글로리</p>
					</div>
				</a>

				<a href="${pageContext.request.contextPath}/content/contentDetail" class="content-link">
					<div class="content-card">
						<img src="https://placehold.co/180x260" alt="콘텐츠">
						<p>오징어 게임</p>
					</div>
				</a>

			</div>

		</section>

	</main>

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>

</body>
</html>