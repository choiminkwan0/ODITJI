<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 | ODITJI</title>

<link rel="stylesheet"
    href="${pageContext.request.contextPath}/css/common.css">

<link rel="stylesheet"
    href="${pageContext.request.contextPath}/css/layout.css">

<link rel="stylesheet"
    href="${pageContext.request.contextPath}/css/main.css">

<script defer src="${pageContext.request.contextPath}/js/common.js"></script>
</head>

<body data-context-path="${pageContext.request.contextPath}">

<%@ include file="/WEB-INF/views/common/header.jsp"%>

<div class="join-container">

    <div class="join-box">

        <h2>회원가입</h2>

        <!-- FORM -->
        <form action="${pageContext.request.contextPath}/member/join"
              method="post"
              onsubmit="return Auth.validateJoin(this)">

            <!-- NAME -->
            <div class="input-group">
                <label>이름</label>
                <input type="text" name="memberName" placeholder="이름 입력">
            </div>

            <!-- ID -->
            <div class="input-group">
                <label>아이디</label>

                <div class="dup-box">
                    <input type="text" name="memberId" id="memberId" placeholder="아이디 입력">
                    <button type="button" class="dup-btn" onclick="Member.checkId()">
                        중복확인
                    </button>
                </div>
            </div>

            <!-- PASSWORD -->
            <div class="input-group">
                <label>비밀번호</label>
                <input type="password" name="memberPw" placeholder="비밀번호 입력">
            </div>

            <!-- PASSWORD CHECK -->
            <div class="input-group">
                <label>비밀번호 확인</label>
                <input type="password" name="memberPwCheck" placeholder="비밀번호 재입력">
            </div>

            <!-- NICKNAME -->
            <div class="input-group">
                <label>닉네임</label>

                <div class="dup-box">
                    <input type="text" name="nickname" id="nickname" placeholder="닉네임 입력">
                    <button type="button" class="dup-btn" onclick="Member.checkNickname()">
                        중복확인
                    </button>
                </div>
            </div>

            <!-- PHONE -->
            <div class="input-group">
                <label>연락처</label>
                <input type="text" name="phone" placeholder="연락처 입력">
            </div>

            <!-- EMAIL -->
            <div class="input-group">
                <label>이메일</label>
                <input type="email" name="email" placeholder="이메일 입력">
            </div>

            <!-- OTT -->
            <div class="input-group">
                <label>사용 중인 OTT</label>

                <div class="ott-check-group">

                    <label class="ott-item">
                        <input type="checkbox" name="ottList" value="NETFLIX">
                        NETFLIX
                    </label>

                    <label class="ott-item">
                        <input type="checkbox" name="ottList" value="DISNEY">
                        Disney+
                    </label>

                    <label class="ott-item">
                        <input type="checkbox" name="ottList" value="TVING">
                        TVING
                    </label>

                    <label class="ott-item">
                        <input type="checkbox" name="ottList" value="WAVVE">
                        WAVVE
                    </label>

                    <label class="ott-item">
                        <input type="checkbox" name="ottList" value="WATCHA">
                        WATCHA
                    </label>

                    <label class="ott-item">
                        <input type="checkbox" name="ottList" value="COUPANG">
                        COUPANG PLAY
                    </label>

                </div>
            </div>

            <!-- SUBMIT -->
            <button type="submit" class="join-btn">
                회원가입
            </button>

        </form>

        <!-- LOGIN LINK -->
        <div class="login-area">
            <p>이미 회원이신가요?</p>
            <a href="${pageContext.request.contextPath}/member/login">
                로그인
            </a>
        </div>

    </div>

</div>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>

</body>
</html>