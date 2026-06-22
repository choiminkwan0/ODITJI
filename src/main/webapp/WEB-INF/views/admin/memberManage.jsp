<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setAttribute("sidebarType", "admin");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 | ODITJI</title>

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

			<!-- HEADER -->
			<div class="admin-page-header">

				<h2 class="admin-title">회원 관리</h2>

				<span class="admin-count">총 125명</span>

			</div>

			<!-- SEARCH -->
			<div class="admin-search">

				<input type="text"
					name="keyword"
					placeholder="아이디 또는 닉네임 검색">

				<button type="button">검색</button>

			</div>

			<!-- TABLE -->
			<table class="admin-table">

				<thead>
					<tr>
						<th>번호</th>
						<th>아이디</th>
						<th>닉네임</th>
						<th>이메일</th>
						<th>가입일</th>
						<th>상태</th>
						<th>관리</th>
					</tr>
				</thead>

				<tbody>

					<tr>
						<td>1</td>
						<td>admin</td>
						<td>관리자</td>
						<td>admin@oditji.com</td>
						<td>2026-06-01</td>
						<td>정상</td>
						<td>
							<button class="edit-btn"
									data-url="/admin/member/edit?id=1">
								수정
							</button>

							<button class="delete-btn"
									data-url="/admin/member/delete?id=1">
								삭제
							</button>
						</td>
					</tr>

					<tr>
						<td>2</td>
						<td>min123</td>
						<td>최민관</td>
						<td>test@test.com</td>
						<td>2026-06-10</td>
						<td>정상</td>
						<td>
							<button class="edit-btn"
									data-url="/admin/member/edit?id=2">
								수정
							</button>

							<button class="delete-btn"
									data-url="/admin/member/delete?id=2">
								삭제
							</button>
						</td>
					</tr>

				</tbody>

			</table>

		</section>

	</main>

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>

	<!-- ADMIN JS -->
	<script src="${pageContext.request.contextPath}/resources/js/admin.js" defer></script>

</body>
</html>