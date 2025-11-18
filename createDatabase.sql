-- Modelo Físico - Script de criação do banco de dados
CREATE TABLE
    Construtoras (
        codigo CHAR(3) PRIMARY KEY,
        nome VARCHAR2 (50) NOT NULL,
        nome_fantasia VARCHAR2 (100),
        cidade VARCHAR2 (20),
        pais CHAR(2)
    );

CREATE TABLE
    Telefones (
        fk_construtora_codigo CHAR(3),
        telefone VARCHAR2 (11) NOT NULL,
        CONSTRAINT FK_Telefones_Construtoras FOREIGN KEY (fk_construtora_codigo) REFERENCES Construtoras (codigo),
        PRIMARY KEY (fk_construtora_codigo, telefone)
    );

CREATE TABLE
    Obras (
        codigo CHAR(6) PRIMARY KEY,
        nome VARCHAR2 (50) NOT NULL,
        logradouro VARCHAR2 (100) NOT NULL,
        numero CHAR(6) NOT NULL,
        complemento VARCHAR2 (150),
        fk_construtora_codigo CHAR(3),
        CONSTRAINT FK_Obras_Construtoras FOREIGN KEY (fk_construtora_codigo) REFERENCES Construtoras (codigo)
    );

CREATE TABLE
    Trabalhadores (
        cpf CHAR(14) PRIMARY KEY,
        nome VARCHAR2 (100) NOT NULL,
        salario NUMBER (10, 2) NOT NULL,
        fk_obra_codigo CHAR(6),
        CONSTRAINT FK_Trabalhadores_Obras FOREIGN KEY (fk_obra_codigo) REFERENCES Obras (codigo)
    );

CREATE TABLE
    Categorias (
        codigo CHAR(3) PRIMARY KEY,
        descricao VARCHAR2 (100) NOT NULL
    );

CREATE TABLE
    Equipamentos (
        codigo CHAR(7) PRIMARY KEY,
        nome VARCHAR2 (100) NOT NULL,
        valor_uso_diario NUMBER (8, 2) NOT NULL,
        fk_categoria_codigo CHAR(3),
        CONSTRAINT FK_Equipamentos_Categorias FOREIGN KEY (fk_categoria_codigo) REFERENCES Categorias (codigo)
    );

CREATE TABLE
    Alocacoes (
        codigo_alocacao CHAR(7) PRIMARY KEY,
        data_inicio_uso DATE NOT NULL,
        data_termino_uso DATE NOT NULL,
        fk_obra_codigo CHAR(6),
        fk_equipamento_codigo CHAR(7),
        CONSTRAINT FK_Alocacoes_Obras FOREIGN KEY (fk_obra_codigo) REFERENCES Obras (codigo),
        CONSTRAINT FK_Alocacoes_Equipamentos FOREIGN KEY (fk_equipamento_codigo) REFERENCES Equipamentos (codigo)
    );