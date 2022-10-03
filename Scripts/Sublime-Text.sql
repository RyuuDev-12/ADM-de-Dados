/* COMANDOS SQL */

/* Mostra todos os Bancos de Dados. */
SHOW DATABASES;

/* Entra no Banco de Dados selecionado pelo nome. */
USE DATABASE_NAME;

/* Mostra todas as tabelas dentro do banco de dados em que você entrou. */
SHOW TABLES;

/* Mostra todas as configurações dos campos da tabela selecionada pelo nome, o comando também pode ser digitado como "DESCRIBE NOME_TABELA". */
DESC TABLE_NAME;

/* Mostra todos(ou um campo em expecífico) os dados e campos da tabela selecionada pelo nome. */
SELECT * FROM TABLE_NAME;

/* Mostra informações úteis sobre a máquina, o SQL e o Banco de Dados */
STATUS;

/* Criar um novo Banco de Dados */
CREATE DATABASE DATABASE_NAME;

/*Criar uma nova tabela*/
CREATE TABLE CLIENTE(
	NAME VARCHAR(50),
	SEXO VARCHAR(10),
	NASC DATE,
	CPF INT(11),
	EMAIL VARCHAR(30)
);

INSERT INTO CLIENTE('Fábio Nicollas', 'Masculino', 20030701, 09709621505, 'fabioniciollassilva@gmail.com');

CREATE TABLE FORNECEDOR(
	NAME VARCHAR(25),
	CNPJ CHAR(14),
	REPRESENTANTE VARCHAR(50)
);

INSERT INTO FORNECEDOR('', , '');

/* FORNECEDOR 

+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| NAME          | varchar(25) | YES  |     | NULL    |       |
| CNPJ          | char(14)    | YES  |     | NULL    |       |
| REPRESENTANTE | varchar(50) | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
*/

/* CLIENTE 

+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| NAME  | varchar(50) | YES  |     | NULL    |       |
| SEXO  | varchar(10) | YES  |     | NULL    |       |
| NASC  | date        | YES  |     | NULL    |       |
| CPF   | int(11)     | YES  |     | NULL    |       |
| EMAIL | varchar(30) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
*/

/* ======================================== Revisão ======================================== */

/* Mostrar Banco de Dados */
mysql> SHOW DATABASES;

+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| projeto            |
| sakila             |
| sys                |
| world              |
+--------------------+
7 rows in set (0.03 sec)

/* Entrar no Banco de Dados Projetos */
mysql> USE PROJETO;
Database changed

/* Mostrar Tabelas dentro do Banco de Dados já selecionado */
mysql> SHOW TABLES;

+-------------------+
| Tables_in_projeto |
+-------------------+
| cliente           |
| fornecedor        |
+-------------------+
2 rows in set (0.00 sec)

/* Mostrar configurações e campos da tabela selecionada */
mysql> DESC CLIENTE;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| NAME  | varchar(50) | YES  |     | NULL    |       |
| SEXO  | varchar(10) | YES  |     | NULL    |       |
| NASC  | date        | YES  |     | NULL    |       |
| CPF   | int(11)     | YES  |     | NULL    |       |
| EMAIL | varchar(30) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

/* Mostrar configurações e campos da tabela selecionada */
mysql> DESC FORNECEDOR;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| NAME          | varchar(25) | YES  |     | NULL    |       |
| CNPJ          | char(14)    | YES  |     | NULL    |       |
| REPRESENTANTE | varchar(50) | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

/* Mostrar tudo da tabela CLIENTE */
mysql> SELECT * FROM CLIENTE;
Empty set (0.00 sec) 

/* Deleta a Tabela selecionada */
DROP TABLE FORNECEDOR;

/* Deleta a Tabela selecionada */
DROP TABLE CLIENTE;

/* Deleta o Banco de Dados selecionada */
DROP DATABASE PROJETO;

/* Criar o BD Loja */
CREATE DATABASE LOJA;

/* Entrar no BD Loja */
USE LOJA;

/* Criar tabela Cliente */
CREATE TABLE CLIENTE(
	NOME VARCHAR(30),
	SOBRENOME VARCHAR(30),
	FILHOS ENUM('S', 'N'),
	QTDE_FILHOS INT(2),
	NASC DATE
);

/* Mostrar tabelas */
SHOW TABLES;

/* Mostrar Configurações da Tabela Cliente */
DESC CLIENTE;

/* Inserindo Registros */
INSERT INTO CLIENTE(NOME, SOBRENOME, FILHOS, QTDE_FILHOS, NASC) VALUES
	('Pedro', 'Silva', 'N', 0, '1989-02-16'),
	('Rita', 'Soares', 'S', 1, '1978-10-25'),
	('Izania', 'Santos', 'N', 0, '2005-07-21'),
	('Edilane', 'Pinto', 'S', 2, '2001-09-04'),
	('Lucas', 'Andrade', 'N', 0, '1997-07-15'),
	('Tiberio', 'Morais', 'S', 1, '1983-06-28')
;

/* Mostrar todos os registros de Cliente */

SELECT * FROM CLIENTE;

+---------+-----------+--------+-------------+------------+
| NOME    | SOBRENOME | FILHOS | QTDE_FILHOS | NASC       |
+---------+-----------+--------+-------------+------------+
| Ana     | Oliveira  | S      |           3 | 1985-02-23 |
| Pedro   | Silva     | N      |           0 | 1989-02-16 |
| Rita    | Soares    | S      |           1 | 1978-10-25 |
| Izania  | Santos    | N      |           0 | 2005-07-21 |
| Edilane | Pinto     | S      |           2 | 2001-09-04 |
| Lucas   | Andrade   | N      |           0 | 1997-07-15 |
| Tiberio | Morais    | S      |           1 | 1983-06-28 |
+---------+-----------+--------+-------------+------------+
7 rows in set (0.00 sec)

CREATE DATABASE LIVRARIA;

USE LIVRARIA;

CREATE TABLE LIVROS(
	COD INT(2),
	BOOK_NAME VARCHAR(20),
	AUTHOR_NAME VARCHAR(20),
	AUTHOR_GENRE ENUM('Feminino', 'Masculino'),
	PAG_NUMBER INT(4),
	PUB_COMP VARCHAR(15),
	BOOK_PRICE FLOAT(5,2),
	PUB_LOCAL CHAR(2),
	BOOK_YEAR INT(4)
);

INSERT INTO LIVROS(COD, BOOK_NAME,	AUTHOR_NAME, AUTHOR_GENRE, PAG_NUMBER, PUB_COMP, BOOK_PRICE, PUB_LOCAL, BOOK_YEAR) VALUES
	(1, 'Cavaleiro Real', 'Ana Claudia', 'Feminino', 465, 'Atlas', 49.9, 'RJ', 2009),
	(2, 'SQL Para Leigos', 'Joao Nunes', 'Masculino', 450, 'Addison', 98, 'SP', 2018),
	(3, 'Receitas Caseiras', 'Celia Tavares', 'Feminino', 210, 'Atlas', 45, 'RJ', 2008),
	(4, 'Pessoas Afetivas', 'Eduardo Santos', 'Masculino', 390, 'Beta', 78.99, 'RJ', 2018),
	(5, 'Habitos Saudaveis', 'Eduardo Santos', 'Masculino', 630, 'Beta', 150.98, 'RJ', 2019),
	(6, 'A Casa Marrom', 'Hermes Macedo', 'Masculino', 250, 'Bubba', 60, 'MG', 2016),
	(7, 'Estado Querido', 'Geraldo Francisco', 'Masculino', 310, 'Insignia', 100, 'ES', 2015),
	(8, 'Pra Sempre Amigas', 'Leda Silva', 'Feminino', 510, 'Insignia', 78.98, 'ES', 2011),
	(9, 'Copas Inesqueciveis', 'Marco Alcantara', 'Masculino', 200, 'Larson', 130.98, 'RS', 2018),
	(10, 'O Poder da Mente', 'Clara Mafra', 'Feminino', 120, 'Continental', 56.58,'SP', 2017);

+------+---------------------+-------------------+--------------+------------+-------------+------------+-----------+-----------+
| COD  | BOOK_NAME           | AUTHOR_NAME       | AUTHOR_GENRE | PAG_NUMBER | PUB_COMP    | BOOK_PRICE | PUB_LOCAL | BOOK_YEAR |
+------+---------------------+-------------------+--------------+------------+-------------+------------+-----------+-----------+
|    1 | Cavaleiro Real      | Ana Claudia       | Feminino     |        465 | Atlas       |      49.90 | RJ        |      2009 |
|    2 | SQL Para Leigos     | Joao Nunes        | Masculino    |        450 | Addison     |      98.00 | SP        |      2018 |
|    3 | Receitas Caseiras   | Celia Tavares     | Feminino     |        210 | Atlas       |      45.00 | RJ        |      2008 |
|    4 | Pessoas Afetivas    | Eduardo Santos    | Masculino    |        390 | Beta        |      78.99 | RJ        |      2018 |
|    5 | Habitos Saudaveis   | Eduardo Santos    | Masculino    |        630 | Beta        |     150.98 | RJ        |      2019 |
|    6 | A Casa Marrom       | Hermes Macedo     | Masculino    |        250 | Bubba       |      60.00 | MG        |      2016 |
|    7 | Estado Querido      | Geraldo Francisco | Masculino    |        310 | Insignia    |     100.00 | ES        |      2015 |
|    8 | Pra Sempre Amigas   | Leda Silva        | Feminino     |        510 | Insignia    |      78.98 | ES        |      2011 |
|    9 | Copas Inesqueciveis | Marco Alcantara   | Masculino    |        200 | Larson      |     130.98 | RS        |      2018 |
|   10 | O Poder da Mente    | Clara Mafra       | Feminino     |        120 | Continental |      56.58 | SP        |      2017 |
+------+---------------------+-------------------+--------------+------------+-------------+------------+-----------+-----------+
10 rows in set (0.00 sec)

