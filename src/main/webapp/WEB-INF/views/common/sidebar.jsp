<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String sidebarType = (String) request.getAttribute("sidebarType");
%>

<div class="sidebar">

	<% if("filter".equals(sidebarType)) { %>

		<h3 class="sidebar-title">필터</h3>

		<div class="sidebar-section">

			<h4>구분</h4>

			<label><input type="checkbox"> 전체</label>
			<label><input type="checkbox"> 영화</label>
			<label><input type="checkbox"> 시리즈</label>

		</div>

		<div class="sidebar-section">

			<h4>OTT</h4>

			<label><input type="checkbox"> Netflix</label>
			<label><input type="checkbox"> Disney+</label>
			<label><input type="checkbox"> Tving</label>
			<label><input type="checkbox"> Wavve</label>

		</div>

		<div class="sidebar-section">

			<h4>장르</h4>

			<label><input type="checkbox"> 액션</label>
			<label><input type="checkbox"> 코미디</label>
			<label><input type="checkbox"> 스릴러</label>
			<label><input type="checkbox"> 로맨스</label>

		</div>

		<button class="sidebar-btn">
			필터 초기화
		</button>

	<% } %>


	<% if("recommend".equals(sidebarType)) { %>

		<h3 class="sidebar-title">추천 콘텐츠</h3>

		<ul class="recommend-list">

			<li><a href="#">오징어 게임</a></li>
			<li><a href="#">무빙</a></li>
			<li><a href="#">더 글로리</a></li>
			<li><a href="#">카지노</a></li>
			<li><a href="#">킹덤</a></li>

		</ul>

	<% } %>


	<% if("admin".equals(sidebarType)) { %>

		<h3 class="sidebar-title">관리자 메뉴</h3>

		<ul class="admin-menu">

			<li>
				<a href="${pageContext.request.contextPath}/admin/main">
					대시보드
				</a>
			</li>

			<li>
				<a href="${pageContext.request.contextPath}/admin/member/list">
					회원 관리
				</a>
			</li>

			<li>
				<a href="${pageContext.request.contextPath}/admin/content/list">
					콘텐츠 관리
				</a>
			</li>

			<li>
				<a href="${pageContext.request.contextPath}/admin/ott/list">
					OTT 관리
				</a>
			</li>

			<li>
				<a href="${pageContext.request.contextPath}/admin/review/list">
					리뷰 관리
				</a>
			</li>

		</ul>

	<% } %>

</div>