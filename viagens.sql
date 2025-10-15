create database viagens charset utf8mb4;

use viagens;

create table viagens.usuarios (
	id int,
    nome varchar(255) not null comment 'Nome do usuário',
    email varchar(100) not null unique comment 'E-mail do usuário',
    endereco varchar(100) not null comment 'Endereço do usuário',
    data_nascimento date not null comment 'Data de nascimento do usuário'
);

create table viagens.destinos(
	id int,
    nome varchar(255) not null unique comment 'Nome do destino',
    descricao varchar(255) not null comment 'Descrição do destino'
);

create table viagens.reservas(
	id int comment 'Identificador único da reserva',
    id_usuario int comment 'Referência ao ID do usuário que fez a reserva',
    id_destino int comment 'Referência ao ID do destino da reserva',
    data date comment 'Data da reserva',
    status varchar(255) default 'pendente' comment 'Status da reserva(confirmada, pendente, cancelada, etc...)'
);