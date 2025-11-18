INSERT INTO
    Construtoras (codigo, nome, nome_fantasia, cidade, pais)
VALUES
    (
        '11',
        'Mauricio',
        'Mauricio Development Solutions',
        'Porto Alegre',
        'BR'
    );

--FALTA ARRUMAR DAQUI PRA BAIXO
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
        '120',
        'Rua Marista',
        '140',
        'Casa',
        'Reforma geral',
        '11'
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
        '150',
        'Rua Antonia Zardin Perondi',
        '140',
        'Perto da biqueira',
        'Condomínio Residencial Biqueira',
        '11'
    );

INSERT INTO
    Telefones (telefone, fk_construtora_codigo)
VALUES
    ('5133333339', '11');

INSERT INTO
    Trabalhadores (cpf, nome, salario, fk_obra_codigo)
VALUES
    ('210.210.210-11', 'Paulo Mendes', 2500.00, '120');

INSERT INTO
    Trabalhadores (cpf, nome, salario, fk_obra_codigo)
VALUES
    ('211.211.211-12', 'Julia Campos', 3200.00, '120');

INSERT INTO
    Trabalhadores (cpf, nome, salario, fk_obra_codigo)
VALUES
    ('212.212.212-13', 'Renan Telles', 2850.50, '120');

INSERT INTO
    Trabalhadores (cpf, nome, salario, fk_obra_codigo)
VALUES
    ('213.213.213-14', 'Sofia Martins', 4100.00, '120');

INSERT INTO
    Trabalhadores (cpf, nome, salario, fk_obra_codigo)
VALUES
    ('214.214.214-15', 'Lucas Gomes', 2300.00, '120');

INSERT INTO
    Trabalhadores (cpf, nome, salario, fk_obra_codigo)
VALUES
    ('215.215.215-16', 'Amanda Nunes', 3600.00, '150');

INSERT INTO
    Trabalhadores (cpf, nome, salario, fk_obra_codigo)
VALUES
    ('216.216.216-17', 'Bruno Farias', 2900.00, '150');

INSERT INTO
    Trabalhadores (cpf, nome, salario, fk_obra_codigo)
VALUES
    ('217.217.217-18', 'Patricia Lins', 3050.75, '150');

INSERT INTO
    Trabalhadores (cpf, nome, salario, fk_obra_codigo)
VALUES
    ('218.218.218-19', 'Gabriel Ramos', 4500.00, '150');

INSERT INTO
    Trabalhadores (cpf, nome, salario, fk_obra_codigo)
VALUES
    ('219.219.219-20', 'Vanessa Reis', 2750.00, '150');

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
        'AL011',
        '120',
        '302',
        TO_DATE ('18/03/2023', 'DD/MM/YYYY'),
        TO_DATE ('24/10/2023', 'DD/MM/YYYY')
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
        'AL012',
        '120',
        '304',
        TO_DATE ('25/03/2023', 'DD/MM/YYYY'),
        TO_DATE ('30/05/2023', 'DD/MM/YYYY')
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
        'AL013',
        '120',
        '305',
        TO_DATE ('01/04/2023', 'DD/MM/YYYY'),
        TO_DATE ('15/04/2023', 'DD/MM/YYYY')
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
        'AL014',
        '120',
        '306',
        TO_DATE ('10/06/2023', 'DD/MM/YYYY'),
        TO_DATE ('20/06/2023', 'DD/MM/YYYY')
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
        'AL015',
        '120',
        '309',
        TO_DATE ('05/07/2023', 'DD/MM/YYYY'),
        TO_DATE ('10/08/2023', 'DD/MM/YYYY')
    );