/* Mostre todos os registros dos campos "BOOK_NAME" e "PAG_NUMBER" da tabela Livros. */
SELECT BOOK_NAME, PAG_NUMBER FROM LIVROS;
	
+---------------------+------------+
| BOOK_NAME           | PAG_NUMBER |
+---------------------+------------+
| Cavaleiro Real      |        465 |
| SQL Para Leigos     |        450 |
| Receitas Caseiras   |        210 |
| Pessoas Afetivas    |        390 |
| Habitos Saudaveis   |        630 |
| A Casa Marrom       |        250 |
| Estado Querido      |        310 |
| Pra Sempre Amigas   |        510 |
| Copas Inesqueciveis |        200 |
| O Poder da Mente    |        120 |
+---------------------+------------+
10 rows in set (0.00 sec)

/* Mostre todos os registros de "AUTHOR_NAME", "AUTHOR_GENRE", "PUB_LOCAL" da tabela Livros. */
SELECT AUTHOR_NAME, AUTHOR_GENRE, PUB_LOCAL FROM LIVROS;
+-------------------+--------------+-----------+
| AUTHOR_NAME       | AUTHOR_GENRE | PUB_LOCAL |
+-------------------+--------------+-----------+
| Ana Claudia       | Feminino     | RJ        |
| Joao Nunes        | Masculino    | SP        |
| Celia Tavares     | Feminino     | RJ        |
| Eduardo Santos    | Masculino    | RJ        |
| Eduardo Santos    | Masculino    | RJ        |
| Hermes Macedo     | Masculino    | MG        |
| Geraldo Francisco | Masculino    | ES        |
| Leda Silva        | Feminino     | ES        |
| Marco Alcantara   | Masculino    | RS        |
| Clara Mafra       | Feminino     | SP        |
+-------------------+--------------+-----------+
10 rows in set (0.00 sec)

/* Mostre todos os registros de "BOOK_NAME", "PUB_COMP", "BOOK_PRICE", "BOOK_YEAR" da tabela Livros. */
SELECT BOOK_NAME, PUB_COMP, BOOK_PRICE, BOOK_YEAR FROM LIVROS;
+---------------------+-------------+------------+-----------+
| BOOK_NAME           | PUB_COMP    | BOOK_PRICE | BOOK_YEAR |
+---------------------+-------------+------------+-----------+
| Cavaleiro Real      | Atlas       |      49.90 |      2009 |
| SQL Para Leigos     | Addison     |      98.00 |      2018 |
| Receitas Caseiras   | Atlas       |      45.00 |      2008 |
| Pessoas Afetivas    | Beta        |      78.99 |      2018 |
| Habitos Saudaveis   | Beta        |     150.98 |      2019 |
| A Casa Marrom       | Bubba       |      60.00 |      2016 |
| Estado Querido      | Insignia    |     100.00 |      2015 |
| Pra Sempre Amigas   | Insignia    |      78.98 |      2011 |
| Copas Inesqueciveis | Larson      |     130.98 |      2018 |
| O Poder da Mente    | Continental |      56.58 |      2017 |
+---------------------+-------------+------------+-----------+

/* Mostre todos os registros de "BOOK_YEAR", "PUB_COMP", "AUTHOR_NAME", "BOOK_NAME" da tabela Livros. */
SELECT BOOK_YEAR, PUB_COMP, AUTHOR_NAME, BOOK_NAME FROM LIVROS;
+-----------+-------------+-------------------+---------------------+
| BOOK_YEAR | PUB_COMP    | AUTHOR_NAME       | BOOK_NAME           |
+-----------+-------------+-------------------+---------------------+
|      2009 | Atlas       | Ana Claudia       | Cavaleiro Real      |
|      2018 | Addison     | Joao Nunes        | SQL Para Leigos     |
|      2008 | Atlas       | Celia Tavares     | Receitas Caseiras   |
|      2018 | Beta        | Eduardo Santos    | Pessoas Afetivas    |
|      2019 | Beta        | Eduardo Santos    | Habitos Saudaveis   |
|      2016 | Bubba       | Hermes Macedo     | A Casa Marrom       |
|      2015 | Insignia    | Geraldo Francisco | Estado Querido      |
|      2011 | Insignia    | Leda Silva        | Pra Sempre Amigas   |
|      2018 | Larson      | Marco Alcantara   | Copas Inesqueciveis |
|      2017 | Continental | Clara Mafra       | O Poder da Mente    |
+-----------+-------------+-------------------+---------------------+
10 rows in set (0.00 sec)

/* Mostrar todos os registros da tabela LIVROS onde o genero do autor for igual à "Feminino". */
SELECT * FROM LIVROS WHERE AUTHOR_GENRE='Feminino';
+------+-------------------+---------------+--------------+------------+-------------+------------+-----------+-----------+
| COD  | BOOK_NAME         | AUTHOR_NAME   | AUTHOR_GENRE | PAG_NUMBER | PUB_COMP    | BOOK_PRICE | PUB_LOCAL | BOOK_YEAR |
+------+-------------------+---------------+--------------+------------+-------------+------------+-----------+-----------+
|    1 | Cavaleiro Real    | Ana Claudia   | Feminino     |        465 | Atlas       |      49.90 | RJ        |      2009 |
|    3 | Receitas Caseiras | Celia Tavares | Feminino     |        210 | Atlas       |      45.00 | RJ        |      2008 |
|    8 | Pra Sempre Amigas | Leda Silva    | Feminino     |        510 | Insignia    |      78.98 | ES        |      2011 |
|   10 | O Poder da Mente  | Clara Mafra   | Feminino     |        120 | Continental |      56.58 | SP        |      2017 |
+------+-------------------+---------------+--------------+------------+-------------+------------+-----------+-----------+
4 rows in set (0.00 sec)

/* Mostrar os campos "AUTHOR_NAME", "BOOK_NAME", "PUB_LOCAL" da tabela LIVROS onde o "PUB_LOCAL" for igual à "RJ". */
SELECT AUTHOR_NAME, BOOK_NAME, PUB_LOCAL FROM LIVROS
WHERE PUB_LOCAL = 'RJ';
+----------------+-------------------+-----------+
| AUTHOR_NAME    | BOOK_NAME         | PUB_LOCAL |
+----------------+-------------------+-----------+
| Ana Claudia    | Cavaleiro Real    | RJ        |
| Celia Tavares  | Receitas Caseiras | RJ        |
| Eduardo Santos | Pessoas Afetivas  | RJ        |
| Eduardo Santos | Habitos Saudaveis | RJ        |
+----------------+-------------------+-----------+
4 rows in set (0.00 sec)

/* Mostrar os campos "BOOK_YEAR", "BOOK_NAME", "PUB_COMP" da tabela LIVROS onde o "PUB_COMP" for igual à "Atlas". */
SELECT BOOK_YEAR, BOOK_NAME, PUB_COMP FROM LIVROS WHERE PUB_COMP = 'Atlas';
+-----------+-------------------+----------+
| BOOK_YEAR | BOOK_NAME         | PUB_COMP |
+-----------+-------------------+----------+
|      2009 | Cavaleiro Real    | Atlas    |
|      2008 | Receitas Caseiras | Atlas    |
+-----------+-------------------+----------+
2 rows in set (0.00 sec)

/* Mostrar os campos "BOOK_NAME", "PAG_NUMBER", "PUB_COMP", "BOOK_PRICE" da tabela LIVROS onde o "BOOK_PRICE" for maior que 50. */
SELECT BOOK_NAME, PAG_NUMBER, PUB_COMP, BOOK_PRICE FROM LIVROS WHERE BOOK_PRICE > 50;
+---------------------+------------+-------------+------------+
| BOOK_NAME           | PAG_NUMBER | PUB_COMP    | BOOK_PRICE |
+---------------------+------------+-------------+------------+
| SQL Para Leigos     |        450 | Addison     |      98.00 |
| Pessoas Afetivas    |        390 | Beta        |      78.99 |
| Habitos Saudaveis   |        630 | Beta        |     150.98 |
| A Casa Marrom       |        250 | Bubba       |      60.00 |
| Estado Querido      |        310 | Insignia    |     100.00 |
| Pra Sempre Amigas   |        510 | Insignia    |      78.98 |
| Copas Inesqueciveis |        200 | Larson      |     130.98 |
| O Poder da Mente    |        120 | Continental |      56.58 |
+---------------------+------------+-------------+------------+
8 rows in set (0.02 sec)

