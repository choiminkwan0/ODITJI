document.addEventListener("click", function(e) {

    const btn = e.target.closest(".wish-btn");

    if (!btn) return;

    e.preventDefault();
    e.stopPropagation();

    const contentId = btn.dataset.contentId;

    console.log("찜 클릭:", contentId);

    btn.classList.toggle("active");

    btn.innerText =
        btn.classList.contains("active")
        ? "♥"
        : "♡";

});