<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<header class="header">

	<div class="header-container">

		<!-- 로고 -->
		<div class="logo">
			<a href="${pageContext.request.contextPath}/">ODITJI</a>
		</div>

		<!-- 메뉴 -->
		<nav class="nav-menu">
			<ul>
				<li><a href="${pageContext.request.contextPath}/">홈</a></li>
				<li><a href="${pageContext.request.contextPath}/content/contentList">전체</a></li>
				<li><a href="${pageContext.request.contextPath}/content/contentList?type=movie">영화</a></li>
				<li><a href="${pageContext.request.contextPath}/content/contentList?type=series">시리즈</a></li>
			</ul>
		</nav>

		<!-- 검색 -->
		<div class="search-area">
			<form action="${pageContext.request.contextPath}/search" method="get">

				<input type="text" name="keyword" placeholder="검색">

				<button type="submit" class="search-btn">
					<img src="${pageContext.request.contextPath}/images/search.svg"
					     class="search-icon"
					     alt="검색">
				</button>

			</form>
		</div>

		<!-- 비로그인 영역 -->
		<div class="auth-links ${empty sessionScope.loginUser ? '' : 'hidden'}">

			<a href="${pageContext.request.contextPath}/member/join">회원가입</a>
			<a href="${pageContext.request.contextPath}/member/login">로그인</a>

		</div>

		<!-- 로그인 영역 -->
		<div class="${not empty sessionScope.loginUser ? '' : 'hidden'}">

			<a href="${pageContext.request.contextPath}/member/mypage">
				<img src="${pageContext.request.contextPath}/images/profile.svg"
				     class="icon-profile"
				     alt="프로필">
			</a>

			<!-- 관리자 -->
			<div class="${sessionScope.role eq 'ADMIN' ? '' : 'hidden'}">
				<a href="${pageContext.request.contextPath}/admin/main">
					<img src="${pageContext.request.contextPath}/images/admin.svg"
					     class="icon-admin"
					     alt="관리자">
				</a>
			</div>

		</div>

	</div>

</header>