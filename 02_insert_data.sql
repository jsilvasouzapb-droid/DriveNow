
INSERT INTO categoria(id_categoria, nome_categoria, diaria, descricao)
VALUES(1, 'Econômico', 120.00, 'Carros compactos'),
(2, 'SUV', 250.00, 'SUVs de médio porte'),
(3, 'Luxo', 450.00, 'Veículos premium');

INSERT INTO cliente(id_cliente, nome, cpf_cnpj, telefone, email, endereco)
VALUES(1, 'João Silva', '12345678900', '11999990000', 'joao@email.com', 'Rua A, 123'),
(2, 'Maria Souza', '98765432100', '11988880000', 'maria@email.com', 'Rua B, 456'),
(3, 'Carlos Pereira', '11122233344', '11977770000', 'carlos@email.com', 'Rua C, 789');

INSERT INTO veiculo(id_veiculo, placa, renavam, modelo, marca, ano, id_categoria)
VALUES(1, 'ABC1A23', '999888777', 'Onix', 'Chevrolet', 2020, 1),
(2, 'XYZ9B88', '555444333', 'Compass', 'Jeep', 2022, 2),
(3, 'QWE5C22', '222333444', 'BMW 320i', 'BMW', 2023, 3);

INSERT INTO funcionario(id_funcionario, nome, cargo, telefone, email)
VALUES(1, 'Ana Lima', 'Atendente', '11944445555', 'ana@email.com'),
(2, 'Pedro Ramos', 'Gerente', '11922223333', 'pedro@email.com'),
(3, 'Julia Mendes', 'Assistente', '11911112222', 'julia@email.com');

INSERT INTO reserva(id_reserva, id_cliente, id_veiculo, data_retirada_prevista, data_devolucao_prevista, status)
VALUES(1, 1, 1, '2025-02-01', '2025-02-05', 'Confirmada'),
(2, 2, 2, '2025-03-10', '2025-03-12', 'Concluída'),
(3, 3, 3, '2025-04-20', '2025-04-25', 'Pendente');

INSERT INTO contrato(id_contrato, id_reserva, id_veiculo, data_retirada_prevista, data_devolucao_prevista, quilometragem_inicio)
VALUES(1, 1, 1, 1, '2025-02-01', '2025-02-05', 15000),
(2, 2, 2, 2, '2025-03-10', '2025-03-12', 22000),
(3, 3, 3, 3, '2025-04-20', '2025-04-25', 5000);

INSERT INTO inspecao(id_inspecao, id_contrato, tipo, data_inspecao, id_responsavel, observacoes)
VALUES(1, 1, 'Retirada', '2025-02-01', 1, 'Sem danos visíveis'),
(2, 2, 'Devolução', '2025-03-12', 2, 'Arranhão no para-choque'),
(3, 3, 'Retirada', '2025-04-20', 3, 'Pneus novos');

INSERT INTO multa(id_multa, id_contrato, tipo_multa, valor, descricao)
VALUES(1, 1, 'Velocidade', 150.00, 'Excesso de velocidade'),
(2, 2, 'Estacionamento', 80.00, 'Local proibido'),
(3, 3, 'Velocidade', 320.00, 'Alta velocidade em rodovia');

INSERT INTO pagamento(id_pagamento, id_contrato, data_pagamento, valor_pago, forma_pagamento, status_pagamento)
VALUES(1, 1, '2025-02-05', 600.00, 'Crédito', 'Pago'),
(2, 2, '2025-03-12', 500.00, 'Debito', 'Pago'),
(3, 3, '2025-04-25', 1500.00, 'Pix', 'Pendente');