/* Mostrar os campos "BOOK_NAME", "PAG_NUMBER", "BOOK_PRICE", "PUB_LOCAL" da tabela LIVROS onde o "PUB_LOCAL" for diferente de "SP". */
SELECT BOOK_NAME, PAG_NUMBER, BOOK_PRICE, PUB_LOCAL FROM LIVROS WHERE PUB_LOCAL != 'SP';
+---------------------+------------+------------+-----------+
| BOOK_NAME           | PAG_NUMBER | BOOK_PRICE | PUB_LOCAL |
+---------------------+------------+------------+-----------+
| Cavaleiro Real      |        465 |      49.90 | RJ        |
| Receitas Caseiras   |        210 |      45.00 | RJ        |
| Pessoas Afetivas    |        390 |      78.99 | RJ        |
| Habitos Saudaveis   |        630 |     150.98 | RJ        |
| A Casa Marrom       |        250 |      60.00 | MG        |
| Estado Querido      |        310 |     100.00 | ES        |
| Pra Sempre Amigas   |        510 |      78.98 | ES        |
| Copas Inesqueciveis |        200 |     130.98 | RS        |
+---------------------+------------+------------+-----------+
8 rows in set (0.00 sec)

/* Mostrar os campos "BOOK_NAME", "AUTHOR_NAME", "PAG_NUMBER" e "BOOK_PRICE" da tabela LIVROS onde o "BOOK_PRICE" for maior que 100. */
SELECT BOOK_NAME, AUTHOR_NAME, PAG_NUMBER, BOOK_PRICE FROM LIVROS WHERE BOOK_PRICE > 100;
+---------------------+-----------------+------------+------------+
| BOOK_NAME           | AUTHOR_NAME     | PAG_NUMBER | BOOK_PRICE |
+---------------------+-----------------+------------+------------+
| Habitos Saudaveis   | Eduardo Santos  |        630 |     150.98 |
| Copas Inesqueciveis | Marco Alcantara |        200 |     130.98 |
+---------------------+-----------------+------------+------------+
2 rows in set (0.00 sec)

/* Mostrar os campos "BOOK_YEAR", "AUTHOR_NAME", "BOOK_NAME" e "PUB_COMP" da tabela LIVROS onde o "PAG_NUMBER" for maior que 150. */
SELECT BOOK_YEAR, AUTHOR_NAME, BOOK_NAME, PUB_COMP, PAG_NUMBER FROM LIVROS WHERE PAG_NUMBER > 150;
+-----------+-------------------+---------------------+----------+------------+
| BOOK_YEAR | AUTHOR_NAME       | BOOK_NAME           | PUB_COMP | PAG_NUMBER |
+-----------+-------------------+---------------------+----------+------------+
|      2009 | Ana Claudia       | Cavaleiro Real      | Atlas    |        465 |
|      2018 | Joao Nunes        | SQL Para Leigos     | Addison  |        450 |
|      2008 | Celia Tavares     | Receitas Caseiras   | Atlas    |        210 |
|      2018 | Eduardo Santos    | Pessoas Afetivas    | Beta     |        390 |
|      2019 | Eduardo Santos    | Habitos Saudaveis   | Beta     |        630 |
|      2016 | Hermes Macedo     | A Casa Marrom       | Bubba    |        250 |
|      2015 | Geraldo Francisco | Estado Querido      | Insignia |        310 |
|      2011 | Leda Silva        | Pra Sempre Amigas   | Insignia |        510 |
|      2018 | Marco Alcantara   | Copas Inesqueciveis | Larson   |        200 |
+-----------+-------------------+---------------------+----------+------------+
9 rows in set (0.01 sec)

/* Mostrar os campos "BOOK_NAME", "BOOK_YEAR" e "PUB_COMP" da tabela LIVROS onde o "PUB_COMP" for igual à "Beta". */
SELECT BOOK_NAME, BOOK_YEAR, PUB_COMP FROM LIVROS WHERE PUB_COMP = 'beta';
+-------------------+-----------+----------+
| BOOK_NAME         | BOOK_YEAR | PUB_COMP |
+-------------------+-----------+----------+
| Pessoas Afetivas  |      2018 | Beta     |
| Habitos Saudaveis |      2019 | Beta     |
+-------------------+-----------+----------+
2 rows in set (0.00 sec)

/* OPERADOR LIKE */
SELECT BOOK_NAME, AUTHOR_NAME FROM LIVROS
WHERE AUTHOR_NAME LIKE '%SANTOS';

/* Mostrar os campos "AUTHOR_NAME", "BOOK_NAME" e "PUB_COMP" da tabela livros onde o "PUB_COMP" termina com 'a'. */
SELECT AUTHOR_NAME, BOOK_NAME, PUB_COMP  FROM LIVROS
WHERE PUB_COMP LIKE '%A';
+-------------------+-------------------+----------+
| AUTHOR_NAME       | BOOK_NAME         | PUB_COMP |
+-------------------+-------------------+----------+
| Eduardo Santos    | Pessoas Afetivas  | Beta     |
| Eduardo Santos    | Habitos Saudaveis | Beta     |
| Hermes Macedo     | A Casa Marrom     | Bubba    |
| Geraldo Francisco | Estado Querido    | Insignia |
| Leda Silva        | Pra Sempre Amigas | Insignia |
+-------------------+-------------------+----------+
5 rows in set (0.00 sec)

/* Mostrar os campos "BOOK_NAME", "AUTHOR_NAME" e "PUB_COMP" da tabela livros onde o "PUB_COMP" começa com 'a'. */
SELECT BOOK_NAME, AUTHOR_NAME, PUB_COMP FROM LIVROS
WHERE PUB_COMP LIKE 'I%';
+-------------------+-------------------+----------+
| BOOK_NAME         | AUTHOR_NAME       | PUB_COMP |
+-------------------+-------------------+----------+
| Estado Querido    | Geraldo Francisco | Insignia |
| Pra Sempre Amigas | Leda Silva        | Insignia |
+-------------------+-------------------+----------+
2 rows in set (0.00 sec)

SELECT BOOK_NAME, AUTHOR_NAME, AUTHOR_GENRE FROM LIVROS
WHERE AUTHOR_GENRE = "Feminino";
+-------------------+---------------+--------------+
| BOOK_NAME         | AUTHOR_NAME   | AUTHOR_GENRE |
+-------------------+---------------+--------------+
| Cavaleiro Real    | Ana Claudia   | Feminino     |
| Receitas Caseiras | Celia Tavares | Feminino     |
| Pra Sempre Amigas | Leda Silva    | Feminino     |
| O Poder da Mente  | Clara Mafra   | Feminino     |
+-------------------+---------------+--------------+
4 rows in set (0.00 sec)

SELECT TITLE, RELEASE_YEAR, RENTAL_RATE FROM FILM
WHERE RENTAL_RATE < 3;

SELECT BOOK_NAME, AUTHOR_GENRE, PUB_COMP FROM LIVROS
WHERE AUTHOR_GENRE = 'Feminino' AND PUB_COMP = 'Atlas';
+-------------------+--------------+----------+
| BOOK_NAME         | AUTHOR_GENRE | PUB_COMP |
+-------------------+--------------+----------+
| Cavaleiro Real    | Feminino     | Atlas    |
| Receitas Caseiras | Feminino     | Atlas    |
+-------------------+--------------+----------+

SELECT BOOK_NAME, PAG_NUMBER, PUB_LOCAL FROM LIVROS
WHERE PAG_NUMBER > 300 AND PUB_LOCAL = 'RJ';
+-------------------+------------+-----------+
| BOOK_NAME         | PAG_NUMBER | PUB_LOCAL |
+-------------------+------------+-----------+
| Cavaleiro Real    |        465 | RJ        |
| Pessoas Afetivas  |        390 | RJ        |
| Habitos Saudaveis |        630 | RJ        |
+-------------------+------------+-----------+
3 rows in set (0.00 sec)

SELECT AUTHOR_NAME, BOOK_NAME, PUB_COMP, BOOK_PRICE FROM LIVROS
WHERE PUB_COMP LIKE 'A%' AND BOOK_PRICE > 70;
+-------------+-----------------+----------+------------+
| AUTHOR_NAME | BOOK_NAME       | PUB_COMP | BOOK_PRICE |
+-------------+-----------------+----------+------------+
| Joao Nunes  | SQL Para Leigos | Addison  |      98.00 |
+-------------+-----------------+----------+------------+
1 row in set (0.00 sec)

SELECT AUTHOR_NAME, BOOK_NAME, BOOK_PRICE, BOOK_YEAR FROM LIVROS
WHERE BOOK_PRICE <= 100 AND BOOK_YEAR < 2018;

SELECT PUB_COMP, BOOK_PRICE, PUB_LOCAL FROM LIVROS
WHERE PUB_LOCAL LIKE '%J' AND BOOK_PRICE < 80;

SELECT BOOK_NAME, AUTHOR_NAME, BOOK_PRICE FROM LIVROS 
WHERE BOOK_NAME LIKE '%S' AND BOOK_PRICE	> 70;

SELECT * FROM LIVROS
WHERE PUB_COMP = 'Larson' OR AUTHOR_GENRE = 'Feminino';
+------+---------------------+-----------------+--------------+------------+-------------+------------+-----------+-----------+
| COD  | BOOK_NAME           | AUTHOR_NAME     | AUTHOR_GENRE | PAG_NUMBER | PUB_COMP    | BOOK_PRICE | PUB_LOCAL | BOOK_YEAR |
+------+---------------------+-----------------+--------------+------------+-------------+------------+-----------+-----------+
|    1 | Cavaleiro Real      | Ana Claudia     | Feminino     |        465 | Atlas       |      49.90 | RJ        |      2009 |
|    3 | Receitas Caseiras   | Celia Tavares   | Feminino     |        210 | Atlas       |      45.00 | RJ        |      2008 |
|    8 | Pra Sempre Amigas   | Leda Silva      | Feminino     |        510 | Insignia    |      78.98 | ES        |      2011 |
|    9 | Copas Inesqueciveis | Marco Alcantara | Masculino    |        200 | Larson      |     130.98 | RS        |      2018 |
|   10 | O Poder da Mente    | Clara Mafra     | Feminino     |        120 | Continental |      56.58 | SP        |      2017 |
+------+---------------------+-----------------+--------------+------------+-------------+------------+-----------+-----------+

