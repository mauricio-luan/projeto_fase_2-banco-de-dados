-- CONSULTAS
-- a) Selecionar CPFs e nomes dos trabalhadores que ganham mais do que 2.500,00;
SELECT
    cpf,
    nome,
    salario
FROM
    Trabalhadores
WHERE
    salario > 2500;

--b) Selecionar nomes e salários dos trabalhadores da empresa ALFA, ordenados em ordem alfabética crescente;
SELECT
    Trabalhadores.nome,
    Trabalhadores.salario
FROM
    Trabalhadores
    INNER JOIN Obras ON Trabalhadores.fk_obra_codigo = Obras.codigo
    INNER JOIN Construtoras ON Obras.fk_construtora_codigo = Construtoras.codigo
WHERE
    Construtoras.nome LIKE '%Alfa%'
ORDER BY
    Trabalhadores.nome ASC;

-- d) Calcular e exibir a folha de pagamento de cada obra. Uma folha de pagamento é determinada pela soma dos salários dos seus trabalhadores;
SELECT
    Obras.nome,
    SUM(Trabalhadores.salario) AS total_folha_pagamento
FROM
    Obras
    INNER JOIN Trabalhadores ON Obras.codigo = Trabalhadores.fk_obra_codigo
GROUP BY
    Obras.nome;

-- f) Listar as categorias de equipamentos utilizadas nas obras da construtora ALFA.
SELECT DISTINCT
    Categorias.descricao
FROM
    Construtoras
    INNER JOIN Obras ON Construtoras.codigo = Obras.fk_construtora_codigo
    INNER JOIN Alocacoes ON Obras.codigo = Alocacoes.fk_obra_codigo
    INNER JOIN Equipamentos ON Alocacoes.fk_equipamento_codigo = Equipamentos.codigo
    INNER JOIN Categorias ON Equipamentos.fk_categoria_codigo = Categorias.codigo
WHERE
    Construtoras.nome LIKE '%Alfa%';