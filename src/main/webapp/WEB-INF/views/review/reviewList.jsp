<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 목록 | ODITJI</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/layout.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">

</head>
<body>

	<%@ include file="/WEB-INF/views/common/header.jsp"%>

	<main class="review-container">

		<div class="review-header">

			<a href="${pageContext.request.contextPath}/content/detail"
				class="back-btn">
				← 콘텐츠 상세로
			</a>

			<h2>오징어 게임 리뷰</h2>

			<a href="${pageContext.request.contextPath}/review/form"
				class="write-btn">
				리뷰 작성
			</a>

		</div>

		<div class="review-sort">

			<select>

				<option>최신순</option>
				<option>별점 높은순</option>
				<option>별점 낮은순</option>

			</select>

		</div>

		<div class="review-list">

			<div class="review-card">

				<div class="review-top">

					<span class="review-star">
						★★★★★
					</span>

					<span class="review-user">
						최민관
					</span>

				</div>

				<p class="review-content">
					정말 재미있게 봤습니다.
					시즌1이 가장 인상적이었습니다.
				</p>

				<div class="review-bottom">

					<span>👍 15</span>
					<span>💬 3</span>

				</div>

			</div>

			<div class="review-card">

				<div class="review-top">

					<span class="review-star">
						★★★★☆
					</span>

					<span class="review-user">
						홍길동
					</span>

				</div>

				<p class="review-content">
					전반적으로 만족합니다.
				</p>

				<div class="review-bottom">

					<span>👍 8</span>
					<span>💬 1</span>

				</div>

			</div>

		</div>

	</main>

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>

</body>
</html>