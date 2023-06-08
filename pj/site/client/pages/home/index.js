/*Funções para SlideShow*/
function btn1(){
    //Mudando cor dos botões
    button1.style.backgroundColor = "#1D4F2B";
    button2.style.backgroundColor = "#6ec287";
    button3.style.backgroundColor = "#6ec287";
    button4.style.backgroundColor = "#6ec287";

    //mudando imagens
    ft1.style.display = "block";
    ft2.style.display = "none";
    ft3.style.display = "none";
    ft4.style.display = "none";
}
function btn2(){
    button2.style.backgroundColor = "#1D4F2B";
    button1.style.backgroundColor = "#6ec287";
    button3.style.backgroundColor = "#6ec287";
    button4.style.backgroundColor = "#6ec287";

    ft2.style.display = "block";
    ft1.style.display = "none";
    ft3.style.display = "none";
    ft4.style.display = "none";
}
function btn3(){
    button3.style.backgroundColor = "#1D4F2B";
    button1.style.backgroundColor = "#6ec287";
    button2.style.backgroundColor = "#6ec287";
    button4.style.backgroundColor = "#6ec287";

    ft3 .style.display = "block";
    ft1.style.display = "none";
    ft2.style.display = "none";
    ft4.style.display = "none";
}
function btn4(){
    button4.style.backgroundColor = "#1D4F2B";
    button1.style.backgroundColor = "#6ec287";
    button2.style.backgroundColor = "#6ec287";
    button3.style.backgroundColor = "#6ec287";
    
    ft4 .style.display = "block";
    ft1.style.display = "none";
    ft2.style.display = "none";
    ft3.style.display = "none";
}

/*Função para verificar os campos do feeedback*/
function feedback(){
    var nome = iptNome.value;
    var email = iptEmail.value;
    var comentario = iptComentario.value;

    if(nome == "" || email == "" || comentario == ""){
        mensagemAbrir('.bannerVermelho')
    }else if(email.indexOf('@' && '.') == -1){
        mensagemAbrir('.bannerVermelho')
    }else{
        mensagemAbrir('.bannerVerde')
        iptEmail.value = "";
        iptNome.value = "";
        iptComentario.value = "";
    }
}
function mensagemAbrir (classEscolha) {
    var banner = document.querySelector(classEscolha);
    banner.classList.add("visible");
}

function mensagemFechar (classEscolha) {
    var banner = document.querySelector(classEscolha);
    banner.classList.remove("visible");
}

var btn = document.querySelector("#back-to-top");

btn.addEventListener("click", function() {
    window.scrollTo(0, 0);
});