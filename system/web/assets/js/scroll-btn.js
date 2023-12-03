// Quando a página é rolada, mostra ou esconde o botão
window.onscroll = function () {
    scrollFunction();
};

function scrollFunction() {
    var btnScrollToTop = document.getElementById("btnScrollToTop");

    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        btnScrollToTop.style.display = "block";
    } else {
        btnScrollToTop.style.display = "none";
    }
}

// Quando o botão é clicado, volta ao topo da página
function scrollToTop() {
    document.body.scrollTop = 0; // Para navegadores da web
    document.documentElement.scrollTop = 0; // Para IE/Edge
}