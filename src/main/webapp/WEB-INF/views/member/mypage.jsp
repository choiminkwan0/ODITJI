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

<script defer src="${pageContext.request.contextPath}/js/common.js"></script>

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

		<div class="modal-content member-modal">

			<h2>회원정보 수정</h2>

			<form class="member-update-form">

				<!-- 이름 -->
				<div class="input-group">
					<label>이름</label>
					<input type="text"
						name="memberName"
						value="${loginMember.memberName}"
						placeholder="이름 입력">
				</div>

				<!-- 아이디 -->
				<div class="input-group">
					<label>아이디</label>
					<input type="text"
						name="memberId"
						value="${loginMember.memberId}"
						readonly>
				</div>

				<!-- 비밀번호 -->
				<div class="input-group">
					<label>새 비밀번호</label>
					<input type="password"
						name="memberPw"
						placeholder="새 비밀번호 입력">
				</div>

				<!-- 비밀번호 확인 -->
				<div class="input-group">
					<label>비밀번호 확인</label>
					<input type="password"
						name="memberPwCheck"
						placeholder="비밀번호 확인">
				</div>

				<!-- 닉네임 -->
				<div class="input-group">

					<label>닉네임</label>

					<div class="dup-box">

						<input type="text"
							name="memberNickname"
							value="${loginMember.memberNickname}"
							placeholder="닉네임 입력">

						<button type="button"
								class="dup-btn">
							중복확인
						</button>

					</div>

				</div>

				<!-- 연락처 -->
				<div class="input-group">
					<label>연락처</label>
					<input type="text"
						name="memberPhone"
						value="${loginMember.memberPhone}"
						placeholder="연락처 입력">
				</div>

				<!-- 이메일 -->
				<div class="input-group">
					<label>이메일</label>
					<input type="email"
						name="memberEmail"
						value="${loginMember.memberEmail}"
						placeholder="이메일 입력">
				</div>

				<!-- 프로필 이미지 -->
				<div class="input-group">

					<label>프로필 이미지</label>

					<div class="file-box">

						<input type="file"
							name="profileImage"
							id="updateProfileImage"
							accept="image/*">

						<label for="updateProfileImage"
							class="file-btn">
							파일 선택
						</label>

						<span class="file-name">
							선택된 파일 없음
						</span>

					</div>

				</div>

				<div class="modal-btn-area">

					<button type="submit">
						수정완료
					</button>

					<button type="button"
							class="close-modal">
						취소
					</button>

				</div>

			</form>

		</div>

	</div>


	<!-- OTT 수정 팝업 -->
	<div id="ottModal" class="modal">

		<div class="modal-content ott-modal">

			<h2>OTT 정보 수정</h2>

			<form class="ott-form">

				<div class="ott-grid">

					<label class="ott-card">
						<input type="checkbox" name="ottList" value="NETFLIX">
						<span>NETFLIX</span>
					</label>

					<label class="ott-card">
						<input type="checkbox" name="ottList" value="DISNEY">
						<span>Disney+</span>
					</label>

					<label class="ott-card">
						<input type="checkbox" name="ottList" value="TVING">
						<span>TVING</span>
					</label>

					<label class="ott-card">
						<input type="checkbox" name="ottList" value="WAVVE">
						<span>WAVVE</span>
					</label>

					<label class="ott-card">
						<input type="checkbox" name="ottList" value="WATCHA">
						<span>WATCHA</span>
					</label>

					<label class="ott-card">
						<input type="checkbox" name="ottList" value="COUPANG">
						<span>COUPANG PLAY</span>
					</label>

				</div>

				<div class="modal-btn-area">

					<button type="submit">
						수정완료
					</button>

					<button type="button" 
							class="close-modal">
						취소
					</button>

				</div>

			</form>

		</div>

	</div>

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>

</body>
</html>