SELECT AUTHOR_NAME, BOOK_NAME, BOOK_PRICE FROM LIVROS
WHERE AUTHOR_NAME LIKE '%A' OR BOOK_PRICE < 100;
+-----------------+---------------------+------------+
| AUTHOR_NAME     | BOOK_NAME           | BOOK_PRICE |
+-----------------+---------------------+------------+
| Ana Claudia     | Cavaleiro Real      |      49.90 |
| Joao Nunes      | SQL Para Leigos     |      98.00 |
| Celia Tavares   | Receitas Caseiras   |      45.00 |
| Eduardo Santos  | Pessoas Afetivas    |      78.99 |
| Hermes Macedo   | A Casa Marrom       |      60.00 |
| Leda Silva      | Pra Sempre Amigas   |      78.98 |
| Marco Alcantara | Copas Inesqueciveis |     130.98 |
| Clara Mafra     | O Poder da Mente    |      56.58 |
+-----------------+---------------------+------------+
8 rows in set (0.00 sec)

SELECT AUTHOR_NAME, BOOK_NAME, PUB_COMP, BOOK_PRICE, PUB_LOCAL FROM LIVROS
WHERE (PUB_COMP LIKE '%A' OR BOOK_PRICE > 50) AND PUB_LOCAL = 'RJ';
+----------------+-------------------+----------+------------+-----------+
| AUTHOR_NAME    | BOOK_NAME         | PUB_COMP | BOOK_PRICE | PUB_LOCAL |
+----------------+-------------------+----------+------------+-----------+
| Eduardo Santos | Pessoas Afetivas  | Beta     |      78.99 | RJ        |
| Eduardo Santos | Habitos Saudaveis | Beta     |     150.98 | RJ        |
+----------------+-------------------+----------+------------+-----------+

SELECT BOOK_NAME, AUTHOR_NAME FROM LIVROS;
+---------------------+-------------------+
| BOOK_NAME           | AUTHOR_NAME       |
+---------------------+-------------------+
| Cavaleiro Real      | Ana Claudia       |
| SQL Para Leigos     | Joao Nunes        |
| Receitas Caseiras   | Celia Tavares     |
| Pessoas Afetivas    | Eduardo Santos    |
| Habitos Saudaveis   | Eduardo Santos    |
| A Casa Marrom       | Hermes Macedo     |
| Estado Querido      | Geraldo Francisco |
| Pra Sempre Amigas   | Leda Silva        |
| Copas Inesqueciveis | Marco Alcantara   |
| O Poder da Mente    | Clara Mafra       |
+---------------------+-------------------+
10 rows in set (0.00 sec)

SELECT BOOK_NAME AS Título, AUTHOR_NAME AS Escritor FROM LIVROS;
+---------------------+-------------------+
| Título              | Escritor          |
+---------------------+-------------------+
| Cavaleiro Real      | Ana Claudia       |
| SQL Para Leigos     | Joao Nunes        |
| Receitas Caseiras   | Celia Tavares     |
| Pessoas Afetivas    | Eduardo Santos    |
| Habitos Saudaveis   | Eduardo Santos    |
| A Casa Marrom       | Hermes Macedo     |
| Estado Querido      | Geraldo Francisco |
| Pra Sempre Amigas   | Leda Silva        |
| Copas Inesqueciveis | Marco Alcantara   |
| O Poder da Mente    | Clara Mafra       |
+---------------------+-------------------+

SELECT CURDATE(); -- MOSTRAR DATA ATUAL

SELECT CURTIME(); -- MOSTRAR HORA ATUAL

SELECT NOW(); -- MOSTRAR DATA E HORA ATUAL(ESSE E OUTRAS FUNÇÕES ACIMA FUNCIONAM O "AS")

SELECT BOOK_NAME, CURDATE() FROM LIVROS;

SELECT BOOK_NAME, AUTHOR_NAME, NOW() FROM LIVROS;
+---------------------+-------------------+---------------------+
| BOOK_NAME           | AUTHOR_NAME       | NOW()               |
+---------------------+-------------------+---------------------+
| Cavaleiro Real      | Ana Claudia       | 2022-09-28 15:22:55 |
| SQL Para Leigos     | Joao Nunes        | 2022-09-28 15:22:55 |
| Receitas Caseiras   | Celia Tavares     | 2022-09-28 15:22:55 |
| Pessoas Afetivas    | Eduardo Santos    | 2022-09-28 15:22:55 |
| Habitos Saudaveis   | Eduardo Santos    | 2022-09-28 15:22:55 |
| A Casa Marrom       | Hermes Macedo     | 2022-09-28 15:22:55 |
| Estado Querido      | Geraldo Francisco | 2022-09-28 15:22:55 |
| Pra Sempre Amigas   | Leda Silva        | 2022-09-28 15:22:55 |
| Copas Inesqueciveis | Marco Alcantara   | 2022-09-28 15:22:55 |
| O Poder da Mente    | Clara Mafra       | 2022-09-28 15:22:55 |
+---------------------+-------------------+---------------------+
10 rows in set (0.00 sec)

SELECT BOOK_NAME, BOOK_PRICE, BOOK_PRICE * 0.2 AS DESCONTO FROM LIVROS;
+---------------------+------------+----------+
| BOOK_NAME           | BOOK_PRICE | DESCONTO |
+---------------------+------------+----------+
| Cavaleiro Real      |      49.90 |     9.98 |
| SQL Para Leigos     |      98.00 |    19.60 |
| Receitas Caseiras   |      45.00 |     9.00 |
| Pessoas Afetivas    |      78.99 |    15.80 |
| Habitos Saudaveis   |     150.98 |    30.20 |
| A Casa Marrom       |      60.00 |    12.00 |
| Estado Querido      |     100.00 |    20.00 |
| Pra Sempre Amigas   |      78.98 |    15.80 |
| Copas Inesqueciveis |     130.98 |    26.20 |
| O Poder da Mente    |      56.58 |    11.32 |
+---------------------+------------+----------+

SELECT BOOK_NAME, BOOK_PRICE, BOOK_PRICE - BOOK_PRICE * 0.2 AS PRICE_DISCOUNT FROM LIVROS;
+---------------------+------------+----------------+
| BOOK_NAME           | BOOK_PRICE | PRICE_DISCOUNT |
+---------------------+------------+----------------+
| Cavaleiro Real      |      49.90 |          39.92 |
| SQL Para Leigos     |      98.00 |          78.40 |
| Receitas Caseiras   |      45.00 |          36.00 |
| Pessoas Afetivas    |      78.99 |          63.19 |
| Habitos Saudaveis   |     150.98 |         120.78 |
| A Casa Marrom       |      60.00 |          48.00 |
| Estado Querido      |     100.00 |          80.00 |
| Pra Sempre Amigas   |      78.98 |          63.18 |
| Copas Inesqueciveis |     130.98 |         104.78 |
| O Poder da Mente    |      56.58 |          45.26 |
+---------------------+------------+----------------+

CREATE DATABASE TESTE;
USE TESTE;

CREATE TABLE FUNCIONARIOS(
	NOME VARCHAR(30),
	NASC DATE
);

INSERT INTO FUNCIONARIOS(NOME, NASC) VALUES
('Tiberio', '1983-06-28'),
('Cristian', 19720911);

SELECT *, TIMESTAMPDIFF(YEAR, NASC, CURDATE()) AS IDADE FROM FUNCIONARIOS;
+----------+------------+-------+
| NOME     | NASC       | IDADE |
+----------+------------+-------+
| Tiberio  | 1983-06-28 |    39 |
| Cristian | 1972-09-11 |    50 |
+----------+------------+-------+

SELECT NOME, NASC AS NASCIMENTO, TIMESTAMPDIFF(YEAR, NASC, CURDATE()) AS DIFERENÇA FROM FUNCIONARIOS;

ALTER TABLE NOME_TABELA ADD COLUMN NOME_COLUNA VARCHAR(100);

ALTER TABLE FUNCIONARIOS ADD COLUMN SOBRENOME VARCHAR(30);

+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| NOME      | varchar(30) | YES  |     | NULL    |       |
| NASC      | date        | YES  |     | NULL    |       |
| SOBRENOME | varchar(30) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

ALTER TABLE FUNCIONARIOS DROP SOBRENOME;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| NOME  | varchar(30) | YES  |     | NULL    |       |
| NASC  | date        | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

ALTER TABLE NOME_TABELA ADD COLUMN NOME_COLUNA INT AFTER NOME_COLUNA;

ALTER TABLE FUNCIONARIOS ADD COLUMN SOBRENOME VARCHAR(30) AFTER NOME;

ALTER TABLE FUNCIONARIOS DROP SOBRENOME;

