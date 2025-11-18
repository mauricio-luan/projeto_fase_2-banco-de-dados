/*
4) Criar (inserir) uma nova construtora, com o seu nome, e para essa nova construtora, insira os dados abaixo:

i. Criar 2 obras e 5 funcionários para cada uma dessas obras (i.e. 10 funcionários no total);

ii. Alocar pelo menos 4 equipamentos (de categorias diferentes) à primeira obra que você criou.
 */
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
        '115',
        'Travessa dos Lagos',
        '100',
        'Norte',
        'Condomínio dos Lagos',
        '10'
    );

INSERT INTO
    Trabalhadores (cpf, nome, salario, fk_obra_codigo)
VALUES
    ('104.104.104-52', 'Carlos Dutra', 3100.00, '116');

INSERT INTO
    Trabalhadores (cpf, nome, salario, fk_obra_codigo)
VALUES
    ('105.105.105-85', 'Mário Pires', 4323.29, '116');