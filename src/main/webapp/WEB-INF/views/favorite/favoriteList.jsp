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

		<div class="favorite-header">

			<div>

				<h2>내 콘텐츠</h2>

				<p>찜한 콘텐츠 12개</p>

			</div>

			<button class="edit-btn">
				편집
			</button>

		</div>

		<div class="favorite-tab">

			<button class="tab-btn active">
				찜한 콘텐츠
			</button>

			<button class="tab-btn">
				최근 검색
			</button>

		</div>

		<div class="favorite-grid">

			<div class="favorite-card">

				<a href="${pageContext.request.contextPath}/content/detail">

					<img src="https://placehold.co/250x350"
						alt="포스터">

				</a>

				<div class="favorite-info">

					<h3>오징어 게임</h3>

					<span class="ott-badge">
						NETFLIX
					</span>

				</div>

			</div>

			<div class="favorite-card">

				<a href="${pageContext.request.contextPath}/content/detail">

					<img src="https://placehold.co/250x350"
						alt="포스터">

				</a>

				<div class="favorite-info">

					<h3>더 글로리</h3>

					<span class="ott-badge">
						NETFLIX
					</span>

				</div>

			</div>

			<div class="favorite-card">

				<a href="${pageContext.request.contextPath}/content/detail">

					<img src="https://placehold.co/250x350"
						alt="포스터">

				</a>

				<div class="favorite-info">

					<h3>무빙</h3>

					<span class="ott-badge disney">
						DISNEY+
					</span>

				</div>

			</div>

			<div class="favorite-card">

				<a href="${pageContext.request.contextPath}/content/detail">

					<img src="https://placehold.co/250x350"
						alt="포스터">

				</a>

				<div class="favorite-info">

					<h3>카지노</h3>

					<span class="ott-badge disney">
						DISNEY+
					</span>

				</div>

			</div>

		</div>

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