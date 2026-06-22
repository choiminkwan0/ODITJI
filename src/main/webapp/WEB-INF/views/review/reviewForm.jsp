<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 작성 | ODITJI</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/layout.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">

</head>
<body>

	<%@ include file="/WEB-INF/views/common/header.jsp"%>

	<main class="review-form-container">

		<div class="review-form-box">

			<h2>리뷰 작성</h2>

			<form action="${pageContext.request.contextPath}/review/insert"
				method="post">

				<div class="rating-group">

					<label>
						<input type="radio" name="rating" value="5">
						★★★★★
					</label>

					<label>
						<input type="radio" name="rating" value="4">
						★★★★☆
					</label>

					<label>
						<input type="radio" name="rating" value="3">
						★★★☆☆
					</label>

					<label>
						<input type="radio" name="rating" value="2">
						★★☆☆☆
					</label>

					<label>
						<input type="radio" name="rating" value="1">
						★☆☆☆☆
					</label>

				</div>

				<div class="input-group">

					<label>리뷰 내용</label>

					<textarea
						name="reviewContent"
						rows="10"
						placeholder="리뷰를 입력하세요"></textarea>

				</div>

				<div class="review-btn-area">

					<a href="${pageContext.request.contextPath}/review/list"
						class="cancel-btn">
						취소
					</a>

					<button type="submit"
						class="submit-btn">
						등록
					</button>

				</div>

			</form>

		</div>

	</main>

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>

</body>
</html>