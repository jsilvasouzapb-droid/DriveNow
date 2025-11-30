-- 1. Listar clientes ordenados por nome
SELECT * FROM cliente
ORDER BY nome;

-- 2. Veículos com nome da categoria
SELECT v.modelo, v.marca, c.nome_categoria
FROM veiculo v
JOIN categoria c ON c.id_categoria = v.categoria_id;

-- 3. Reservas de um cliente específico
SELECT r.id_reserva, r.data_retirada_prevista, r.status
FROM reserva r
JOIN cliente c ON c.id_cliente = r.id_cliente
WHERE c.nome = 'João Silva';

-- 4. Contratos com veículo e funcionário
SELECT ct.id_contrato, v.modelo, f.nome AS funcionario
FROM contrato ct
JOIN veiculo v ON v.id_veiculo = ct.id_veiculo
JOIN funcionario f ON f.id_funcionario = ct.id_funcionario;

-- 5. Multas acima de 200 reais
SELECT * FROM multa
WHERE valor > 200;
