SELECT * FROM viagens.usuarios;
SELECT * FROM viagens.destinos;
SELECT * FROM viagens.reservas;

SELECT nome FROM destinos WHERE id = 7 OR id = 2;
SELECT * FROM usuarios WHERE nome LIKE "%C%";