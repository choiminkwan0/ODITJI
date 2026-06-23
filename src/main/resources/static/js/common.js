/* =========================================================
   ODITJI COMMON CONFIG
========================================================= */

const ODITJI = {
    contextPath: document.body.dataset.contextPath || ""
};


/* =========================================================
   WISHLIST MODULE
========================================================= */

const WishList = {

    init() {
        document.addEventListener("click", this.handleClick.bind(this));
    },

    handleClick(e) {

        const btn = e.target.closest(".wish-btn");
        if (!btn) return;

        e.preventDefault();
        e.stopPropagation();

        const contentId = btn.dataset.contentId;
        const nextState = !btn.classList.contains("active");

        this.updateUI(btn, nextState);

        this.sendWish(contentId, nextState)
            .catch(() => this.updateUI(btn, !nextState));
    },

    sendWish(contentId, state) {

        // TODO: AJAX or fetch API 연결
        return new Promise(resolve => {
            console.log("찜:", contentId, state);
            setTimeout(resolve, 200);
        });
    },

    updateUI(btn, state) {
        btn.classList.toggle("active", state);
        btn.dataset.wished = state;
        btn.innerText = state ? "♥ 찜완료" : "♡ 찜하기";
    }
};


/* =========================================================
   MEMBER MODULE (VALIDATION ONLY)
========================================================= */

const Member = {

    init() {
        this.bindFileInput();
    },

    bindFileInput() {

        const fileInput = document.getElementById("profileImage");
        const fileName = document.querySelector(".file-name");

        if (!fileInput || !fileName) return;

        fileInput.addEventListener("change", () => {

            if (fileInput.files.length > 0) {
                fileName.textContent = fileInput.files[0].name;
            } else {
                fileName.textContent = "선택된 파일 없음";
            }
        });
    },

    checkId() {

        const memberId = document.getElementById("memberId").value.trim();

        if (!memberId) {
            alert("아이디를 입력해주세요.");
            return;
        }

        fetch(`${ODITJI.contextPath}/member/checkId?memberId=${memberId}`)
            .then(res => res.text())
            .then(result => {
                alert(result === "Y"
                    ? "사용 가능한 아이디입니다."
                    : "이미 사용 중인 아이디입니다.");
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
                alert(result === "Y"
                    ? "사용 가능한 닉네임입니다."
                    : "이미 사용 중인 닉네임입니다.");
            });
    }
};


/* =========================================================
   AUTH MODULE (LOGIN / JOIN VALIDATION)
========================================================= */

const Auth = {

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

    isEmpty(value) {
        return !value || value.length === 0;
    },

    fail(message) {
        alert(message);
        return false;
    }
};


/* =========================================================
   SLIDER MODULE (NETFLIX STYLE)
========================================================= */

const Slider = {

    instances: [],

    init(config) {

        const slider = document.querySelector(config.slider);
        const leftBtn = document.querySelector(config.leftBtn);
        const rightBtn = document.querySelector(config.rightBtn);

        if (!slider) return;

        const state = {
            slider,
            scrollAmount: config.scrollAmount || 300,
            autoScroll: config.autoScroll || false,
            intervalTime: config.intervalTime || 3000,
            timer: null
        };

        /* =========================
           BUTTON CONTROL
        ========================= */

        if (leftBtn) {
            leftBtn.addEventListener("click", () => {
                slider.scrollBy({
                    left: -state.scrollAmount,
                    behavior: "smooth"
                });
            });
        }

        if (rightBtn) {
            rightBtn.addEventListener("click", () => {
                slider.scrollBy({
                    left: state.scrollAmount,
                    behavior: "smooth"
                });
            });
        }

        /* =========================
           AUTO SLIDE
        ========================= */

        const start = () => {
            state.timer = setInterval(() => {
                slider.scrollBy({
                    left: state.scrollAmount,
                    behavior: "smooth"
                });

                if (slider.scrollLeft + slider.clientWidth >= slider.scrollWidth) {
                    slider.scrollTo({ left: 0, behavior: "smooth" });
                }

            }, state.intervalTime);
        };

        const stop = () => {
            if (state.timer) clearInterval(state.timer);
        };

        if (state.autoScroll) {
            start();

            slider.addEventListener("mouseenter", stop);
            slider.addEventListener("mouseleave", start);
        }

        this.instances.push(state);
    }
};


/* =========================================================
   INIT
========================================================= */

document.addEventListener("DOMContentLoaded", () => {

    WishList.init();

    Member.init();

    Slider.init({
        slider: "#contentSlider",
        leftBtn: ".slider-btn.left",
        rightBtn: ".slider-btn.right",
        scrollAmount: 250,
        autoScroll: true,
        intervalTime: 3000
    });

});