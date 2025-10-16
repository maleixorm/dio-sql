SELECT * FROM usuarios as u
INNER JOIN reservas as r ON u.id = r.id_usuario
INNER JOIN destinos as d ON r.id_destino = d.id;

SELECT u.nome, u.email, r.data, r.status, d.nome FROM usuarios as u
INNER JOIN reservas as r ON u.id = r.id_usuario
INNER JOIN destinos as d ON r.id_destino = d.id;

SELECT * FROM usuarios as u
LEFT JOIN reservas as r ON u.id = r.id_usuario;

SELECT * FROM reservas as r
RIGHT JOIN destinos as d ON r.id_destino = d.id;