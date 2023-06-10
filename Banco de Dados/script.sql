create database palmeiras;

use palmeiras;

-- Criando Tabelas
create table usuario(
idUser int primary key auto_increment,
nome varchar(50),
email varchar(50),
fkTelefone INT,
senha varchar(50)
);
create table telefones (
idTelefone int primary key auto_increment,
telefone varchar(50)
);
create table jogador(
idJogador int primary key auto_increment,
nomeJogador varchar(50),
posicao varchar(50),
sexo varchar(50),
perna varchar(50),
altura decimal(4,2),
numero int,
imagem varchar(50),
texto varchar(2000)
);
create table feedback (
idFeedback int primary key auto_increment,
nomeFeedback varchar(50),
emailFeedback varchar(50),
comentario varchar(1000)
);

use palmeiras;
-- Selects
select * from usuario;
select * from telefones;
select * from jogador;
select * from feedback;

-- Inserindo Atacantes
insert into jogador values (null, 'Rony', 'Atacante', 'M','Destro','1.66','10','jogador-rony.png', '       O rápido e aguerrido Ronielson saiu da pequena Magalhães Barata, para ser um dos principais nomes do Palmeiras na caminhada dos títulos da Libertadores de 2020 e 2021. Superando a desconfiança inicial e a cobrança de uma exigente torcida, o atacante foi o artilheiro do Verdão no torneio sul-americano nas duas conquistas.');
insert into jogador values (null, 'Arthur', 'Atacante', 'M','Canhoto','1.68','14','jogador-arthur.png', '       Artur iniciou a carreira no Verdão aos 16 anos, em 2015. Rápido e habilidoso, trilhou seu caminho até o Profissional e disputou dez jogos pelo clube. Ainda em sua primeira passagem pelo Alviverde, foi emprestado a alguns clubes o intuito de ganhar experiência. Hoje é titulare uma peça fundamental para o Palmeiras.');
insert into jogador values (null, 'Dudu', 'Atacante', 'M','Ambidestro','1.66','7','jogador-dudu.png', '       Dudu é atualmente o jogador com mais títulos pelo Palmeiras neste século e o ocupa a 3ª posição em toda a história. Contratado em 2015, o camisa 7 se tornou o jogador do elenco com mais jogos (432), vitórias (255), gols (87) e assistências (100). Dudu também é o artilheiro do clube no século, além de ser o mais vitorioso e o atleta com mais jogos.');

-- Inserindo Meio Campo
insert into jogador values (null, 'Raphael Veiga', 'Meio-Campista', 'M','Canhoto','1.78','23','jogador-veiga.png', '       Segundo maior artilheiro do elenco no geral, Veiga é o maior artilheiro do Allianz Parque com 40 gols e está no top 50 de maiores artilheiros da história do Palmeiras e no top 3 de goleadores do Verdão neste século. É válido lembrar que o jogador e palestrino desde criança graças au seu avô que era fanático pelo clube.');
insert into jogador values (null, 'Zé Rafael', 'Meio-Campista', 'M','Destro','1.75','08','jogador-ze.png', '       Filho de palmeirenses e torcedor do Verdão desde a infância, Zé Rafael chegou ao Pallmeiras em 2019 e teve papel fundamental na temporada de 2020. Quinto colocado na lista de maiores garçons desse ano com sete assistências, ele foi um dos seis jogadores que foram titulares nas três partidas decisivas do Paulista, da Copa do Brasil e da Libertadores.');
insert into jogador values (null, 'Gabriel Menino', 'Meio-Campista', 'M','Ambidestro','1.80','25','jogador-menino.png', '       Gabriel Menino é um jogador que veio da base do verdão e chama muita atenção pelo seu dinamismo em campo além dos seus chutes certeiros de longo, foi decicivo em diversos momentos pelo Palmeiras, na Copa do Brasil de 2020 entrou no segundo tempo e marcou o gol que selou a vitória por 2 a 0 sobre o Grêmio.');

-- Inserindo Defesa
insert into jogador values (null, 'Piquerez', 'Lateral', 'M','Canhoto','1.83','22','jogador-piquerez.png', '       Logo em seu primeiro ano no Verdão, repetiu parte do feito de Viña e conquistou o título da Libertadores, atuando como zagueiro na final contra o Flamengo, em Montevidéu, no Uruguai. Atualmente, o atleta é o 3º uruguaio com mais vitórias pelo Palmeiras, além de ser figura constante na lista de convocados da Seleção Uruguaia.');
insert into jogador values (null, 'Marcos Rocha', 'Lateral', 'M','Destro','1.76','02','jogador-rocha.png', '       Logo em seu primeiro ano no Palestra Italia, o jogador ajudou o Verdão a conquistar o decacampeonato brasileiro e a chegar à semifinal da Libertadores. Na temporada seguinte, fechou o Brasileirão como atleta que mais desarmou jogadas na competição. Rocha é dono de um potente arremesso lateral que muitas vezes resulta em finalização.');
insert into jogador values (null, 'Murilo', 'Zagueiro', 'M','Destro','1.88','26','jogador-murilo.png', '       Revelado pelo Cruzeiro, onde chegou aos 13 anos, Murilo foi figura constante em convocações da Seleção Brasileira de base e estreou profissionalmente pelo time celeste em 2017. Logo em seu primeiro ano pelo Palmeiras, Murilo já se tornou o zagueiro com mais gols pelo clube em uma única temporada, ao lado de Gustavo Gómez');
insert into jogador values (null, 'Gustavo Gómez', 'Zagueiro', 'M','Destro','1.85','15','jogador-gomez.png', '       Gustavo Gómez é o estrangeiro com mais títulos pelo Palmeiras (10 no total) e o que mais atuou pelo clube (248 jogos), além disso o xerife do verdão ocupa a 2ª posição na lista dos maiores zagueiros artilheiros da história do Verdão, com 32 bolas na rede. Gustavo Gómez é uma peça fundamental na defesa atual do Palmeiras.');
insert into jogador values (null, 'Weverton', 'Goleiro', 'M','Destro','1.90','21','jogador-weverton.png', '       O menino alto e forte que na infância queria ser atacante hoje é dono de uma das mais precisas reposições de bola do futebol mundial e se tornou um representante legítimo da Academia de Goleiros do Verdão. Weverton é o 7º goleiro que mais atuou e o 6º que mais venceu pelo Palmeiras em todos os tempos, além de ser o 4º que mais jogou no Estádio Palestra Italia/Allianz Parque.');
