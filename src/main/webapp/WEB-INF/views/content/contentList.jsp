<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ODITJI | 콘텐츠 목록</title>

<link rel="stylesheet"
    href="${pageContext.request.contextPath}/css/common.css">

<link rel="stylesheet"
    href="${pageContext.request.contextPath}/css/layout.css">

<link rel="stylesheet"
    href="${pageContext.request.contextPath}/css/main.css">

</head>

<body>

<%
	request.setAttribute("sidebarType", "filter");
%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>

<main class="layout-container">

    <%@ include file="/WEB-INF/views/common/sidebar.jsp"%>

    <section class="content-container">

        <!-- HEADER -->
        <div class="list-header">
            <h1>전체 콘텐츠</h1>
            <p>영화와 시리즈를 한눈에 확인해보세요</p>
        </div>

        <!-- CATEGORY -->
        <div class="category-section">
            <button class="category-btn active">전체</button>
            <button class="category-btn">영화</button>
            <button class="category-btn">시리즈</button>
        </div>

        <!-- LIST -->
        <div class="list">

            <a href="${pageContext.request.contextPath}/content/contentDetail"
               class="list-item">

                <div class="card">

                    <img src="https://placehold.co/120x170" alt="오징어 게임">

                    <div class="card-info">

                        <div class="card-title">오징어 게임</div>

                        <div class="card-meta">
                            <span>2024</span>
                            <span>·</span>
                            <span>Netflix</span>
                        </div>

                        <div class="card-desc">
                            시리즈 · 스릴러 · 시즌 1
                        </div>

                    </div>

                    <button
                        type="button"
                        class="wish-btn"
                        data-content-id="1">
                        ♡
                    </button>

                </div>

            </a>

            <a href="${pageContext.request.contextPath}/content/contentDetail"
               class="list-item">

                <div class="card">

                    <img src="https://placehold.co/120x170" alt="더 글로리">

                    <div class="card-info">

                        <div class="card-title">더 글로리</div>

                        <div class="card-meta">
                            <span>2023</span>
                            <span>·</span>
                            <span>Netflix</span>
                        </div>

                        <div class="card-desc">
                            시리즈 · 복수 드라마
                        </div>

                    </div>

                    <button
                        type="button"
                        class="wish-btn"
                        data-content-id="2">
                        ♡
                    </button>

                </div>

            </a>

        </div>

    </section>

</main>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>

<!-- 공통 JS -->
<script src="${pageContext.request.contextPath}/js/common.js"></script>

</body>
</html>