<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 | ODITJI</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/layout.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">

</head>
<body>

	<%@ include file="/WEB-INF/views/common/header.jsp"%>

	<div class="join-container">

		<div class="join-box">

			<h2>회원가입</h2>

			<form action="${pageContext.request.contextPath}/member/join" method="post">

				<div class="input-group">
					<label>아이디</label>
					<input type="text" name="memberId" placeholder="아이디 입력">
				</div>

				<div class="input-group">
					<label>비밀번호</label>
					<input type="password" name="memberPwd" placeholder="비밀번호 입력">
				</div>

				<div class="input-group">
					<label>비밀번호 확인</label>
					<input type="password" name="memberPwdCheck" placeholder="비밀번호 재입력">
				</div>

				<div class="input-group">
					<label>닉네임</label>
					<input type="text" name="nickname" placeholder="닉네임 입력">
				</div>

				<div class="input-group">
					<label>연락처</label>
					<input type="text" name="phone" placeholder="010-0000-0000">
				</div>

				<div class="input-group">
					<label>이메일</label>
					<input type="email" name="email" placeholder="example@email.com">
				</div>

				<div class="input-group">
					<label>사용 중인 OTT</label>

					<div class="ott-check-group">

						<label><input type="checkbox" name="ottList" value="NETFLIX"> NETFLIX</label>
						<label><input type="checkbox" name="ottList" value="DISNEY"> Disney+</label>
						<label><input type="checkbox" name="ottList" value="TVING"> TVING</label>
						<label><input type="checkbox" name="ottList" value="WAVVE"> wavve</label>
						<label><input type="checkbox" name="ottList" value="WATCHA"> WATCHA</label>
						<label><input type="checkbox" name="ottList" value="COUPANG"> 쿠팡플레이</label>

					</div>

				</div>

				<button type="submit" class="join-btn">
					회원가입
				</button>

			</form>

			<div class="login-area">

				<p>이미 회원이신가요?</p>

				<a href="${pageContext.request.contextPath}/member/login">
					로그인
				</a>

			</div>

		</div>

	</div>

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>

</body>
</html>