ALTER TABLE FUNCIONARIOS ADD COLUMN CODIGO INT(3)PRIMARY KEY CODIGO;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| CODIGO | int(3)      | YES  |     | NULL    |       |
| NOME   | varchar(30) | YES  |     | NULL    |       |
| NASC   | date        | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+

ALTER TABLE FUNCIONARIOS ADD COLUMN SALARIO INT(5)AFTER NOME;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| NOME    | varchar(30) | YES  |     | NULL    |       |
| SALARIO | int(5)      | YES  |     | NULL    |       |
| NASC    | date        | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+

UPDATE FUNCIONARIOS
SET SALARIO = 25000
WHERE NOME = 'TIBERIO';

UPDATE FUNCIONARIOS
SET SALARIO = 500
WHERE NOME = 'CRISTHIAN';

+----------+---------+------------+
| NOME     | SALARIO | NASC       |
+----------+---------+------------+
| Tiberio  |   25000 | 1983-06-28 |
| Cristian |   25000 | 1972-09-11 |
+----------+---------+------------+

INSERT INTO FUNCIONARIOS(NOME, SALARIO, NASC) VALUES
('JOAOZINHO', 6500, 19610325);
+-----------+---------+------------+
| NOME      | SALARIO | NASC       |
+-----------+---------+------------+
| Tiberio   |   25000 | 1983-06-28 |
| Cristian  |   25000 | 1972-09-11 |
| JOAOZINHO |    6500 | 1961-03-25 |
+-----------+---------+------------+
3 rows in set (0.01 sec)

----------------------------------------ATIVIDADE II-------------------------------------------


/*

11. Trazer o Nome do Livro, Nome do Autor e Idade
12. Trazer o Nome do Livro, Nome do Autor e a Idade

*/

/* 1. Trazer todos os dados da tabela Livros. */
SELECT * FROM LIVROS;
+------+---------------------+-------------------+--------------+------------+-------------+------------+-----------+-----------+
| COD  | BOOK_NAME           | AUTHOR_NAME       | AUTHOR_GENRE | PAG_NUMBER | PUB_COMP    | BOOK_PRICE | PUB_LOCAL | BOOK_YEAR |
+------+---------------------+-------------------+--------------+------------+-------------+------------+-----------+-----------+
|    1 | Cavaleiro Real      | Ana Claudia       | Feminino     |        465 | Atlas       |      49.90 | RJ        |      2009 |
|    2 | SQL Para Leigos     | Joao Nunes        | Masculino    |        450 | Addison     |      98.00 | SP        |      2018 |
|    3 | Receitas Caseiras   | Celia Tavares     | Feminino     |        210 | Atlas       |      45.00 | RJ        |      2008 |
|    4 | Pessoas Afetivas    | Eduardo Santos    | Masculino    |        390 | Beta        |      78.99 | RJ        |      2018 |
|    5 | Habitos Saudaveis   | Eduardo Santos    | Masculino    |        630 | Beta        |     150.98 | RJ        |      2019 |
|    6 | A Casa Marrom       | Hermes Macedo     | Masculino    |        250 | Bubba       |      60.00 | MG        |      2016 |
|    7 | Estado Querido      | Geraldo Francisco | Masculino    |        310 | Insignia    |     100.00 | ES        |      2015 |
|    8 | Pra Sempre Amigas   | Leda Silva        | Feminino     |        510 | Insignia    |      78.98 | ES        |      2011 |
|    9 | Copas Inesqueciveis | Marco Alcantara   | Masculino    |        200 | Larson      |     130.98 | RS        |      2018 |
|   10 | O Poder da Mente    | Clara Mafra       | Feminino     |        120 | Continental |      56.58 | SP        |      2017 |
+------+---------------------+-------------------+--------------+------------+-------------+------------+-----------+-----------+

/*2. Trazer todos os dados da tabela Livros, criando um alias para cada campo (coluna).*/

SELECT COD AS Codigo, BOOK_NAME AS Nome_do_Livro, AUTHOR_NAME AS Nome_do_Autor, AUTHOR_GENRE AS Genero_do_Autor, PAG_NUMBER AS Numero_de_Paginas, PUB_COMP AS Editora, BOOK_PRICE AS Preco_do_Livro, PUB_LOCAL AS Estado_da_Editora, BOOK_YEAR AS Nome_do_livro FROM LIVROS;
---------+----------------+-------------------+---------------+
| Codigo | Nome_do_Livro       | Nome_do_Autor     | Genero_do_Autor | Numero_de_Paginas | Editora     | Preco_do_Livro | Estado_da_Editora | Nome_do_livro |
+--------+---------------------+-------------------+-----------------+-------------------+-------------+----------------+-------------------+---------------+
|      1 | Cavaleiro Real      | Ana Claudia       | Feminino        |               465 | Atlas       |          49.90 | RJ                |          2009 |
|      2 | SQL Para Leigos     | Joao Nunes        | Masculino       |               450 | Addison     |          98.00 | SP                |          2018 |
|      3 | Receitas Caseiras   | Celia Tavares     | Feminino        |               210 | Atlas       |          45.00 | RJ                |          2008 |
|      4 | Pessoas Afetivas    | Eduardo Santos    | Masculino       |               390 | Beta        |          78.99 | RJ                |          2018 |
|      5 | Habitos Saudaveis   | Eduardo Santos    | Masculino       |               630 | Beta        |         150.98 | RJ                |          2019 |
|      6 | A Casa Marrom       | Hermes Macedo     | Masculino       |               250 | Bubba       |          60.00 | MG                |          2016 |
|      7 | Estado Querido      | Geraldo Francisco | Masculino       |               310 | Insignia    |         100.00 | ES                |          2015 |
|      8 | Pra Sempre Amigas   | Leda Silva        | Feminino        |               510 | Insignia    |          78.98 | ES                |          2011 |
|      9 | Copas Inesqueciveis | Marco Alcantara   | Masculino       |               200 | Larson      |         130.98 | RS                |          2018 |
|     10 | O Poder da Mente    | Clara Mafra       | Feminino        |               120 | Continental |          56.58 | SP                |          2017 |
+--------+---------------------+-------------------+-----------------+-------------------+-------------+----------------+-------------------+---------------+

/*3. Trazer o Nome do Livro com o alias Livro e o Nome da Editora com o alias Editora.*/

SELECT BOOK_NAME AS Livro, PUB_LOCAL AS Editora FROM LIVROS;
+---------------------+---------+
| Livro               | Editora |
+---------------------+---------+
| Cavaleiro Real      | RJ      |
| SQL Para Leigos     | SP      |
| Receitas Caseiras   | RJ      |
| Pessoas Afetivas    | RJ      |
| Habitos Saudaveis   | RJ      |
| A Casa Marrom       | MG      |
| Estado Querido      | ES      |
| Pra Sempre Amigas   | ES      |
| Copas Inesqueciveis | RS      |
| O Poder da Mente    | SP      |
+---------------------+---------+
10 rows in set (0.00 sec)

/*4. Trazer o Nome do Livro com o alias Livro e o Valor do Livro com o alias Valor R$.*/

SELECT BOOK_NAME AS Livro, BOOK_PRICE AS Valor_R$ FROM LIVROS;
+---------------------+----------+
| Livro               | Valor_R$ |
+---------------------+----------+
| Cavaleiro Real      |    49.90 |
| SQL Para Leigos     |    98.00 |
| Receitas Caseiras   |    45.00 |
| Pessoas Afetivas    |    78.99 |
| Habitos Saudaveis   |   150.98 |
| A Casa Marrom       |    60.00 |
| Estado Querido      |   100.00 |
| Pra Sempre Amigas   |    78.98 |
| Copas Inesqueciveis |   130.98 |
| O Poder da Mente    |    56.58 |
+---------------------+----------+
10 rows in set (0.00 sec)

/*5. Trazer todos os dados da tabela e incluir uma coluna chamada Valor_A_Prazo que será calculada através do
acréscimo de 30% em relação ao Valor do Livro.*/

SELECT *, BOOK_PRICE + BOOK_PRICE * 0.3 AS VALOR_A_PRAZO FROM LIVROS;
+------+---------------------+-------------------+------------+--------------+------------+-------------+------------+-----------+-----------+---------------+
| COD  | BOOK_NAME           | AUTHOR_NAME       | DATA_NASC  | AUTHOR_GENRE | PAG_NUMBER | PUB_COMP    | BOOK_PRICE | PUB_LOCAL | BOOK_YEAR | VALOR_A_PRAZO |
+------+---------------------+-------------------+------------+--------------+------------+-------------+------------+-----------+-----------+---------------+
|    1 | Cavaleiro Real      | Ana Claudia       | 1980-05-04 | Feminino     |        465 | Atlas       |      49.90 | RJ        |      2009 |         64.87 |
|    2 | SQL Para Leigos     | Joao Nunes        | 1975-01-21 | Masculino    |        450 | Addison     |      98.00 | SP        |      2018 |        127.40 |
|    3 | Receitas Caseiras   | Celia Tavares     | 1989-07-18 | Feminino     |        210 | Atlas       |      45.00 | RJ        |      2008 |         58.50 |
|    4 | Pessoas Afetivas    | Eduardo Santos    | 1971-11-24 | Masculino    |        390 | Beta        |      78.99 | RJ        |      2018 |        102.69 |
|    5 | Habitos Saudaveis   | Eduardo Santos    | 1971-11-24 | Masculino    |        630 | Beta        |     150.98 | RJ        |      2019 |        196.27 |
|    6 | A Casa Marrom       | Hermes Macedo     | NULL       | Masculino    |        250 | Bubba       |      60.00 | MG        |      2016 |         78.00 |
|    7 | Estado Querido      | Geraldo Francisco | NULL       | Masculino    |        310 | Insignia    |     100.00 | ES        |      2015 |        130.00 |
|    8 | Pra Sempre Amigas   | Leda Silva        | NULL       | Feminino     |        510 | Insignia    |      78.98 | ES        |      2011 |        102.67 |
|    9 | Copas Inesqueciveis | Marco Alcantara   | NULL       | Masculino    |        200 | Larson      |     130.98 | RS        |      2018 |        170.27 |
|   10 | O Poder da Mente    | Clara Mafra       | NULL       | Feminino     |        120 | Continental |      56.58 | SP        |      2017 |         73.55 |
+------+---------------------+-------------------+------------+--------------+------------+-------------+------------+-----------+-----------+---------------+
10 rows in set (0.00 sec)

