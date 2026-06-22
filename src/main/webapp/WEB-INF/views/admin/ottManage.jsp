<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setAttribute("sidebarType", "admin");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OTT 관리 | ODITJI</title>

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
					OTT 관리
				</h2>

				<div>

					<span class="admin-count">
						총 6개
					</span>

					<button class="add-btn">
						OTT 등록
					</button>

				</div>

			</div>

			<div class="admin-search">

				<input type="text"
					placeholder="OTT명 검색">

				<button>
					검색
				</button>

			</div>

			<table class="admin-table">

				<thead>

					<tr>
						<th>번호</th>
						<th>OTT명</th>
						<th>공식 URL</th>
						<th>상태</th>
						<th>관리</th>
					</tr>

				</thead>

				<tbody>

					<tr>
						<td>1</td>
						<td>Netflix</td>
						<td>https://www.netflix.com</td>
						<td>사용중</td>
						<td>
							<button class="edit-btn">수정</button>
							<button class="delete-btn">삭제</button>
						</td>
					</tr>

					<tr>
						<td>2</td>
						<td>Disney+</td>
						<td>https://www.disneyplus.com</td>
						<td>사용중</td>
						<td>
							<button class="edit-btn">수정</button>
							<button class="delete-btn">삭제</button>
						</td>
					</tr>

					<tr>
						<td>3</td>
						<td>TVING</td>
						<td>https://www.tving.com</td>
						<td>사용중</td>
						<td>
							<button class="edit-btn">수정</button>
							<button class="delete-btn">삭제</button>
						</td>
					</tr>

					<tr>
						<td>4</td>
						<td>WATCHA</td>
						<td>https://watcha.com</td>
						<td>사용중</td>
						<td>
							<button class="edit-btn">수정</button>
							<button class="delete-btn">삭제</button>
						</td>
					</tr>

				</tbody>

			</table>

		</section>

	</main>

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>

</body>
</html>