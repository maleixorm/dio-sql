SELECT COUNT(*) AS total_usuarios FROM usuarios;

SELECT COUNT(*) AS total_usuarios FROM usuarios AS u
INNER JOIN reservas AS r
ON u.id = r.id_usuario;

SELECT MAX(TIMESTAMPDIFF(YEAR, data_nascimento, CURRENT_DATE)) AS maior_idade;

SELECT COUNT(*), id FROM reservas GROUP BY id_destino;

SELECT COUNT(*) AS qtd_reservas, id_destino 
FROM reservas 
GROUP BY id_destino 
ORDER BY qtd_reservas DESC;