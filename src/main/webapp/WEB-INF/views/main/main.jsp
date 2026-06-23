<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ODITJI</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/layout.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
</head>

<body>

<%@ include file="/WEB-INF/views/common/header.jsp"%>

<main class="main-container">

	<!-- =========================
	     HERO SECTION
	========================= -->
	<section class="hero-section">

		<div class="hero-content">
			<span class="hero-subtitle">OTT 통합검색 서비스</span>

			<h1>
				보고 싶은 콘텐츠,<br>
				어디 있지?
			</h1>

			<p>
				영화, 드라마, 예능까지<br>
				여러 OTT 플랫폼 정보를 한 번에 확인하세요.
			</p>
		</div>

	</section>

	<!-- =========================
	     OTT SECTION
	========================= -->
	<section class="ott-section">

		<h3>주요 OTT 바로가기</h3>

		<div class="ott-list">
			<a href="https://www.netflix.com" target="_blank">NETFLIX</a>
			<a href="https://www.disneyplus.com" target="_blank">Disney+</a>
			<a href="https://www.tving.com" target="_blank">TVING</a>
			<a href="https://www.wavve.com" target="_blank">Wavve</a>
			<a href="https://watcha.com" target="_blank">WATCHA</a>
		</div>

	</section>

	<!-- =========================
	     TRENDING CONTENT
	========================= -->
	<section class="content-section">

	<div class="section-header">
		<h3>지금 많이 찾는 콘텐츠</h3>
		<a href="${pageContext.request.contextPath}/content/list">더보기 &gt;</a>
	</div>

	<div class="slider-wrapper">

		<button class="slider-btn left" type="button">‹</button>

		<div class="content-slider" id="contentSlider">

			<!-- ===== CARD ===== -->
			<a href="${pageContext.request.contextPath}/content/detail" class="content-link">

				<div class="content-card">

					<div class="poster">
						<img src="https://placehold.co/180x260" alt="포스터">
					</div>

					<div class="card-info">
						<div class="title">콘텐츠 제목</div>
					</div>

					<div class="hover-overlay">
						<div class="hover-desc">
							간단 설명 영역 (줄거리 / 장르 / API 데이터)
						</div>
						<div class="meta">Netflix · 2024</div>
					</div>

				</div>

			</a>

			<!-- ===== CARD ===== -->
			<a href="${pageContext.request.contextPath}/content/detail" class="content-link">
				<div class="content-card">

					<div class="poster">
						<img src="https://placehold.co/180x260" alt="포스터">
					</div>

					<div class="card-info">
						<div class="title">콘텐츠 제목</div>
					</div>

					<div class="hover-overlay">
						<div class="hover-desc">
							간단 설명 영역 (줄거리 / 장르 / API 데이터)
						</div>
						<div class="meta">Netflix · 2024</div>
					</div>

				</div>
			</a>

			<!-- ===== CARD ===== -->
			<a href="${pageContext.request.contextPath}/content/detail" class="content-link">
				<div class="content-card">

					<div class="poster">
						<img src="https://placehold.co/180x260" alt="포스터">
					</div>

					<div class="card-info">
						<div class="title">콘텐츠 제목</div>
					</div>

					<div class="hover-overlay">
						<div class="hover-desc">
							간단 설명 영역 (줄거리 / 장르 / API 데이터)
						</div>
						<div class="meta">Netflix · 2024</div>
					</div>

				</div>
			</a>

			<!-- ===== CARD ===== -->
			<a href="${pageContext.request.contextPath}/content/detail" class="content-link">
				<div class="content-card">

					<div class="poster">
						<img src="https://placehold.co/180x260" alt="포스터">
					</div>

					<div class="card-info">
						<div class="title">콘텐츠 제목</div>
					</div>

					<div class="hover-overlay">
						<div class="hover-desc">
							간단 설명 영역 (줄거리 / 장르 / API 데이터)
						</div>
						<div class="meta">Netflix · 2024</div>
					</div>

				</div>
			</a>

			<!-- ===== CARD ===== -->
			<a href="${pageContext.request.contextPath}/content/detail" class="content-link">
				<div class="content-card">

					<div class="poster">
						<img src="https://placehold.co/180x260" alt="포스터">
					</div>

					<div class="card-info">
						<div class="title">콘텐츠 제목</div>
					</div>

					<div class="hover-overlay">
						<div class="hover-desc">
							간단 설명 영역 (줄거리 / 장르 / API 데이터)
						</div>
						<div class="meta">Netflix · 2024</div>
					</div>

				</div>
			</a>

			<!-- ===== CARD ===== -->
			<a href="${pageContext.request.contextPath}/content/detail" class="content-link">
				<div class="content-card">

					<div class="poster">
						<img src="https://placehold.co/180x260" alt="포스터">
					</div>

					<div class="card-info">
						<div class="title">콘텐츠 제목</div>
					</div>

					<div class="hover-overlay">
						<div class="hover-desc">
							간단 설명 영역 (줄거리 / 장르 / API 데이터)
						</div>
						<div class="meta">Netflix · 2024</div>
					</div>

				</div>
			</a>

			<!-- ===== CARD ===== -->
			<a href="${pageContext.request.contextPath}/content/detail" class="content-link">
				<div class="content-card">

					<div class="poster">
						<img src="https://placehold.co/180x260" alt="포스터">
					</div>

					<div class="card-info">
						<div class="title">콘텐츠 제목</div>
					</div>

					<div class="hover-overlay">
						<div class="hover-desc">
							간단 설명 영역 (줄거리 / 장르 / API 데이터)
						</div>
						<div class="meta">Netflix · 2024</div>
					</div>

				</div>
			</a>

			<!-- ===== CARD ===== -->
			<a href="${pageContext.request.contextPath}/content/detail" class="content-link">
				<div class="content-card">

					<div class="poster">
						<img src="https://placehold.co/180x260" alt="포스터">
					</div>

					<div class="card-info">
						<div class="title">콘텐츠 제목</div>
					</div>

					<div class="hover-overlay">
						<div class="hover-desc">
							간단 설명 영역 (줄거리 / 장르 / API 데이터)
						</div>
						<div class="meta">Netflix · 2024</div>
					</div>

				</div>
			</a>

		</div>

		<button class="slider-btn right" type="button">›</button>

	</div>

</section>

</main>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>

<!-- JS 분리 추천 -->
<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>

</body>
</html>