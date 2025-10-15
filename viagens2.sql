CREATE TABLE viagens.usuarios_nova (
	id INT,
    nome VARCHAR(100) NOT NULL COMMENT 'Nome do usuário',
    email VARCHAR(100) NOT NULL UNIQUE COMMENT 'E-mail do usuário',
    endereco VARCHAR(255) NOT NULL COMMENT 'Endereço do usuário',
    data_nascimento DATE NOT NULL COMMENT 'Data de nascimento do usuário'
);

INSERT INTO usuarios_nova (id, nome, email, endereco, data_nascimento)
SELECT (id, nome, email, endereco, data_nascimento) FROM usuarios;

DROP TABLE usuarios;

ALTER TABLE viagens.usuarios_nova RENAME usuarios;
ALTER TABLE viagens.usuarios MODIFY COLUMN endereco VARCHAR(150);

ALTER TABLE viagens.usuarios 
MODIFY COLUMN id INT AUTO_INCREMENT, 
ADD PRIMARY KEY (id);

ALTER TABLE viagens.destinos 
MODIFY COLUMN id INT AUTO_INCREMENT, 
ADD PRIMARY KEY (id);

ALTER TABLE viagens.reservas 
MODIFY COLUMN id INT AUTO_INCREMENT, 
ADD PRIMARY KEY (id);

ALTER TABLE viagens.reservas 
ADD CONSTRAINT fk_reservas_usuarios
FOREIGN KEY (id_usuario) REFERENCES usuarios (id);

ALTER TABLE viagens.reservas 
ADD CONSTRAINT fk_reservas_destinos
FOREIGN KEY (id_destino) REFERENCES destinos (id);