/*6. Criar uma coluna Data_Nasc após a coluna Nome do Autor.*/

ALTER TABLE LIVROS ADD COLUMN DATA_NASC DATE AFTER AUTHOR_NAME;

/*7. Faça um UPDADE em todos os registros com a as seguintes datas de nascimento:
Nome do Autor: Ana Claudia Data de Nascimento: 1980-05-04
Nome do Autor: Joao Nunes Data de Nascimento: 1975-01-21
Nome do Autor: Celia Tavares Data de Nascimento: 1989-07-18
Nome do Autor: Eduardo Santos Data de Nascimento: 1971-11-24
Nome do Autor: Hermes Macedo Data de Nascimento: 1991-02-14
Nome do Autor: Geraldo Francisco Data de Nascimento: 1981-03-10
Nome do Autor: Leda Silva Data de Nascimento: 1988-09-13
Nome do Autor: Marco Alcantara Data de Nascimento: 1969-08-17
Nome do Autor: Clara Mafra Data de Nascimento: 1994-06-27*/

UPDATE LIVROS
SET DATA_NASC = 19940627
WHERE AUTHOR_NAME = 'Clara Mafra';

+------+---------------------+-------------------+------------+--------------+------------+-------------+------------+-----------+-----------+
| COD  | BOOK_NAME           | AUTHOR_NAME       | DATA_NASC  | AUTHOR_GENRE | PAG_NUMBER | PUB_COMP    | BOOK_PRICE | PUB_LOCAL | BOOK_YEAR |
+------+---------------------+-------------------+------------+--------------+------------+-------------+------------+-----------+-----------+
|    1 | Cavaleiro Real      | Ana Claudia       | 19800504 | Feminino     |        465 | Atlas       |      49.90 | RJ        |      2009 |
|    2 | SQL Para Leigos     | Joao Nunes        | 19750121 | Masculino    |        450 | Addison     |      98.00 | SP        |      2018 |
|    3 | Receitas Caseiras   | Celia Tavares     | 19890718 | Feminino     |        210 | Atlas       |      45.00 | RJ        |      2008 |
|    4 | Pessoas Afetivas    | Eduardo Santos    | 19711124 | Masculino    |        390 | Beta        |      78.99 | RJ        |      2018 |
|    5 | Habitos Saudaveis   | Eduardo Santos    | 19711124 | Masculino    |        630 | Beta        |     150.98 | RJ        |      2019 |
|    6 | A Casa Marrom       | Hermes Macedo     | 19910214 | Masculino    |        250 | Bubba       |      60.00 | MG        |      2016 |
|    7 | Estado Querido      | Geraldo Francisco | 19810310 | Masculino    |        310 | Insignia    |     100.00 | ES        |      2015 |
|    8 | Pra Sempre Amigas   | Leda Silva        | 19880913 | Feminino     |        510 | Insignia    |      78.98 | ES        |      2011 |
|    9 | Copas Inesqueciveis | Marco Alcantara   | 19690817 | Masculino    |        200 | Larson      |     130.98 | RS        |      2018 |
|   10 | O Poder da Mente    | Clara Mafra       | 19940627 | Feminino     |        120 | Continental |      56.58 | SP        |      2017 |
+------+---------------------+-------------------+------------+--------------+------------+-------------+------------+-----------+-----------+
10 rows in set (0.00 sec)

/*8. Crie uma coluna Idade após a coluna Data_Nasc.*/

ALTER TABLE LIVROS ADD COLUMN IDADE INT(2) AFTER DATA_NASC;

/*9. Utilize a função TIMESTAMPDIFF para calcular a idade de cada Autor.*/

UPDATE LIVROS
SET IDADE = TIMESTAMPDIFF(YEAR, 19800504, CURDATE())
WHERE AUTHOR_NAME = 'Ana Claudia';
UPDATE LIVROS
SET IDADE = TIMESTAMPDIFF(YEAR, 19750121, CURDATE())
WHERE AUTHOR_NAME = 'Joao Nunes';
UPDATE LIVROS
SET IDADE = TIMESTAMPDIFF(YEAR, 19890718, CURDATE())
WHERE AUTHOR_NAME = 'Celia Tavares';
UPDATE LIVROS
SET IDADE = TIMESTAMPDIFF(YEAR, 19711124, CURDATE())
WHERE AUTHOR_NAME = 'Eduardo Santos';
UPDATE LIVROS
SET IDADE = TIMESTAMPDIFF(YEAR, 19711124, CURDATE())
WHERE AUTHOR_NAME = 'Eduardo Santos';
UPDATE LIVROS
SET IDADE = TIMESTAMPDIFF(YEAR, 19910214, CURDATE())
WHERE AUTHOR_NAME = 'Hermes Macedo';
UPDATE LIVROS
SET IDADE = TIMESTAMPDIFF(YEAR, 19810310, CURDATE())
WHERE AUTHOR_NAME = 'Geraldo Francisco';
UPDATE LIVROS
SET IDADE = TIMESTAMPDIFF(YEAR, 19880913, CURDATE())
WHERE AUTHOR_NAME = 'Leda Silva';
UPDATE LIVROS
SET IDADE = TIMESTAMPDIFF(YEAR, 19690817, CURDATE())
WHERE AUTHOR_NAME = 'Marco Alcantara';
UPDATE LIVROS
SET IDADE = TIMESTAMPDIFF(YEAR, 19800504, CURDATE())
WHERE AUTHOR_NAME = 'Clara Mafra ';

/* 10. Trazer o Nome do Autor e a Idade cuja idade seja maior ou igual a 30 anos. */

SELECT AUTHOR_NAME, IDADE FROM LIVROS WHERE IDADE >=30;
+-------------------+-------+
| AUTHOR_NAME       | IDADE |
+-------------------+-------+
| Ana Claudia       |    42 |
| Joao Nunes        |    47 |
| Celia Tavares     |    33 |
| Eduardo Santos    |    50 |
| Eduardo Santos    |    50 |
| Hermes Macedo     |    31 |
| Geraldo Francisco |    41 |
| Leda Silva        |    34 |
| Marco Alcantara   |    53 |
| Clara Mafra       |    42 |
+-------------------+-------+
10 rows in set (0.00 sec)

/*12. Trazer o Nome do Livro, Nome do Autor e a Idade.*/

SELECT BOOK_NAME, AUTHOR_NAME, IDADE FROM LIVROS;
+---------------------+-------------------+-------+
| BOOK_NAME           | AUTHOR_NAME       | IDADE |
+---------------------+-------------------+-------+
| Cavaleiro Real      | Ana Claudia       |    42 |
| SQL Para Leigos     | Joao Nunes        |    47 |
| Receitas Caseiras   | Celia Tavares     |    33 |
| Pessoas Afetivas    | Eduardo Santos    |    50 |
| Habitos Saudaveis   | Eduardo Santos    |    50 |
| A Casa Marrom       | Hermes Macedo     |    31 |
| Estado Querido      | Geraldo Francisco |    41 |
| Pra Sempre Amigas   | Leda Silva        |    34 |
| Copas Inesqueciveis | Marco Alcantara   |    53 |
| O Poder da Mente    | Clara Mafra       |    42 |
+---------------------+-------------------+-------+
11 rows in set (0.00 sec)

/*13. Inserir os seguintes Registros na tabela Livros*//*14. Utilize a função TIMESTAMPDIFF para calcular a idade dos novos autores.*/

ALTER TABLE LIVROS CHANGE BOOK_NAME BOOK_NAME VARCHAR(30);

INSERT INTO LIVROS(COD, BOOK_NAME, AUTHOR_NAME, DATA_NASC, IDADE, AUTHOR_GENRE, PAG_NUMBER, PUB_COMP, BOOK_PRICE, PUB_LOCAL, BOOK_YEAR) VALUES
(11, 'O Cavaleiro Preso na Armadura', 'Robert Fisher', 19220921, TIMESTAMPDIFF(YEAR, DATA_NASC, CURDATE()), 'Masculino', 112, 'Record', 42, 'BA', 2001),
(12, 'Rapido e Devagar', 'Daniel Kahnman', 19340305, TIMESTAMPDIFF(YEAR, DATA_NASC, CURDATE()), 'Masculino', 608, 'Objetiva', 54.89, 'BA', 2012);





/*15. Trazer o Nome do Livro, Nome do Autor e a UF dos livros publicados por autores do sexo masculino.*/

