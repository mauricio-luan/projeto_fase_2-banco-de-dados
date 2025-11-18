-- SCRIPT DE INSERÇÃO DE DADOS (CONSTRUTORA ALFA)
-- insere Construtora
INSERT INTO
    Construtoras (codigo, nome, nome_fantasia)
VALUES
    (
        '10',
        'Construtora Alfa S.A.',
        'Alfa Incorporações'
    );

-- insere Categorias
INSERT INTO
    Categorias (codigo, descricao)
VALUES
    ('1', 'Concretagem');

INSERT INTO
    Categorias (codigo, descricao)
VALUES
    ('2', 'Acesso e Elevação');

INSERT INTO
    Categorias (codigo, descricao)
VALUES
    ('3', 'Geradores e Compressores');

INSERT INTO
    Categorias (codigo, descricao)
VALUES
    ('4', 'Andaimes');

INSERT INTO
    Categorias (codigo, descricao)
VALUES
    ('5', 'Ferramenta Elétrica');

-- insere Equipamentos
INSERT INTO
    Equipamentos (
        codigo,
        nome,
        valor_uso_diario,
        fk_categoria_codigo
    )
VALUES
    ('301', 'Betoneira', 100.00, '1');

INSERT INTO
    Equipamentos (
        codigo,
        nome,
        valor_uso_diario,
        fk_categoria_codigo
    )
VALUES
    ('302', 'Cortadora de Piso', 10.00, '1');

INSERT INTO
    Equipamentos (
        codigo,
        nome,
        valor_uso_diario,
        fk_categoria_codigo
    )
VALUES
    ('303', 'Mangote', 30.50, '1');

INSERT INTO
    Equipamentos (
        codigo,
        nome,
        valor_uso_diario,
        fk_categoria_codigo
    )
VALUES
    ('304', 'Guincho', 250.00, '2');

INSERT INTO
    Equipamentos (
        codigo,
        nome,
        valor_uso_diario,
        fk_categoria_codigo
    )
VALUES
    ('305', 'Gerador', 451.00, '3');

INSERT INTO
    Equipamentos (
        codigo,
        nome,
        valor_uso_diario,
        fk_categoria_codigo
    )
VALUES
    ('306', 'Piso Metálico', 150.00, '4');

INSERT INTO
    Equipamentos (
        codigo,
        nome,
        valor_uso_diario,
        fk_categoria_codigo
    )
VALUES
    ('307', 'Furadeira de bancada', 65.00, '5');

INSERT INTO
    Equipamentos (
        codigo,
        nome,
        valor_uso_diario,
        fk_categoria_codigo
    )
VALUES
    ('308', 'Parafusadeira', 37.00, '5');

INSERT INTO
    Equipamentos (
        codigo,
        nome,
        valor_uso_diario,
        fk_categoria_codigo
    )
VALUES
    ('309', 'Plaina', 25.00, '5');

-- insere Obras
INSERT INTO
    Obras (
        codigo,
        logradouro,
        numero,
        complemento,
        nome,
        fk_construtora_codigo
    )
VALUES
    (
        '115',
        'Travessa dos Lagos',
        '100',
        'Norte',
        'Condomínio dos Lagos',
        '10'
    );

INSERT INTO
    Obras (
        codigo,
        logradouro,
        numero,
        complemento,
        nome,
        fk_construtora_codigo
    )
VALUES
    (
        '116',
        'Avenida Rio Grande',
        '22',
        'Lado A',
        'Condomínio Araras',
        '10'
    );

-- insere Telefones
INSERT INTO
    Telefones (telefone, fk_construtora_codigo)
VALUES
    ('5133333334', '10');

INSERT INTO
    Telefones (telefone, fk_construtora_codigo)
VALUES
    ('5133333335', '10');

INSERT INTO
    Telefones (telefone, fk_construtora_codigo)
VALUES
    ('5133333336', '10');

-- insere alocações dos equipamentos (Equipamentos x Obras)
INSERT INTO
    Alocacoes (
        codigo_alocacao,
        fk_obra_codigo,
        fk_equipamento_codigo,
        data_inicio_uso,
        data_termino_uso
    )
VALUES
    (
        'AL001',
        '115',
        '301',
        TO_DATE ('18/03/2022', 'DD/MM/YYYY'),
        TO_DATE ('24/10/2022', 'DD/MM/YYYY')
    );

INSERT INTO
    Alocacoes (
        codigo_alocacao,
        fk_obra_codigo,
        fk_equipamento_codigo,
        data_inicio_uso,
        data_termino_uso
    )
