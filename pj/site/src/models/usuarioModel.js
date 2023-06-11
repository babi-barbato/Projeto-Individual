var database = require("../database/config")

function listar() {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listar()");
    var instrucao = `
        SELECT * FROM usuario;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function entrar(email, senha) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function entrar(): ", email, senha)
    var instrucao = `
        SELECT * FROM usuario WHERE email = '${email}' AND senha = '${senha}';
    `;
    // var teste = ``;
    console.log("Executando a instrução SQL: \n" + instrucao);
    // database.executar(teste);
    return database.executar(instrucao);
}

function ordemJogadores(sexo,tipo) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function Ordem Nome(): ", sexo)
    var instrucao = `
        SELECT * FROM jogador WHERE sexo ='${sexo}' ORDER BY ${tipo};
    `;
    // var teste = ``;
    console.log("Executando a instrução SQL: \n" + instrucao);
    // database.executar(teste);
    return database.executar(instrucao);
}

// Coloque os mesmos parâmetros aqui. Vá para a var instrucao
function cadastrar(nome, email,telefone, senha) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n funtion cadastrar():", nome, email, telefone, senha);
    
    // Insira exatamente a query do banco aqui, lembrando da nomenclatura exata nos valores
    //  e na ordem de inserção dos dados.
    var instrucao = `
        INSERT INTO usuario (idUser, nome, email, fkTelefone, senha) VALUES (NULL, '${nome}', '${email}', (SELECT idTelefone FROM telefones WHERE telefone = '${telefone}'),'${senha}');
    `;
    var instrucaoTelefone = `
        INSERT INTO telefones (idTelefone, telefone) VALUES (NULL, '${telefone}');
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoTelefone);
    console.log("Executando a instrução SQL: \n" + instrucao);

    database.executar(instrucaoTelefone);
    return database.executar(instrucao);
}

function feedback(nomeFeedback, emailFeedback, comentario) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n funtion Feedback():", nomeFeedback, emailFeedback, comentario);
    
    var instrucao = `
        INSERT INTO feedback (idFeedback, nomeFeedback, emailFeedback, comentario) VALUES (NULL, '${nomeFeedback}', '${emailFeedback}', '${comentario}');
    `;

    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function mudarSenha(senha, id, tipo) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n funtion MudarSenha():", senha, id);
    
    var instrucao = `
        UPDATE usuario SET senha = '${senha}' WHERE idUser = ${id};
    `;

    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function escolher(jogador, id) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n funtion escolher():", jogador, id);
    
    var instrucao = `
        UPDATE usuario SET fkJogador = ${jogador} WHERE idUser = ${id};
    `;

    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function buscarJogador(jogador) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n funtion buscarJogador():", jogador);
    
    var instrucao = `
    SELECT perna,nomeJogador,numero,imagem,altura, count(fkJogador) as contar FROM jogador JOIN usuario ON fkJogador = ${jogador} AND idJogador = ${jogador};
    `;

    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}


module.exports = {
    entrar,
    cadastrar,
    listar,
    ordemJogadores,
    feedback,
    mudarSenha,
    escolher,
    buscarJogador,
};