SELECT BOOK_NAME, AUTHOR_NAME, PUB_COMP FROM LIVROS
WHERE AUTHOR_GENRE = 'Masculino';
+-------------------------------+-------------------+----------+
| BOOK_NAME                     | AUTHOR_NAME       | PUB_COMP |
+-------------------------------+-------------------+----------+
| SQL Para Leigos               | Joao Nunes        | Addison  |
| Pessoas Afetivas              | Eduardo Santos    | Beta     |
| Habitos Saudaveis             | Eduardo Santos    | Beta     |
| A Casa Marrom                 | Hermes Macedo     | Bubba    |
| Estado Querido                | Geraldo Francisco | Insignia |
| Copas Inesqueciveis           | Marco Alcantara   | Larson   |
| O Cavaleiro Preso na Armadura | Robert Fisher     | Record   |
| O Cavaleiro Preso na Armadura | Robert Fisher     | Record   |
| Rapido e Devagar              | Daniel Kahnman    | Objetiva |
+-------------------------------+-------------------+----------+

/*16. Trazer o Nome do Livro e o número de páginas dos livros publicados por autores do sexo feminino.*/

SELECT BOOK_NAME, PAG_NUMBER FROM LIVROS
WHERE AUTHOR_GENRE = 'Feminino';
+-------------------+------------+
| BOOK_NAME         | PAG_NUMBER |
+-------------------+------------+
| Cavaleiro Real    |        465 |
| Receitas Caseiras |        210 |
| Pra Sempre Amigas |        510 |
| O Poder da Mente  |        120 |
+-------------------+------------+
4 rows in set (0.00 sec)
/*17. Trazer o Nome do Livro e o Valor do Livro cuja editora seja São Paulo.*/
SELECT BOOK_NAME, BOOK_PRICE FROM LIVROS WHERE PUB_LOCAL = 'SP';
+------------------+------------+
| BOOK_NAME        | BOOK_PRICE |
+------------------+------------+
| SQL Para Leigos  |      98.00 |
| O Poder da Mente |      56.58 |
+------------------+------------+
2 rows in set (0.00 sec)

/*18. Trazer o Nome do Livro e o Valor do Livro cujos valores são acima de R$100,00.*/

SELECT BOOK_NAME, BOOK_PRICE FROM LIVROS WHERE BOOK_PRICE > 100;
+---------------------+------------+
| BOOK_NAME           | BOOK_PRICE |
+---------------------+------------+
| Habitos Saudaveis   |     150.98 |
| Copas Inesqueciveis |     130.98 |
+---------------------+------------+
2 rows in set (0.00 sec)

/*19. Trazer o Nome do Autor, Idade e o Nome do Livro de todas as editoras, exceto a do RJ.*/

SELECT AUTHOR_NAME, IDADE, BOOK_NAME FROM LIVROS WHERE PUB_LOCAL != 'RJ';
+-------------------+-------+-------------------------------+
| AUTHOR_NAME       | IDADE | BOOK_NAME                     |
+-------------------+-------+-------------------------------+
| Joao Nunes        |    47 | SQL Para Leigos               |
| Hermes Macedo     |    31 | A Casa Marrom                 |
| Geraldo Francisco |    41 | Estado Querido                |
| Leda Silva        |    34 | Pra Sempre Amigas             |
| Marco Alcantara   |    53 | Copas Inesqueciveis           |
| Clara Mafra       |    42 | O Poder da Mente              |
| Robert Fisher     |   100 | O Cavaleiro Preso na Armadura |
| Robert Fisher     |   100 | O Cavaleiro Preso na Armadura |
| Daniel Kahnman    |    88 | Rapido e Devagar              |
+-------------------+-------+-------------------------------+
9 rows in set (0.00 sec)

/*20. Trazer todos os dados da tabela cujo Ano da Publicação seja igual a 2018.*/

SELECT * FROM LIVROS WHERE BOOK_YEAR = 2018;
+------+---------------------+-----------------+------------+-------+--------------+------------+----------+------------+-----------+-----------+
| COD  | BOOK_NAME           | AUTHOR_NAME     | DATA_NASC  | IDADE | AUTHOR_GENRE | PAG_NUMBER | PUB_COMP | BOOK_PRICE | PUB_LOCAL | BOOK_YEAR |
+------+---------------------+-----------------+------------+-------+--------------+------------+----------+------------+-----------+-----------+
|    2 | SQL Para Leigos     | Joao Nunes      | 1975-01-21 |    47 | Masculino    |        450 | Addison  |      98.00 | SP        |      2018 |
|    4 | Pessoas Afetivas    | Eduardo Santos  | 1971-11-24 |    50 | Masculino    |        390 | Beta     |      78.99 | RJ        |      2018 |
|    9 | Copas Inesqueciveis | Marco Alcantara | 1969-08-17 |    53 | Masculino    |        200 | Larson   |     130.98 | RS        |      2018 |
+------+---------------------+-----------------+------------+-------+--------------+------------+----------+------------+-----------+-----------+
3 rows in set (0.00 sec)

/*21. Trazer o Nome do Livro e o Nome do Autor cujo Nome da Editora inicie com a letra A.*/

SELECT BOOK_NAME, AUTHOR_NAME FROM LIVROS WHERE PUB_COMP LIKE 'A%';
+-------------------+---------------+
| BOOK_NAME         | AUTHOR_NAME   |
+-------------------+---------------+
| Cavaleiro Real    | Ana Claudia   |
| SQL Para Leigos   | Joao Nunes    |
| Receitas Caseiras | Celia Tavares |
+-------------------+---------------+

/*22. Trazer o Nome do Livro e Nome da Editora cuja UF inicie com a letra R.*/

SELECT BOOK_NAME, PUB_COMP FROM LIVROS WHERE PUB_COMP LIKE 'R%';
+-------------------------------+----------+
| BOOK_NAME                     | PUB_COMP |
+-------------------------------+----------+
| O Cavaleiro Preso na Armadura | Record   |
| O Cavaleiro Preso na Armadura | Record   |
+-------------------------------+----------+ 

/*23. Trazer todos os dados da tabela Livros onde o Nome da Editora inicie com um caractere desconhecido, mas termine com as letras ETA.*/

SELECT * FROM LIVROS WHERE PUB_COMP LIKE '%ETA';
+------+-------------------+----------------+------------+-------+--------------+------------+----------+------------+-----------+-----------+
| COD  | BOOK_NAME         | AUTHOR_NAME    | DATA_NASC  | IDADE | AUTHOR_GENRE | PAG_NUMBER | PUB_COMP | BOOK_PRICE | PUB_LOCAL | BOOK_YEAR |
+------+-------------------+----------------+------------+-------+--------------+------------+----------+------------+-----------+-----------+
|    4 | Pessoas Afetivas  | Eduardo Santos | 1971-11-24 |    50 | Masculino    |        390 | Beta     |      78.99 | RJ        |      2018 |
|    5 | Habitos Saudaveis | Eduardo Santos | 1971-11-24 |    50 | Masculino    |        630 | Beta     |     150.98 | RJ        |      2019 |
+------+-------------------+----------------+------------+-------+--------------+------------+----------+------------+-----------+-----------+

/*24. Trazer o Nome do Livro, UF dos livros e o Valor do Livro cujos valores são menores ou iguais R$100,00.*/

SELECT BOOK_NAME, PUB_LOCAL, BOOK_PRICE FROM LIVROS WHERE BOOK_PRICE <= 100;
+-------------------------------+-----------+------------+
| BOOK_NAME                     | PUB_LOCAL | BOOK_PRICE |
+-------------------------------+-----------+------------+
| Cavaleiro Real                | RJ        |      49.90 |
| SQL Para Leigos               | SP        |      98.00 |
| Receitas Caseiras             | RJ        |      45.00 |
| Pessoas Afetivas              | RJ        |      78.99 |
| A Casa Marrom                 | MG        |      60.00 |
| Estado Querido                | ES        |     100.00 |
| Pra Sempre Amigas             | ES        |      78.98 |
| O Poder da Mente              | SP        |      56.58 |
| O Cavaleiro Preso na Armadura | BA        |      42.00 |
| O Cavaleiro Preso na Armadura | BA        |      42.00 |
| Rapido e Devagar              | BA        |      54.89 |
+-------------------------------+-----------+------------+

/*25. Trazer o Nome do Livro, Nome da Editora, Valor do Livro e criar uma nova coluna com o alias VALOR_DESCONTO que será calculada através do desconto 15% do Valor do Livro.*/

SELECT BOOK_NAME, PUB_COMP, BOOK_PRICE, BOOK_PRICE * 0.15 AS VALOR_DESCONTO FROM LIVROS;
+-------------------------------+-------------+------------+----------------+
| BOOK_NAME                     | PUB_COMP    | BOOK_PRICE | VALOR_DESCONTO |
+-------------------------------+-------------+------------+----------------+
| Cavaleiro Real                | Atlas       |      49.90 |           7.49 |
| SQL Para Leigos               | Addison     |      98.00 |          14.70 |
| Receitas Caseiras             | Atlas       |      45.00 |           6.75 |
| Pessoas Afetivas              | Beta        |      78.99 |          11.85 |
| Habitos Saudaveis             | Beta        |     150.98 |          22.65 |
| A Casa Marrom                 | Bubba       |      60.00 |           9.00 |
| Estado Querido                | Insignia    |     100.00 |          15.00 |
| Pra Sempre Amigas             | Insignia    |      78.98 |          11.85 |
| Copas Inesqueciveis           | Larson      |     130.98 |          19.65 |
| O Poder da Mente              | Continental |      56.58 |           8.49 |
| O Cavaleiro Preso na Armadura | Record      |      42.00 |           6.30 |
| O Cavaleiro Preso na Armadura | Record      |      42.00 |           6.30 |
| Rapido e Devagar              | Objetiva    |      54.89 |           8.23 |
+-------------------------------+-------------+------------+----------------+ 

