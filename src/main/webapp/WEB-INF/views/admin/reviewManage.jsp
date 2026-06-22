<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setAttribute("sidebarType", "admin");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 관리 | ODITJI</title>

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

				<h2 class="admin-title">리뷰 관리</h2>

				<span class="admin-count">총 1,253개</span>

			</div>

			<!-- SEARCH -->
			<div class="admin-search">

				<input type="text"
					name="keyword"
					placeholder="작성자 또는 콘텐츠명 검색">

				<button type="button">검색</button>

			</div>

			<!-- TABLE -->
			<table class="admin-table">

				<thead>
					<tr>
						<th>번호</th>
						<th>작성자</th>
						<th>콘텐츠</th>
						<th>별점</th>
						<th>리뷰내용</th>
						<th>작성일</th>
						<th>관리</th>
					</tr>
				</thead>

				<tbody>

					<tr>
						<td>1</td>
						<td>최민관</td>
						<td>오징어 게임</td>
						<td>★★★★★</td>
						<td>정말 재미있게 봤습니다.</td>
						<td>2026-06-22</td>
						<td>
							<button class="delete-btn"
									data-url="/admin/review/delete?id=1">
								삭제
							</button>
						</td>
					</tr>

					<tr>
						<td>2</td>
						<td>홍길동</td>
						<td>무빙</td>
						<td>★★★★☆</td>
						<td>액션 연출이 좋았습니다.</td>
						<td>2026-06-21</td>
						<td>
							<button class="delete-btn"
									data-url="/admin/review/delete?id=2">
								삭제
							</button>
						</td>
					</tr>

					<tr>
						<td>3</td>
						<td>test01</td>
						<td>더 글로리</td>
						<td>★★★★★</td>
						<td>몰입감이 최고였습니다.</td>
						<td>2026-06-20</td>
						<td>
							<button class="delete-btn"
									data-url="/admin/review/delete?id=3">
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