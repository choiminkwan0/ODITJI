<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 | ODITJI</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/layout.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">

<script defer src="${pageContext.request.contextPath}/js/common.js"></script>
</head>

<body data-context-path="${pageContext.request.contextPath}">

<%@ include file="/WEB-INF/views/common/header.jsp"%>

<main class="login-container">

	<div class="login-box">

		<h2>로그인</h2>

		<form action="${pageContext.request.contextPath}/member/login"
			  method="post"
			  onsubmit="return Auth.validateLogin(this)">

			<!-- ID -->
			<div class="input-group">
				<label for="memberId">아이디</label>
				<input type="text"
					   id="memberId"
					   name="memberId"
					   placeholder="아이디 입력">
			</div>

			<!-- PASSWORD -->
			<div class="input-group">
				<label for="memberPw">비밀번호</label>
				<input type="password"
					   id="memberPw"
					   name="memberPw"
					   placeholder="비밀번호 입력">
			</div>

			<!-- LOGIN BTN -->
			<button type="submit" class="login-btn">
				로그인
			</button>

		</form>

		<!-- KAKAO -->
		<button type="button" class="kakao-btn">
			카카오 로그인
		</button>

		<!-- FIND AREA -->
		<div class="find-area">
			<a href="#">아이디 찾기</a>
			<span>|</span>
			<a href="#">비밀번호 찾기</a>
		</div>

		<!-- JOIN AREA -->
		<div class="join-area">
			<p>아직 회원이 아니신가요?</p>
			<a href="${pageContext.request.contextPath}/member/join">
				회원가입
			</a>
		</div>

	</div>

</main>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>

</body>
</html>