/*
##############################################################################
##      SCRIPT DE INSERÇÃO DADOS CONSTRUTORA ALFA E CONSTRUTORA MAURICIO    ##
##############################################################################

 */
-- ALFA
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

-- MAURICIO
-- insere construtora
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

-- insere obras
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

-- insere telefone
INSERT INTO
    Telefones (telefone, fk_construtora_codigo)
VALUES
    ('5133333339', '11');

-- insere trabalhadores
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

-- insere alocacoes
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