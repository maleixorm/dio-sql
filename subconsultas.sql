SELECT * FROM destinos WHERE id NOT IN (SELECT id_destino FROM reservas);

SELECT nome, (SELECT COUNT(*) FROM reservas WHERE id_usuarios = usuarios.id) AS total_reservas FROM usuarios;