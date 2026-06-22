<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setAttribute("sidebarType", "admin");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>콘텐츠 관리 | ODITJI</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/layout.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/admin.css">

</head>
<body>

	<%@ include file="/WEB-INF/views/common/header.jsp"%>

	<main class="layout-container">

		<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>

		<section class="content-area">

			<div class="admin-page-header">

				<h2 class="admin-title">
					콘텐츠 관리
				</h2>

				<div>

					<span class="admin-count">
						총 480개
					</span>

					<button class="add-btn">
						콘텐츠 등록
					</button>

				</div>

			</div>

			<div class="admin-search">

				<input type="text"
					placeholder="콘텐츠명 검색">

				<button>
					검색
				</button>

			</div>

			<table class="admin-table">

				<thead>

					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>구분</th>
						<th>장르</th>
						<th>OTT</th>
						<th>공개일</th>
						<th>관리</th>
					</tr>

				</thead>

				<tbody>

					<tr>
						<td>1</td>
						<td>오징어 게임</td>
						<td>시리즈</td>
						<td>스릴러</td>
						<td>Netflix</td>
						<td>2025-09-12</td>
						<td>
							<button class="edit-btn">
								수정
							</button>

							<button class="delete-btn">
								삭제
							</button>
						</td>
					</tr>

					<tr>
						<td>2</td>
						<td>무빙</td>
						<td>시리즈</td>
						<td>액션</td>
						<td>Disney+</td>
						<td>2023-08-09</td>
						<td>
							<button class="edit-btn">
								수정
							</button>

							<button class="delete-btn">
								삭제
							</button>
						</td>
					</tr>

					<tr>
						<td>3</td>
						<td>더 글로리</td>
						<td>시리즈</td>
						<td>드라마</td>
						<td>Netflix</td>
						<td>2022-12-30</td>
						<td>
							<button class="edit-btn">
								수정
							</button>

							<button class="delete-btn">
								삭제
							</button>
						</td>
					</tr>

				</tbody>

			</table>

		</section>

	</main>

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>

</body>
</html>