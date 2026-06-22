const SidebarFilter = {

    init() {
        this.bindEvents();
    },

    bindEvents() {

        // 초기화 버튼
        document.querySelector(".sidebar-btn")
            ?.addEventListener("click", () => this.resetFilter());

        // ALL 체크박스 전부 자동 등록
        document.querySelectorAll(".sidebar-section")
            .forEach(section => {

                const allCheckbox = section.querySelector("input[value='ALL']");

                if (allCheckbox) {
                    allCheckbox.addEventListener("change", (e) => {
                        this.handleGroupAll(section, e.target.checked);
                    });
                }
            });
    },

    /* =========================
       그룹 전체 선택
    ========================= */
    handleGroupAll(section, checked) {

        const checkboxes = section.querySelectorAll("input[type='checkbox']");

        checkboxes.forEach(cb => {
            cb.checked = checked;
        });
    },

    /* =========================
       초기화
    ========================= */
    resetFilter() {

        document.querySelectorAll(".sidebar input[type='checkbox']")
            .forEach(cb => cb.checked = false);

        console.log("필터 전체 초기화 완료");
    }
};

document.addEventListener("DOMContentLoaded", () => {
    SidebarFilter.init();
});