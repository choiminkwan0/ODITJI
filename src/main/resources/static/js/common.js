
/* =========================
   CONFIG
========================= */
const ODITJI = {
    contextPath: document.body.dataset.contextPath || ""
};

/* =========================
   WISHLIST MODULE
========================= */
const WishList = {

    init() {
        document.addEventListener("click", this.handleClick);
    },

    handleClick(e) {

        const btn = e.target.closest(".wish-btn");

        if (!btn) return;

        e.preventDefault();
        e.stopPropagation();

        const contentId = btn.dataset.contentId;

        // 상태 토글
        const isActive = btn.classList.toggle("active");

        btn.innerText = isActive ? "♥" : "♡";

        console.log("찜 클릭:", contentId, "state:", isActive);
    }
};

/* =========================
   MEMBER MODULE (VALIDATION ONLY)
========================= */
const Member = {

    checkId() {

        const memberId = document.getElementById("memberId").value.trim();

        if (!memberId) {
            alert("아이디를 입력해주세요.");
            return;
        }

        fetch(`${ODITJI.contextPath}/member/checkId?memberId=${memberId}`)
            .then(res => res.text())
            .then(result => {
                alert(result === "Y" ? "사용 가능한 아이디입니다." : "이미 사용 중인 아이디입니다.");
            });
    },

    checkNickname() {

        const nickname = document.getElementById("nickname").value.trim();

        if (!nickname) {
            alert("닉네임을 입력해주세요.");
            return;
        }

        fetch(`${ODITJI.contextPath}/member/checkNickname?nickname=${nickname}`)
            .then(res => res.text())
            .then(result => {
                alert(result === "Y" ? "사용 가능한 닉네임입니다." : "이미 사용 중인 닉네임입니다.");
            });
    }
};


/* =========================
   AUTH CORE MODULE
========================= */
const Auth = {

    /* =========================
       LOGIN VALIDATION
    ========================= */
    validateLogin(form) {

        const memberId = form.memberId.value.trim();
        const memberPw = form.memberPw.value.trim();

        if (this.isEmpty(memberId)) {
            return this.fail("아이디를 입력해주세요.");
        }

        if (this.isEmpty(memberPw)) {
            return this.fail("비밀번호를 입력해주세요.");
        }

        return true;
    },

    /* =========================
       JOIN VALIDATION
    ========================= */
    validateJoin(form) {

        const memberName = form.memberName.value.trim();
        const memberId = form.memberId.value.trim();
        const memberPw = form.memberPw.value;
        const memberPwCheck = form.memberPwCheck.value;
        const nickname = form.nickname.value.trim();
        const email = form.email.value.trim();

        if (this.isEmpty(memberName)) return this.fail("이름을 입력해주세요.");
        if (this.isEmpty(memberId)) return this.fail("아이디를 입력해주세요.");
        if (this.isEmpty(memberPw)) return this.fail("비밀번호를 입력해주세요.");
        if (this.isEmpty(memberPwCheck)) return this.fail("비밀번호 확인을 입력해주세요.");

        if (memberPw !== memberPwCheck) {
            return this.fail("비밀번호가 일치하지 않습니다.");
        }

        if (this.isEmpty(nickname)) return this.fail("닉네임을 입력해주세요.");
        if (this.isEmpty(email)) return this.fail("이메일을 입력해주세요.");

        return true;
    },

    /* =========================
       UTIL
    ========================= */
    isEmpty(value) {
        return !value || value.length === 0;
    },

    fail(message) {
        alert(message);
        return false;
    }
};

/* =========================
   INIT
========================= */
document.addEventListener("DOMContentLoaded", () => {
    WishList.init();
});