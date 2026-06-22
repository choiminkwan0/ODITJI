<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 | ODITJI</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/layout.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">

</head>
<body>

	<%@ include file="/WEB-INF/views/common/header.jsp"%>

	<main class="mypage-container">

		<!-- 회원 정보 -->
		<section class="mypage-section">

			<div class="section-header">
				<h2>내 정보</h2>
			</div>

			<div class="member-info">

				<div class="info-row">
					<span class="label">아이디</span>
					<span class="value">${loginMember.memberId}</span>
				</div>

				<div class="info-row">
					<span class="label">닉네임</span>
					<span class="value">${loginMember.memberNickname}</span>
				</div>

				<div class="info-row">
					<span class="label">이메일</span>
					<span class="value">${loginMember.memberEmail}</span>
				</div>

				<div class="mypage-btn-area">
					<button type="button" id="memberUpdateBtn">
						회원정보 수정
					</button>

					<button type="button" id="ottUpdateBtn">
						OTT 정보 수정
					</button>
				</div>

			</div>

		</section>


		<!-- 사용중인 OTT -->
		<section class="mypage-section">

			<div class="section-header">
				<h2>사용중인 OTT</h2>
			</div>

			<div class="ott-list">

				<div class="ott-item">Netflix</div>

				<div class="ott-item">Disney+</div>

				<div class="ott-item">TVING</div>

				<div class="ott-item">WATCHA</div>

			</div>

		</section>


		<!-- 찜한 콘텐츠 -->
		<section class="mypage-section">

			<div class="section-header">

				<h2>내가 찜한 콘텐츠</h2>

				<a href="${pageContext.request.contextPath}/favorite/list">
					더보기
				</a>

			</div>

			<div class="favorite-content-grid">

				<div class="content-card">

					<a href="#">
						<img src="https://placehold.co/250x350"
							alt="포스터">
					</a>

					<h3>콘텐츠 제목</h3>

				</div>

				<div class="content-card">

					<a href="#">
						<img src="https://placehold.co/250x350"
							alt="포스터">
					</a>

					<h3>콘텐츠 제목</h3>

				</div>

				<div class="content-card">

					<a href="#">
						<img src="https://placehold.co/250x350"
							alt="포스터">
					</a>

					<h3>콘텐츠 제목</h3>

				</div>

				<div class="content-card">

					<a href="#">
						<img src="https://placehold.co/250x350"
							alt="포스터">
					</a>

					<h3>콘텐츠 제목</h3>

				</div>

			</div>

		</section>

	</main>


	<!-- 회원정보 수정 팝업 -->
	<div id="memberModal" class="modal">

		<div class="modal-content">

			<h2>회원정보 수정</h2>

			<form>

				<input type="text" placeholder="아이디">

				<input type="text" placeholder="닉네임">

				<input type="email" placeholder="이메일">

				<div class="modal-btn-area">

					<button type="submit">
						수정완료
					</button>

					<button type="button">
						취소
					</button>

				</div>

			</form>

		</div>

	</div>


	<!-- OTT 수정 팝업 -->
	<div id="ottModal" class="modal">

		<div class="modal-content">

			<h2>OTT 정보 수정</h2>

			<form>

				<label>
					<input type="checkbox">
					Netflix
				</label>

				<label>
					<input type="checkbox">
					Disney+
				</label>

				<label>
					<input type="checkbox">
					TVING
				</label>

				<label>
					<input type="checkbox">
					WATCHA
				</label>

				<label>
					<input type="checkbox">
					Coupang Play
				</label>

				<div class="modal-btn-area">

					<button type="submit">
						수정완료
					</button>

					<button type="button">
						취소
					</button>

				</div>

			</form>

		</div>

	</div>

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>

</body>
</html>