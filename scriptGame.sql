create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
categoria varchar(40) not null,
atacar varchar(40) not null,
defender varchar(40) not null,

primary key (id)
);

insert into tb_classe(categoria, atacar, defender) values("Terra", "Pedrada", "Parede de pedra");
insert into tb_classe(categoria, atacar, defender) values("Ar", "Furacão", "Vendaval");
insert into tb_classe(categoria, atacar, defender) values("Água", "Tsunami", "Onda Gigante");
insert into tb_classe(categoria, atacar, defender) values("Fogo", "Rajada flamejante", "Circulo de fogo");
insert into tb_classe(categoria, atacar, defender) values("Eletrico", "Trovão", "Campo elétrico");

use db_generation_game_online;

create table tb_personagem(
id bigint auto_increment,
Nome varchar(40) not null,
habilidade varchar(40) not null,
poderAtaque int not null,
poderDefesa int not null,
poderTotal int not null,
classe_id bigint not null,
primary key (id),
foreign key (classe_id) references tb_classe (idtb_personagem_ibfk_1)
);

insert into tb_personagem (nome, habilidade, poderAtaque, poderDefesa, poderTotal, classe_id)
values ("Rock", "Força", 1800, 3000, 4800, 1);
insert into tb_personagem (nome, habilidade, poderAtaque, poderDefesa, poderTotal, classe_id)
values ("Brisa", "Invisibilidade", 1000, 1500, 2500, 2);
insert into tb_personagem (nome, habilidade, poderAtaque, poderDefesa, poderTotal, classe_id)
values ("Splash", "Volume", 2000, 3100, 5100, 3);
insert into tb_personagem (nome, habilidade, poderAtaque, poderDefesa, poderTotal, classe_id)
values ("Fênixx", "Destruição", 2500, 2800, 5300, 4);
insert into tb_personagem (nome, habilidade, poderAtaque, poderDefesa, poderTotal, classe_id)
values ("Electro", "Atordoar", 1700, 1600, 3300, 5);

SELECT * FROM tb_personagem where poderAtaque > 2000;

SELECT * FROM tb_personagem where poderDefesa >= 1000  && poderDefesa <= 2000;

SELECT * FROM tb_personagem where Nome like "%c%";

SELECT * FROM tb_personagem
inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

SELECT * FROM tb_personagem where classe_id = 4;







