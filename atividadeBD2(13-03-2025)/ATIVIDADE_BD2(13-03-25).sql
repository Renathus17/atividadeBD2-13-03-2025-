CREATE DATABASE mercado_pascotto;

use mercado_pascotto;

create table produtos(
	id INT PRIMARY KEY,
    CODIGO_DE_BARRAS INT,
    NOME VARCHAR(255),
    MARCA VARCHAR(255),
    DATA_DE_VALIDADE DATE,
    FORNECEDOR VARCHAR(255),
    QUANTIDADE INT,
    PRECO_UNITARIO DECIMAL (10,2)    
);


create table FORNECEDORES(
	id INT PRIMARY KEY,
    CNPJ INT,
    NOME_DA_EMPRESA VARCHAR (255),
    ENDERECO VARCHAR(255),
    TELEFONE INT,
    EMAIL VARCHAR(255)    	
);

CREATE TABLE FUNCIONARIOS (
	id INT PRIMARY KEY,
    CPF INT,
    NOME VARCHAR (255),
    CARGO VARCHAR (255),
    EMIL VARCHAR(255),
    MATRICULA INT,
    TELEFONE INT,
    SALARIO DECIMAL(10,2)	
);

insert INTO PRODUTOS (ID, CODIGO_DE_BARRAS, NOME, MARCA, DATA_DE_VALIDADE,FORNECEDOR,QUANTIDADE,PRECO_UNITARIO) VALUES
	(1, 1234, "CAFÉ", "NESCAFÉ", 20250420, "ATACADAO",1,30.99),
	(2,4321,"LEITE","ITALAC",20250315,"ITALAC INDUSTRIES LTDA",10, 6.00);

UPDATE PRODUTOS
SET DATA_DE_VALIDADE = 20250315
where ID= 1;
UPDATE PRODUTOS
SET DATA_DE_VALIDADE = 20250420
where ID= 2;

INSERT INTO FORNECEDORES (ID, CNPJ, NOME_DA_EMPRESA, ENDERECO, TELEFONE, EMAIL) VALUES
	(1, 57984103000190, "ATACADAO", "RUA 1, AO LADO DA RUA 2", 1140028922,"ATACADAO@ITALAC.COM"),
	(2, 43589278000147, "ITALAC", "RUA 2, AO LADO DA RUA 3", 1170706969,"ATACADAO@ITALAC.COM");
UPDATE FORNECEDORES
SET EMAIL = "ATACADAO@ATACADAO.COM"
WHERE ID =1;
UPDATE FORNECEDORES
SET EMAIL = "ITALAC@ITALAC.COM"
WHERE ID =2;

ALTER TABLE FUNCIONARIOS DROP EMIL;
ALTER TABLE FUNCIONARIOS ADD (EMAIL VARCHAR (255));

INSERT INTO FUNCIONARIOS (ID, CPF, NOME, CARGO, MATRICULA, TELEFONE, SALARIO, EMAIL) VALUES
	(1, 40932890170, "GERALT","REPOSITOR",001,988776655,1000.98,"GERALTD.RIVIA@GMAIL.COM");
UPDATE FUNCIONARIOS
SET CPF = 40932890170
WHERE ID = 1;

SELECT*FROM FORNECEDORES