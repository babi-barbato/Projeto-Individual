var cont = 0;
var vetorAcertos = [];

//Recomeçar Jogo
function recomecar(){
    cont = 0;
    vetorAcertos = []
    divInicio.style.display = "flex";
    divFinal.style.display = "none";
}

//Jogar Jogo
function jogar(){
    cont = 0;
    vetorAcertos = []
    divInicio.style.display = "none";
    pergunta1.style.display = "flex";
}

//Acerto ou Erro (se for 1 acertou, se for 0 errou)
function acerto(){
    vetorAcertos.push(1)
}
function erro(){
    vetorAcertos.push(0)
}

//Função para cada questão
function quest1(a){
    if(a == 0){
        erro();
    }else{
        acerto();
    }
    pergunta2.style.display = "flex"
    pergunta1.style.display = "none"
}

function quest2(a){
    if(a == 0){
        erro();
    }else{
        acerto();
    }
    pergunta3.style.display = "flex"
    pergunta2.style.display = "none"
}

function quest3(a){
    if(a == 0){
        erro();
    }else{
        acerto();
    }
    pergunta4.style.display = "flex"
    pergunta3.style.display = "none"
}

function quest4(a){
    if(a == 0){
        erro();
    }else{
        acerto();
    }
    pergunta5.style.display = "flex"
    pergunta4.style.display = "none"
}

function quest5(a){
    if(a == 0){
        erro();
    }else{
        acerto();
    }
    pergunta6.style.display = "flex"
    pergunta5.style.display = "none"
}

function quest6(a){
    if(a == 0){
        erro();
    }else{
        acerto();
    }
    pergunta7.style.display = "flex"
    pergunta6.style.display = "none"
}

function quest7(a){
    if(a == 0){
        erro();
    }else{
        acerto();
    }
    pergunta8.style.display = "flex"
    pergunta7.style.display = "none"
}

function quest8(a){
    if(a == 0){
        erro();
    }else{
        acerto();
    }
    pergunta9.style.display = "flex"
    pergunta8.style.display = "none"
}

function quest9(a){
    if(a == 0){
        erro();
    }else{
        acerto();
    }
    pergunta10.style.display = "flex"
    pergunta9.style.display = "none"
}

function quest10(a){
    if(a == 0){
        erro();
    }else{
        acerto();
    }
    result();
}

//Função para mostrar o resultado
function result(){
    divFinal.style.display = "flex"
    pergunta10.style.display = "none"

    for(var i = 0; i < 10; i++){
        if(vetorAcertos[i] == 1){
            cont++;
        }
    }

    if(cont == 0){
        respostas.innerHTML = `Você acertou ZERO perguntas, estude mais sobre o Palmeiras e tente novamente!`
    }else if(cont <= 5){
        respostas.innerHTML = `Parabéns! Você acertou ${cont} perguntas, mas ainda da para melhorar.`
    }else if(cont <= 9){
        respostas.innerHTML = `Parabéns! Você acertou ${cont} perguntas, realmente entende sobre o time.`
    }else{
        respostas.innerHTML = `Parabéns! Você acertou ${cont} perguntas, conhece TUDO sobre o time.`
    }
}