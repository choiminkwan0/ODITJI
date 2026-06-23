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

        <%
            java.util.List list =
                (java.util.List) request.getAttribute("contentList");

            if(list != null && !list.isEmpty()) {

                for(Object item : list) {
        %>

            <a href="${pageContext.request.contextPath}/content/detail"
            class="list-item">

                <div class="card">

                    <img src="https://placehold.co/120x170" alt="poster">

                    <div class="card-info">

                        <div class="card-title">
                            <%= item %>
                        </div>

                        <div class="card-meta">
                            <span>2025</span>
                            <span>·</span>
                            <span>Netflix</span>
                        </div>

                        <div class="card-desc">
                            등록된 콘텐츠
                        </div>

                    </div>

                    <button
                        type="button"
                        class="wish-btn"
                        data-content-id="1">
                        ♡ 찜하기
                    </button>

                </div>

            </a>

            <%
                    }
                } else {
            %>

                <div class="empty-result">
                    등록된 콘텐츠가 없습니다.
                </div>

            <%
                }
            %>

        </div>

    </section>

</main>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>

</body>
</html>