VALUES
    (
        'AL002',
        '115',
        '304',
        TO_DATE ('20/04/2022', 'DD/MM/YYYY'),
        TO_DATE ('02/08/2022', 'DD/MM/YYYY')
    );

INSERT INTO
    Alocacoes (
        codigo_alocacao,
        fk_obra_codigo,
        fk_equipamento_codigo,
        data_inicio_uso,
        data_termino_uso
    )
VALUES
    (
        'AL003',
        '115',
        '306',
        TO_DATE ('06/07/2021', 'DD/MM/YYYY'),
        TO_DATE ('18/07/2021', 'DD/MM/YYYY')
    );

INSERT INTO
    Alocacoes (
        codigo_alocacao,
        fk_obra_codigo,
        fk_equipamento_codigo,
        data_inicio_uso,
        data_termino_uso
    )
VALUES
    (
        'AL004',
        '115',
        '307',
        TO_DATE ('04/03/2022', 'DD/MM/YYYY'),
        TO_DATE ('20/03/2022', 'DD/MM/YYYY')
    );

INSERT INTO
    Alocacoes (
        codigo_alocacao,
        fk_obra_codigo,
        fk_equipamento_codigo,
        data_inicio_uso,
        data_termino_uso
    )
VALUES
    (
        'AL005',
        '115',
        '309',
        TO_DATE ('04/08/2021', 'DD/MM/YYYY'),
        TO_DATE ('10/08/2021', 'DD/MM/YYYY')
    );

INSERT INTO
    Alocacoes (
        codigo_alocacao,
        fk_obra_codigo,
        fk_equipamento_codigo,
        data_inicio_uso,
        data_termino_uso
    )
VALUES
    (
        'AL006',
        '116',
        '304',
        TO_DATE ('22/10/2022', 'DD/MM/YYYY'),
        TO_DATE ('25/10/2022', 'DD/MM/YYYY')
    );

INSERT INTO
    Alocacoes (
        codigo_alocacao,
        fk_obra_codigo,
        fk_equipamento_codigo,
        data_inicio_uso,
        data_termino_uso
    )
VALUES
    (
        'AL007',
        '116',
        '305',
        TO_DATE ('07/03/2022', 'DD/MM/YYYY'),
        TO_DATE ('10/03/2022', 'DD/MM/YYYY')
    );

INSERT INTO
    Alocacoes (
        codigo_alocacao,
        fk_obra_codigo,
        fk_equipamento_codigo,
        data_inicio_uso,
        data_termino_uso
    )
VALUES
    (
        'AL008',
        '116',
        '306',
        TO_DATE ('12/09/2022', 'DD/MM/YYYY'),
        TO_DATE ('21/09/2022', 'DD/MM/YYYY')
    );

INSERT INTO
    Alocacoes (
        codigo_alocacao,
        fk_obra_codigo,
        fk_equipamento_codigo,
        data_inicio_uso,
        data_termino_uso
    )
VALUES
    (
        'AL009',
        '116',
        '307',
        TO_DATE ('16/08/2022', 'DD/MM/YYYY'),
        TO_DATE ('24/08/2022', 'DD/MM/YYYY')
    );

INSERT INTO
    Alocacoes (
        codigo_alocacao,
        fk_obra_codigo,
        fk_equipamento_codigo,
        data_inicio_uso,
        data_termino_uso
    )
VALUES
    (
        'AL010',
        '116',
        '308',
        TO_DATE ('23/10/2022', 'DD/MM/YYYY'),
        TO_DATE ('25/10/2022', 'DD/MM/YYYY')
    );

-- insere Trabalhadores
INSERT INTO
    Trabalhadores (cpf, nome, salario, fk_obra_codigo)
VALUES
    ('101.101.101-34', 'José Chaves', 2200.00, '115');

INSERT INTO
    Trabalhadores (cpf, nome, salario, fk_obra_codigo)
VALUES
    ('102.102.102-91', 'Pedro Passos', 3502.18, '115');

INSERT INTO
    Trabalhadores (cpf, nome, salario, fk_obra_codigo)
VALUES
    (
        '103.103.103-18',
        'Maria Aparecida',
        2800.87,
        '115'
    );

INSERT INTO
    Trabalhadores (cpf, nome, salario, fk_obra_codigo)
VALUES
    ('104.104.104-52', 'Carlos Dutra', 3100.00, '116');

INSERT INTO
    Trabalhadores (cpf, nome, salario, fk_obra_codigo)
VALUES
    ('105.105.105-85', 'Mário Pires', 4323.29, '116');