/*
0/12-Endrick;1-Weverton; 2-Marcos Rocha; 3-Murilo; 
4-Gomez; 5-Piquerez; 6-Ze Rafael; 7-Raphael Veiga;
8-Gabriel Menino; 9-Rony; 10-Dudu; 11-Arthur;
*/
function sorteio(){
    divJogador.innerHTML = "";
    ftJogador.innerHTML = "";
    
    var jogador = (Math.random() * 12).toFixed()
    
    if(jogador == 0 || jogador == 12){/*Faço isso para tirar o VS Estatistico */
        gifCarrega.style.display = "none";
        divJogador.innerHTML += `
        <h1>VOCÊ É O ENDRICK</h1>
        <p><a href="">Clique aqui</a> e descubra mais sobre ele</p>`;
        ftJogador.innerHTML = `<img src='../../img/quiz/jogador-endrick.png'>`;
    }else if(jogador == 1){
        gifCarrega.style.display = "none";
        divJogador.innerHTML += `
        <h1>VOCÊ É O WEVERTON</h1>
        <p><a href="">Clique aqui</a> e descubra mais sobre ele</p>`;
        ftJogador.innerHTML = `<img src='../../img/quiz/jogador-weverton.png'>`;
        
    }else if(jogador == 2){
        gifCarrega.style.display = "none";
        divJogador.innerHTML += `
        <h1>VOCÊ É O MARCOS ROCHA</h1>
        <p><a href="">Clique aqui</a> e descubra mais sobre ele</p>`;
        ftJogador.innerHTML = `<img src='../../img/quiz/jogador-marcosRocha.png'>`;
        
    }else if(jogador == 3){
        gifCarrega.style.display = "none";
        divJogador.innerHTML += `
        <h1>VOCÊ É O MURILO</h1>
        <p><a href="">Clique aqui</a> e descubra mais sobre ele</p>`;
        ftJogador.innerHTML = `<img src='../../img/quiz/jogador-murilo.png'>`;
        
    }else if(jogador == 4){
        gifCarrega.style.display = "none";
        divJogador.innerHTML += `
        <h1>VOCÊ É O GUSTAVO GOMEZ</h1>
        <p><a href="">Clique aqui</a> e descubra mais sobre ele</p>`;
        ftJogador.innerHTML = `<img src='../../img/quiz/jogador-gustavoGomez.png'>`;
        
    }else if(jogador == 5){
        gifCarrega.style.display = "none";
        divJogador.innerHTML += `
        <h1>VOCÊ É O PIQUEREZ</h1>
        <p><a href="">Clique aqui</a> e descubra mais sobre ele</p>`;
        ftJogador.innerHTML = `<img src='../../img/quiz/jogador-piquerez.png'>`;
        
    }else if(jogador == 6){
        gifCarrega.style.display = "none";
        divJogador.innerHTML += `
        <h1>VOCÊ É O ZÉ RAFAEL</h1>
        <p><a href="">Clique aqui</a> e descubra mais sobre ele</p>`;
        ftJogador.innerHTML = `<img src='../../img/quiz/jogador-zeRafael.png'>`;
        
    }else if(jogador == 7){
        gifCarrega.style.display = "none";
        divJogador.innerHTML += `
        <h1>VOCÊ É O RAPHAEL VEIGA</h1>
        <p><a href="">Clique aqui</a> e descubra mais sobre ele</p>`;
        ftJogador.innerHTML = `<img src='../../img/quiz/jogador-veiga.png'>`;
        
    }
    else if(jogador == 8){
        gifCarrega.style.display = "none";
        divJogador.innerHTML += `
        <h1>VOCÊ É O GABRIEL MENINO</h1>
        <p><a href="">Clique aqui</a> e descubra mais sobre ele</p>`;
        ftJogador.innerHTML = `<img src='../../img/quiz/jogador-gabrielMenino.png'>`;
        
    }else if(jogador == 9){
        gifCarrega.style.display = "none";
        divJogador.innerHTML += `
        <h1>VOCÊ É O RONY</h1>
        <p><a href="">Clique aqui</a> e descubra mais sobre ele</p>`;
        ftJogador.innerHTML = `<img src='../../img/quiz/jogador-rony.png'>`;
        
    }else if(jogador == 10){
        gifCarrega.style.display = "none";
        divJogador.innerHTML += `
        <h1>VOCÊ É O DUDU</h1>
        <p><a href="">Clique aqui</a> e descubra mais sobre ele</p>`;
        ftJogador.innerHTML = `<img src='../../img/quiz/jogador-dudu.png'>`;
        
    }else if(jogador == 11){
        gifCarrega.style.display = "none";
        divJogador.innerHTML += `
        <h1>VOCÊ É O ARTHUR</h1>
        <p><a href="">Clique aqui</a> e descubra mais sobre ele</p>`;
        ftJogador.innerHTML = `<img src='../../img/quiz/jogador-arthur.png'>`;

    }
}