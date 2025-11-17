/*

#############################################################
script de inserção de dados relacionados a Construtora Alfa
#############################################################

 */
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

-- insere Construtora
INSERT INTO
    Construtoras (codigo, nome, nome_fantasia, pais)
VALUES
    (
        '10',
        'Construtora Alfa S.A.',
        'Alfa Incorporações',
        'BR'
    );

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

/*
Obras_Equipamentos
OBRA EQUIPAMENTO DATA DE INÍCIO DATA FINAL
115 301 18/03/2022 24/10/2022
115 304 20/04/2022 02/08/2022
115 306 06/07/2021 18/07/2021
115 307 04/03/2022 20/03/2022
115 309 04/08/2021 10/08/2021
116 304 22/10/2022 25/10/2022
116 305 07/03/2022 10/03/2022
116 306 12/09/2022 21/09/2022
116 307 16/08/2022 24/08/2022
116 308 23/10/2022 25/10/2022
 */