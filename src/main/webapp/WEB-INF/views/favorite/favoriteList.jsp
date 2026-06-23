<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찜 목록 | ODITJI</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/layout.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">

</head>
<body>

<%@ include file="/WEB-INF/views/common/header.jsp"%>

<main class="favorite-container">

	<!-- ===== HEADER ===== -->
	<div class="favorite-header">

		<div>
			<h2>내 콘텐츠</h2>
			<p>찜한 콘텐츠 12개</p>
		</div>

		<button class="edit-btn">편집</button>

	</div>

	<!-- ===== TAB ===== -->
	<div class="favorite-tab">
		<button class="tab-btn active">찜한 콘텐츠</button>
		<button class="tab-btn">최근 검색</button>
	</div>

	<div class="favorite-grid">

		<!-- CARD -->
		<a href="${pageContext.request.contextPath}/content/detail" class="content-link">
			<div class="content-card">

				<div class="poster">
					<img src="https://placehold.co/180x260" alt="포스터">
				</div>

				<div class="card-info">
					<div class="title">오징어 게임</div>
				</div>

				<div class="hover-overlay">
					<div class="hover-desc">
						서바이벌 스릴러 / 넷플릭스 오리지널
					</div>
					<div class="meta">Netflix · 2021</div>
				</div>

			</div>
		</a>

		<!-- CARD -->
		<a href="${pageContext.request.contextPath}/content/detail" class="content-link">
			<div class="content-card">

				<div class="poster">
					<img src="https://placehold.co/180x260" alt="포스터">
				</div>

				<div class="card-info">
					<div class="title">더 글로리</div>
				</div>

				<div class="hover-overlay">
					<div class="hover-desc">
						복수 드라마 / 학교 폭력 기반 스토리
					</div>
					<div class="meta">Netflix · 2023</div>
				</div>

			</div>
		</a>

		<!-- CARD -->
		<a href="${pageContext.request.contextPath}/content/detail" class="content-link">
			<div class="content-card">

				<div class="poster">
					<img src="https://placehold.co/180x260" alt="포스터">
				</div>

				<div class="card-info">
					<div class="title">무빙</div>
				</div>

				<div class="hover-overlay">
					<div class="hover-desc">
						초능력 액션 드라마
					</div>
					<div class="meta">Disney+ · 2023</div>
				</div>

			</div>
		</a>

		<!-- CARD -->
		<a href="${pageContext.request.contextPath}/content/detail" class="content-link">
			<div class="content-card">

				<div class="poster">
					<img src="https://placehold.co/180x260" alt="포스터">
				</div>

				<div class="card-info">
					<div class="title">카지노</div>
				</div>

				<div class="hover-overlay">
					<div class="hover-desc">
						범죄 / 느와르 드라마
					</div>
					<div class="meta">Disney+ · 2022</div>
				</div>

			</div>
		</a>

	</div>

	<!-- ===== PAGINATION ===== -->
	<div class="pagination">
		<a href="#" class="active-page">1</a>
		<a href="#">2</a>
		<a href="#">3</a>
		<a href="#">></a>
	</div>

</main>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>

</body>
</html>