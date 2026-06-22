<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%	
	request.setAttribute("sidebarType", "admin");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 메인 | ODITJI</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/layout.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/admin.css">

</head>

<body data-context-path="${pageContext.request.contextPath}">

	<%@ include file="/WEB-INF/views/common/header.jsp"%>

	<main class="layout-container">

		<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>

		<section class="content-area">

			<h2 class="admin-title">관리자 대시보드</h2>

			<!-- DASHBOARD GRID -->
			<div class="dashboard-grid">

				<div class="dashboard-card">
					<h3>회원 수</h3>
					<p class="dashboard-value" data-type="member">125</p>
				</div>

				<div class="dashboard-card">
					<h3>콘텐츠 수</h3>
					<p class="dashboard-value" data-type="content">480</p>
				</div>

				<div class="dashboard-card">
					<h3>리뷰 수</h3>
					<p class="dashboard-value" data-type="review">1253</p>
				</div>

			</div>

		</section>

	</main>

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>

	<!-- ADMIN JS -->
	<script src="${pageContext.request.contextPath}/resources/js/admin.js" defer></script>

</body>
</html>