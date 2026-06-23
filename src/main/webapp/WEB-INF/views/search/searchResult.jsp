<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ODITJI | 검색 결과</title>

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

        <!-- HEADER -->
        <div class="list-header">

            <h1>검색 결과</h1>

            <form action="${pageContext.request.contextPath}/search"
                  method="get"
                  class="search-form">

                <input type="text"
                       name="keyword"
                       value="${param.keyword}"
                       placeholder="검색어 입력">

                <button type="submit">검색</button>

            </form>

            <div style="color:#9aa4af; font-size:14px;">
                총 <strong>${resultList.size()}</strong>개의 결과
            </div>

        </div>

        <!-- LIST -->
        <div class="list">

            <%
                java.util.List list =
                    (java.util.List) request.getAttribute("resultList");

                if (list != null && !list.isEmpty()) {
                    for (Object item : list) {
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
                            검색 결과 콘텐츠
                        </div>

                    </div>

                    <button
                        type="button"
                        class="wish-btn"
                        data-content-id="999">
                        ♡ 찜하기
                    </button>

                </div>

            </a>

            <%
                    }
                } else {
            %>

                <div class="empty-result">
                    검색 결과가 없습니다.
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