CREATE TABLE categoria (
    id_categoria INTEGER PRIMARY KEY,
    nome_categoria TEXT NOT NULL,
    diaria REAL NOT NULL,
    descricao TEXT
);

CREATE TABLE cliente (
    id_cliente INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    cpf_cnpj TEXT UNIQUE NOT NULL,
    telefone TEXT,
    email TEXT,
    endereco TEXT
);

CREATE TABLE veiculo (
    id_veiculo INTEGER PRIMARY KEY,
    placa TEXT UNIQUE NOT NULL,
    renavam TEXT UNIQUE NOT NULL,
    modelo TEXT NOT NULL,
    marca TEXT NOT NULL,
    ano INTEGER,
    categoria_id INTEGER,
    FOREIGN KEY (categoria_id) REFERENCES categoria(id_categoria)
);

CREATE TABLE funcionario (
    id_funcionario INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    cargo TEXT,
    telefone TEXT,
    email TEXT
);

CREATE TABLE reserva (
    id_reserva INTEGER PRIMARY KEY,
    id_cliente INTEGER,
    id_veiculo INTEGER,
    data_retirada_prevista DATE,
    data_devolucao_prevista DATE,
    status TEXT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo)
);

CREATE TABLE contrato (
    id_contrato INTEGER PRIMARY KEY,
    id_reserva INTEGER,
    id_veiculo INTEGER,
    id_funcionario INTEGER,
    data_retirada_prevista DATE,
    data_devolucao_prevista DATE,
    quilometragem_inicio INTEGER,
    FOREIGN KEY (id_reserva) REFERENCES reserva(id_reserva),
    FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo),
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario)
);

CREATE TABLE inspecao (
    id_inspecao INTEGER PRIMARY KEY,
    id_contrato INTEGER,
    tipo TEXT,
    data_inspecao DATE,
    id_responsavel INTEGER,
    observacoes_texto TEXT,
    FOREIGN KEY (id_contrato) REFERENCES contrato(id_contrato),
    FOREIGN KEY (id_responsavel) REFERENCES funcionario(id_funcionario)
);

CREATE TABLE multa (
    id_multa INTEGER PRIMARY KEY,
    id_contrato INTEGER,
    tipo_multa TEXT,
    valor REAL,
    descricao TEXT,
    FOREIGN KEY (id_contrato) REFERENCES contrato(id_contrato)
);

CREATE TABLE pagamento (
    id_pagamento INTEGER PRIMARY KEY,
    id_contrato INTEGER,
    data_pagamento DATE,
    valor_pago REAL,
    forma_pagamento TEXT,
    status_pagamento TEXT,
    FOREIGN KEY (id_contrato) REFERENCES contrato(id_contrato)
);
