<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setAttribute("sidebarType", "recommend");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ODITJI | 콘텐츠 상세</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/layout.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">

<script defer src="${pageContext.request.contextPath}/js/common.js"></script>

</head>
<body>

	<%@ include file="/WEB-INF/views/common/header.jsp"%>

	<main class="layout-container">

		<section class="detail-container">

			<section class="detail-top">

				<div class="detail-poster">

					<img src="https://placehold.co/350x500"
						alt="오징어 게임">

				</div>

				<div class="detail-info">

					<span class="content-type">
						시리즈
					</span>

					<h1 class="detail-title">
						오징어 게임
					</h1>

					<div class="content-meta">

						<span>2025</span>
						<span>•</span>
						<span>18세 이상</span>
						<span>•</span>
						<span>9.3 / 10</span>

					</div>

					<div class="genre-list">

						<span>스릴러</span>
						<span>서바이벌</span>
						<span>드라마</span>

					</div>

					<p class="content-overview">

						456억 원의 상금이 걸린 의문의 서바이벌 게임에
						참가한 사람들이 목숨을 걸고 경쟁하는 이야기.

					</p>

					<div class="detail-actions">

						<button class="watch-btn">
							▶ 지금 시청하기
						</button>

						<button class="wish-btn">
							♡ 찜하기
						</button>

						<a href="${pageContext.request.contextPath}/review/list"
							class="review-btn">
							리뷰 보기
						</a>

					</div>

					<div class="ott-box">

						<div class="ott-label">
							시청 가능 OTT
						</div>

						<div class="ott-list">

							<span class="ott-item">
								Netflix
							</span>

						</div>

					</div>

				</div>

			</section>

			<section class="detail-section">

				<h2>줄거리</h2>

				<p>

					빚에 시달리는 사람들이 거액의 상금을 얻기 위해
					어린 시절 놀이를 기반으로 한 생존 게임에 참가한다.
					게임이 진행될수록 참가자들은 인간성, 욕망, 생존에 대한
					선택의 기로에 놓이게 된다.

				</p>

			</section>

			<section class="detail-section">

				<h2>기본 정보</h2>

				<div class="detail-table">

					<div>
						<strong>제작국</strong>
						<span>대한민국</span>
					</div>

					<div>
						<strong>회차</strong>
						<span>9부작</span>
					</div>

					<div>
						<strong>공개일</strong>
						<span>2025-09-12</span>
					</div>

					<div>
						<strong>연령등급</strong>
						<span>청소년 관람불가</span>
					</div>

				</div>

			</section>

		</section>

		<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>

	</main>

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>

</body>
</html>