/*26. Acrescente na Query anterior uma nova coluna com o alias VALOR_COM_DESC que será calculada através da subtração do Valor do Livro - VALOR_DESCONTO*/

SELECT BOOK_NAME, PUB_COMP, BOOK_PRICE, BOOK_PRICE * 0.15 AS VALOR_DESCONTO, BOOK_PRICE - VALOR_DESCONTO AS VALOR_COM_DESCONTO FROM LIVROS;

/*27. Trazer todos os dados da tabela em que a UF da Editora seja RJ E o Ano da Publicação seja 2018.*/

SELECT * FROM LIVROS WHERE PUB_LOCAL = 'RJ' AND BOOK_YEAR = 2018;
+------+------------------+----------------+------------+-------+--------------+------------+----------+------------+-----------+-----------+
| COD  | BOOK_NAME        | AUTHOR_NAME    | DATA_NASC  | IDADE | AUTHOR_GENRE | PAG_NUMBER | PUB_COMP | BOOK_PRICE | PUB_LOCAL | BOOK_YEAR |
+------+------------------+----------------+------------+-------+--------------+------------+----------+------------+-----------+-----------+
|    4 | Pessoas Afetivas | Eduardo Santos | 1971-11-24 |    50 | Masculino    |        390 | Beta     |      78.99 | RJ        |      2018 |
+------+------------------+----------------+------------+-------+--------------+------------+----------+------------+-----------+-----------+

/*28. Trazer o Nome do Livro, Nome do Autor e Ano da Publicação, cujo Sexo do Autor seja igual a MASCULINO E o número de páginas seja inferior a 250.*/

SELECT BOOK_NAME, AUTHOR_NAME, BOOK_YEAR FROM LIVROS WHERE AUTHOR_GENRE = 'Masculino' AND PAG_NUMBER < 250;
+-------------------------------+-----------------+-----------+
| BOOK_NAME                     | AUTHOR_NAME     | BOOK_YEAR |
+-------------------------------+-----------------+-----------+
| Copas Inesqueciveis           | Marco Alcantara |      2018 |
| O Cavaleiro Preso na Armadura | Robert Fisher   |      2001 |
| O Cavaleiro Preso na Armadura | Robert Fisher   |      2001 |
+-------------------------------+-----------------+-----------+

/*29. Modifique o código da consulta anterior para também mostre os livros com números de páginas iguais a 250.*/

SELECT BOOK_NAME, AUTHOR_NAME, BOOK_YEAR FROM LIVROS WHERE AUTHOR_GENRE = 'Masculino' AND PAG_NUMBER <= 250;
+-------------------------------+-----------------+-----------+
| BOOK_NAME                     | AUTHOR_NAME     | BOOK_YEAR |
+-------------------------------+-----------------+-----------+
| A Casa Marrom                 | Hermes Macedo   |      2016 |
| Copas Inesqueciveis           | Marco Alcantara |      2018 |
| O Cavaleiro Preso na Armadura | Robert Fisher   |      2001 |
| O Cavaleiro Preso na Armadura | Robert Fisher   |      2001 |
+-------------------------------+-----------------+-----------+

/*30. Trazer todos os dados da tabela cujo Ano de Publicação seja 2018 OU 2019.*/

SELECT * FROM LIVROS WHERE BOOK_YEAR = 2018 OR 2019;
+------+-------------------------------+-------------------+------------+-------+--------------+------------+-------------+------------+-----------+-----------+
| COD  | BOOK_NAME                     | AUTHOR_NAME       | DATA_NASC  | IDADE | AUTHOR_GENRE | PAG_NUMBER | PUB_COMP    | BOOK_PRICE | PUB_LOCAL | BOOK_YEAR |
+------+-------------------------------+-------------------+------------+-------+--------------+------------+-------------+------------+-----------+-----------+
|    1 | Cavaleiro Real                | Ana Claudia       | 1980-05-04 |    42 | Feminino     |        465 | Atlas       |      49.90 | RJ        |      2009 |
|    2 | SQL Para Leigos               | Joao Nunes        | 1975-01-21 |    47 | Masculino    |        450 | Addison     |      98.00 | SP        |      2018 |
|    3 | Receitas Caseiras             | Celia Tavares     | 1989-07-18 |    33 | Feminino     |        210 | Atlas       |      45.00 | RJ        |      2008 |
|    4 | Pessoas Afetivas              | Eduardo Santos    | 1971-11-24 |    50 | Masculino    |        390 | Beta        |      78.99 | RJ        |      2018 |
|    5 | Habitos Saudaveis             | Eduardo Santos    | 1971-11-24 |    50 | Masculino    |        630 | Beta        |     150.98 | RJ        |      2019 |
|    6 | A Casa Marrom                 | Hermes Macedo     | 1991-02-14 |    31 | Masculino    |        250 | Bubba       |      60.00 | MG        |      2016 |
|    7 | Estado Querido                | Geraldo Francisco | 1981-03-10 |    41 | Masculino    |        310 | Insignia    |     100.00 | ES        |      2015 |
|    8 | Pra Sempre Amigas             | Leda Silva        | 1988-09-13 |    34 | Feminino     |        510 | Insignia    |      78.98 | ES        |      2011 |
|    9 | Copas Inesqueciveis           | Marco Alcantara   | 1969-08-17 |    53 | Masculino    |        200 | Larson      |     130.98 | RS        |      2018 |
|   10 | O Poder da Mente              | Clara Mafra       | 1994-06-27 |    42 | Feminino     |        120 | Continental |      56.58 | SP        |      2017 |
| NULL | NULL                          | NULL              | NULL       |  NULL | NULL         |       NULL | NULL        |       NULL | NULL      |      NULL |
|   11 | O Cavaleiro Preso na Armadura | Robert Fisher     | 1922-09-21 |   100 | Masculino    |        112 | Record      |      42.00 | BA        |      2001 |
|   11 | O Cavaleiro Preso na Armadura | Robert Fisher     | 1922-09-21 |   100 | Masculino    |        112 | Record      |      42.00 | BA        |      2001 |
|   12 | Rapido e Devagar              | Daniel Kahnman    | 1934-03-05 |    88 | Masculino    |        608 | Objetiva    |      54.89 | BA        |      2012 |
+------+-------------------------------+-------------------+------------+-------+--------------+------------+-------------+------------+-----------+-----------+

/*31. Trazer o Nome do Livro e o Nome do Autor que tenham como Nome da Editora iguais a Atlas OU Beta.*/

SELECT BOOK_NAME, AUTHOR_NAME FROM LIVROS WHERE PUB_COMP = 'Atlas' OR PUB_COMP = 'Beta';
+-------------------+----------------+
| BOOK_NAME         | AUTHOR_NAME    |
+-------------------+----------------+
| Cavaleiro Real    | Ana Claudia    |
| Receitas Caseiras | Celia Tavares  |
| Pessoas Afetivas  | Eduardo Santos |
| Habitos Saudaveis | Eduardo Santos |
+-------------------+----------------+
4 rows in set (0.00 sec)
/*32. Trazer todos os dados da tabela livros cujo Nome do Autor seja Eduardo Santos OU Valor do Livro abaixo de R$50,00.*/

SELECT * FROM LIVROS WHERE AUTHOR_NAME = 'Eduardo Santos' OR BOOK_PRICE < 50;
+------+-------------------------------+----------------+------------+-------+--------------+------------+----------+------------+-----------+-----------+
| COD  | BOOK_NAME                     | AUTHOR_NAME    | DATA_NASC  | IDADE | AUTHOR_GENRE | PAG_NUMBER | PUB_COMP | BOOK_PRICE | PUB_LOCAL | BOOK_YEAR |
+------+-------------------------------+----------------+------------+-------+--------------+------------+----------+------------+-----------+-----------+
|    1 | Cavaleiro Real                | Ana Claudia    | 1980-05-04 |    42 | Feminino     |        465 | Atlas    |      49.90 | RJ        |      2009 |
|    3 | Receitas Caseiras             | Celia Tavares  | 1989-07-18 |    33 | Feminino     |        210 | Atlas    |      45.00 | RJ        |      2008 |
|    4 | Pessoas Afetivas              | Eduardo Santos | 1971-11-24 |    50 | Masculino    |        390 | Beta     |      78.99 | RJ        |      2018 |
|    5 | Habitos Saudaveis             | Eduardo Santos | 1971-11-24 |    50 | Masculino    |        630 | Beta     |     150.98 | RJ        |      2019 |
|   11 | O Cavaleiro Preso na Armadura | Robert Fisher  | 1922-09-21 |   100 | Masculino    |        112 | Record   |      42.00 | BA        |      2001 |
|   11 | O Cavaleiro Preso na Armadura | Robert Fisher  | 1922-09-21 |   100 | Masculino    |        112 | Record   |      42.00 | BA        |      2001 |
+------+-------------------------------+----------------+------------+-------+--------------+------------+----------+------------+-----------+-----------+
