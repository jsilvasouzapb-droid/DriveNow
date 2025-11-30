-- UPDATE 1: alterar status da reserva
UPDATE reserva
SET status = 'Concluída'
WHERE id_reserva = 3;

-- UPDATE 2: corrigir telefone de cliente
UPDATE cliente
SET telefone = '11955556666'
WHERE id_cliente = 1;

-- UPDATE 3: ajustar diária da categoria Luxo
UPDATE categoria
SET diaria = 500.00
WHERE id_categoria = 3;

--------------------------------------------------

-- DELETE 1: excluir multa menor que 100
DELETE FROM multa
WHERE valor < 100;

-- DELETE 2: excluir reservas concluídas há muito tempo
DELETE FROM reserva
WHERE status = 'Concluída';

-- DELETE 3: excluir funcionário com cargo Assistente
DELETE FROM funcionario
WHERE cargo = 'Assistente';
