<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ODITJI | 콘텐츠 목록</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/layout.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">

<script defer src="${pageContext.request.contextPath}/js/common.js"></script>
<script defer src="${pageContext.request.contextPath}/js/search.js"></script>

</head>

<body>

<%
    request.setAttribute("sidebarType", "filter");
%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>

<main class="layout-container">

    <%@ include file="/WEB-INF/views/common/sidebar.jsp"%>

    <section class="content-container">

        <div class="list-header">
            <h1>전체 콘텐츠</h1>
            <p>영화와 시리즈를 한눈에 확인</p>
        </div>

        <div class="category-section">
            <button class="category-btn" data-type="ALL">전체</button>
            <button class="category-btn" data-type="MOVIE">영화</button>
            <button class="category-btn" data-type="SERIES">시리즈</button>
        </div>

        <!-- LIST -->
        <div class="list">

            <div class="list-item" data-content-id="1">

                <div class="card">

                    <img src="https://placehold.co/120x170">

                    <div class="card-info">
                        <div class="card-title">오징어 게임</div>
                        <div class="card-meta">2024 · Netflix</div>
                        <div class="card-desc">시리즈 · 스릴러</div>
                    </div>

                    <button class="wish-btn" data-content-id="1">
                        ♡
                    </button>

                </div>

            </div>

        </div>

    </section>

</main>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>

</body>
</html>