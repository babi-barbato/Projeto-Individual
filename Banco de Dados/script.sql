create database palmeiras;

use palmeiras;
-- ------------------------------------------------------------------------------------
-- Criando Tabelas
-- ------------------------------------------------------------------------------------
create table usuario(
idUser int primary key auto_increment,
nome varchar(50),
email varchar(50),
fkTelefone INT,
fkJogador INT,
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

-- ------------------------------------------------------------------------------------
-- Selects
-- ------------------------------------------------------------------------------------
select * from usuario;
select * from telefones;
select * from jogador;
select * from feedback;
select count(fkJogador) from usuario where fkJogador <= 11 group by fkJogador order by fkJogador;

-- ------------------------------------------------------------------------------------
-- Inserindo Atacantes M
insert into jogador values (null, 'Rony', 'Atacante', 'M','Destro','1.66','10','jogador-rony.png', '       O rápido e aguerrido Ronielson saiu da pequena Magalhães Barata, para ser um dos principais nomes do Palmeiras na caminhada dos títulos da Libertadores de 2020 e 2021. Superando a desconfiança inicial e a cobrança de uma exigente torcida, o atacante foi o artilheiro do Verdão no torneio sul-americano nas duas conquistas.');
insert into jogador values (null, 'Arthur', 'Atacante', 'M','Canhoto','1.68','14','jogador-arthur.png', '       Artur iniciou a carreira no Verdão aos 16 anos, em 2015. Rápido e habilidoso, trilhou seu caminho até o Profissional e disputou dez jogos pelo clube. Ainda em sua primeira passagem pelo Alviverde, foi emprestado a alguns clubes o intuito de ganhar experiência. Hoje é titulare uma peça fundamental para o Palmeiras.');
insert into jogador values (null, 'Dudu', 'Atacante', 'M','Ambidestro','1.66','7','jogador-dudu.png', '       Dudu é atualmente o jogador com mais títulos pelo Palmeiras neste século e o ocupa a 3ª posição em toda a história. Contratado em 2015, o camisa 7 se tornou o jogador do elenco com mais jogos (432), vitórias (255), gols (87) e assistências (100). Dudu também é o artilheiro do clube no século, além de ser o mais vitorioso e o atleta com mais jogos.');

-- Inserindo Meio Campo M
insert into jogador values (null, 'Raphael Veiga', 'Meio-Campista', 'M','Canhoto','1.78','23','jogador-veiga.png', '       Segundo maior artilheiro do elenco no geral, Veiga é o maior artilheiro do Allianz Parque com 40 gols e está no top 50 de maiores artilheiros da história do Palmeiras e no top 3 de goleadores do Verdão neste século. É válido lembrar que o jogador e palestrino desde criança graças au seu avô que era fanático pelo clube.');
insert into jogador values (null, 'Zé Rafael', 'Meio-Campista', 'M','Destro','1.75','08','jogador-ze.png', '       Filho de palmeirenses e torcedor do Verdão desde a infância, Zé Rafael chegou ao Pallmeiras em 2019 e teve papel fundamental na temporada de 2020. Quinto colocado na lista de maiores garçons desse ano com sete assistências, ele foi um dos seis jogadores que foram titulares nas três partidas decisivas do Paulista, da Copa do Brasil e da Libertadores.');
insert into jogador values (null, 'Gabriel Menino', 'Meio-Campista', 'M','Ambidestro','1.80','25','jogador-menino.png', '       Gabriel Menino é um jogador que veio da base do verdão e chama muita atenção pelo seu dinamismo em campo além dos seus chutes certeiros de longo, foi decicivo em diversos momentos pelo Palmeiras, na Copa do Brasil de 2020 entrou no segundo tempo e marcou o gol que selou a vitória por 2 a 0 sobre o Grêmio.');

-- Inserindo Defesa M
insert into jogador values (null, 'Piquerez', 'Lateral', 'M','Canhoto','1.83','22','jogador-piquerez.png', '       Logo em seu primeiro ano no Verdão, repetiu parte do feito de Viña e conquistou o título da Libertadores, atuando como zagueiro na final contra o Flamengo, em Montevidéu, no Uruguai. Atualmente, o atleta é o 3º uruguaio com mais vitórias pelo Palmeiras, além de ser figura constante na lista de convocados da Seleção Uruguaia.');
insert into jogador values (null, 'Marcos Rocha', 'Lateral', 'M','Destro','1.76','02','jogador-rocha.png', '       Logo em seu primeiro ano no Palestra Italia, o jogador ajudou o Verdão a conquistar o decacampeonato brasileiro e a chegar à semifinal da Libertadores. Na temporada seguinte, fechou o Brasileirão como atleta que mais desarmou jogadas na competição. Rocha é dono de um potente arremesso lateral que muitas vezes resulta em finalização.');
insert into jogador values (null, 'Murilo', 'Zagueiro', 'M','Destro','1.88','26','jogador-murilo.png', '       Revelado pelo Cruzeiro, onde chegou aos 13 anos, Murilo foi figura constante em convocações da Seleção Brasileira de base e estreou profissionalmente pelo time celeste em 2017. Logo em seu primeiro ano pelo Palmeiras, Murilo já se tornou o zagueiro com mais gols pelo clube em uma única temporada, ao lado de Gustavo Gómez');
insert into jogador values (null, 'Gustavo Gómez', 'Zagueiro', 'M','Destro','1.85','15','jogador-gomez.png', '       Gustavo Gómez é o estrangeiro com mais títulos pelo Palmeiras (10 no total) e o que mais atuou pelo clube (248 jogos), além disso o xerife do verdão ocupa a 2ª posição na lista dos maiores zagueiros artilheiros da história do Verdão, com 32 bolas na rede. Gustavo Gómez é uma peça fundamental na defesa atual do Palmeiras.');
insert into jogador values (null, 'Weverton', 'Goleiro', 'M','Destro','1.90','21','jogador-weverton.png', '       O menino alto e forte que na infância queria ser atacante hoje é dono de uma das mais precisas reposições de bola do futebol mundial e se tornou um representante legítimo da Academia de Goleiros do Verdão. Weverton é o 7º goleiro que mais atuou e o 6º que mais venceu pelo Palmeiras em todos os tempos, além de ser o 4º que mais jogou no Estádio Palestra Italia/Allianz Parque.');
-- ------------------------------------------------------------------------------------


-- ------------------------------------------------------------------------------------
-- Inserindo Atacantes F
insert into jogador values (null, 'Yamila', 'Atacante', 'F','Canhoto','1.62','11','jogadora-yamila.png', '        Monitorada pelo Alviverde em 2022, a palestrina é uma das referências do futebol argentino e deixou o Boca Juniors-ARG como ídola do clube. Aos 24 anos, Yami, apelido pelo qual gosta de ser chamada, tem como principais características a velocidade e a habilidade ao atuar pela ponta esquerda.');
insert into jogador values (null, 'Bia Zaneratto', 'Atacante', 'F','Ambidestro','1.74','10','jogadora-zaneratto.png', '        Bia Zaneratto é um dos maiores nomes do futebol feminino e encanta a torcida com o seu talento. A Imperatriz, como é conhecida pela facilidade de marcar gols, em sua última temporada no Verdão, sagrou-se a maior artilheira do Allianz Parque. Zaneratto  já disputou três Copas do Mundo (2011, 2015 e 2019), além da conquista da Copa América de 2022.');
insert into jogador values (null, 'Amanda Gutierres', 'Atacante', 'F','Destro','1.75','8','jogadora-amanda.png', '        A atacante tem 21 anos e jogou no futebol francês nas últimas duas temporadas. A história da jogadora com o esporte teve início na infância, sendo o futsal a sua primeira paixão. Amanda também já teve atuações de destaque na juventude que a fizeram ser convocada pela Seleção Brasileira Sub-17.');

insert into jogador values (null, 'Benítez', 'Meio-Campista', 'F','Destro','1.57','05','jogadora-benitez.png', '        Flavia Lorena Benítez é uma jogadora de futebol profissional argentina e ex-jogadora de futsal que joga como meio-campista do clube brasileiro Série A1 SE Palmeiras, por empréstimo do Estudiantes de Buenos Aires, e da seleção feminina argentina.');
insert into jogador values (null, 'Duda Santos', 'Meio-Campista', 'F','Destro','1.70','7','jogadora-dudaSantos.png', '        Duda santos tem como uma de suas principais qualidades o chute de longa distância e a bola parada. Em 2022, além de conquistar a CONMEBOL Libertadores e o Campeonato Paulista, Duda escreveu seu nome na história do Alviverde: a meio-campista foi a autora do primeiro gol palmeirense na Libertadores.');
insert into jogador values (null, 'Dudinha', 'Meio-Campista', 'F','Canhoto','1.70','21','jogadora-dudinha.png', '        Com apenas seus dezesseis anos, a Dudinha, já vive o sonho de todos os amantes e adeptos do futebol, ou seja, integrar uma grande equipe profissional. Jogando no meio-campo, a adolescente disputou o Campeonato Brasileiro Sub-16 pelo time da capital e suas boas atuações chamaram a atenção do Departamento Feminino do Palmeiras.');

insert into jogador values (null, 'Katrine', 'Lateral', 'F','Canhoto','1.57','6','jogadora-katrine.png', '        Eleita a melhor lateral-esquerda da Libertadores Feminina, Katrine está disputando a sua terceira temporada pelo Verdão. Em 2022, além da competição sul-americana, foi campeã do Campeonato Paulista. Na conquista inédita da Libertadores, a camisa 6 participou ativamente na construção da linha de defesa e atuou como zagueira em alguns momentos.');
insert into jogador values (null, 'Bruna Calderan', 'Lateral', 'F','Ambidestro','1.67','2','jogadora-calderan.png', '        Bruna assinou com o Verdão em 2021. Na primeira temporada da jogadora com o manto alviverde a lateral ganhou o título da Copa Paulista, além de premios como o de melhor lateral-direita no Prêmio Brasileirão da CBF e no troféu Bola de Prata de 2021 da ESPN Brasil. Na Libertadores de 2022, a ambidestra balançou as redes 2x e deu 4 assistências,');
insert into jogador values (null, 'Sorriso', 'Zagueira', 'F','Destro','1.63','4','jogadora-sorriso.png', '        As principais características da jogadora são a marcação, a leitura de jogo e a tomada de decisão, a atleta também destaca que tem boa impulsão para tirar a bola da área e também marcar gols de cabeça. O futebol surgiu na vida da mesma aos cinco anos de idade, quando a sua principal brincadeira era brincar de bola com o pai e o irmão. ');
insert into jogador values (null, 'Flávia', 'Zagueira', 'F','Destro','1.75','23','jogadora-flavia.png', '        A amazonense Flávia, que veio do Red Bull Bragantino, tem passagens pelas categorias de base da Seleção Brasileira, com a qual se sagrou campeã da Liga Sul-Americana Sub-20, em 2019. A defensora também fez parte da vitoriosa campanha do Red Bull Bragantino no Campeonato Brasileiro da Série A2 em 2021.');
insert into jogador values (null, 'Alicia', 'Goleira', 'F','Destro','1.80','22','jogadora-alicia.png', '        Alicia é titular absoluta da seleção de seu país. Apaixonada por esportes, começou no handebol e, ao migrar da quadra para o campo, chegou a atuar como meia. Em 2014, iniciou a trajetória no futebol profissional com a camisa do Sportivo Limpeño-PAR e, em 2016, ajudou o clube a conquistar a primeira Libertadores de sua história.');


-- ------------------------------------------------------------------------------------


-- ------------------------------------------------------------------------------------
-- INSERINDO USUARIOS
-- ------------------------------------------------------------------------------------
INSERT INTO usuario (nome, email, fkTelefone, fkJogador, senha)
VALUES ('João Silva', 'joao.silva@email.com', 1, 1, '123456');

INSERT INTO usuario (nome, email, fkTelefone, fkJogador, senha)
VALUES ('Maria Santos', 'maria.santos@email.com', 2, 2, 'abcdef');

INSERT INTO usuario (nome, email, fkTelefone, fkJogador, senha)
VALUES ('Carlos Oliveira', 'carlos.oliveira@email.com', 3, 3, 'qwerty');

INSERT INTO usuario (nome, email, fkTelefone, fkJogador, senha)
VALUES ('Ana Costa', 'ana.costa@email.com', 4, 4, 'zxcvbn');

INSERT INTO usuario (nome, email, fkTelefone, fkJogador, senha)
VALUES ('Pedro Alves', 'pedro.alves@email.com', 5, 5, '098765');

INSERT INTO usuario (nome, email, fkTelefone, fkJogador, senha)
VALUES ('Sandra Fernandes', 'sandra.fernandes@email.com', 6, 6, 'poiuyt');

INSERT INTO usuario (nome, email, fkTelefone, fkJogador, senha)
VALUES ('Fernando Sousa', 'fernando.sousa@email.com', 7, 7, 'mnbvcx');

INSERT INTO usuario (nome, email, fkTelefone, fkJogador, senha)
VALUES ('Lúcia Santos', 'lucia.santos@email.com', 8, 8, 'lkjhgf');

INSERT INTO usuario (nome, email, fkTelefone, fkJogador, senha)
VALUES ('Ricardo Silva', 'ricardo.silva@email.com', 9, 9, 'asdfgh');

INSERT INTO usuario (nome, email, fkTelefone, fkJogador, senha)
VALUES ('Mariana Oliveira', 'mariana.oliveira@email.com', 10, 10, 'qazwsx');
 
INSERT INTO usuario (nome, email, fkTelefone, fkJogador, senha)
VALUES ('Laura Ferreira', 'laura.ferreira@email.com', 11, 1, 'p@ssw0rd');
 
INSERT INTO usuario (nome, email, fkTelefone, fkJogador, senha)
VALUES ('Paulo Santos', 'paulo.santos@email.com', 12, 2, 'secure123');
 
INSERT INTO usuario (nome, email, fkTelefone, fkJogador, senha)
VALUES ('Carla Pereira', 'carla.pereira@email.com', 13, 3, 'password123');
 
INSERT INTO usuario (nome, email, fkTelefone, fkJogador, senha)
VALUES ('Fernanda Lima', 'fernanda.lima@email.com', 14, 4, 'test123');

INSERT INTO usuario (nome, email, fkTelefone, fkJogador, senha)
VALUES ('Lucas Oliveira', 'lucas.oliveira@email.com', 15, 5, '12345678');