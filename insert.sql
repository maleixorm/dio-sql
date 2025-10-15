INSERT INTO usuarios (id, nome, email, endereco, data_nascimento) 
VALUES (1, "John Connor", "john@skynet.com", "Los Angeles, Califórnia", "1985-02-28");

INSERT INTO usuarios (id, nome, email, endereco, data_nascimento) 
VALUES (2, "Sarah Connor", "sarah@skynet.com", "Los Angeles, Califórnia", "1965-07-03");

INSERT INTO destinos (id, nome, descricao)
VALUES (1, "Fernando de Noronha", "Um arquipélago de beleza ímpar, com praias paradisíacas e vida marinha exuberante.");

INSERT INTO destinos (id, nome, descricao)
VALUES (2, "Lençóis Maranhenses", "Um parque nacional com paisagens surrealistas de dunas e lagoas de água cristalina.");

INSERT INTO destinos (id, nome, descricao) VALUES
(3, "Bonito", "Conhecido por suas águas transparentes para flutuação e pela rica vida selvagem."),
(4, "Porto de Galinhas", "Famoso por suas piscinas naturais formadas na maré baixa e pela beleza de suas praias."),
(5, "Chapada dos Veadeiros", "Um destino de ecoturismo no cerrado, com cachoeiras, trilhas e uma atmosfera mística."),
(6, "Maragogi", "Conhecido como o 'Caribe Brasileiro', com praias de águas claras e piscinas naturais acessíveis."),
(7, "Jericoacoara", "Um paraíso de dunas, lagoas, e uma atmosfera rústica e charmosa."),
(8, "Ilhabela", "Uma ilha cheia de praias, trilhas e cachoeiras, acessível por balsa."),
(9, "Alter do Chão", "Apelidado de 'Caribe Amazônico', com praias de água doce e beleza única."),
(10, "Foz do Iguaçu", "Lar das famosas Cataratas do Iguaçu, uma das maiores e mais impressionantes quedas d'água do mundo. A cidade é um destino de ecoturismo de destaque.");

INSERT INTO reservas (id, id_usuario, id_destino, data, status) 
VALUES (1, 1, 10, "1998-05-12", "pendente"), (2, 2, 7, "2034-06-14", "confirmada");